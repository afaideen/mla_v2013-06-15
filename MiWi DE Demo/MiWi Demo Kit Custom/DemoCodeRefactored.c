#include "ConfigApp.h"
#include "HardwareProfile.h"
#include "WirelessProtocols/MCHP_API.h"
#include "LCD_ST7032.h"
#include "TimeDelay.h"
#include "RangeDemo.h"
#include "TempDemo.h"
#include "WirelessProtocols/SymbolTime.h"
#include "MAC_EEProm.h"
#include "SelfTestMode.h"

#define APP_VERSION      "v1.0-refactor"
#define APP_BUILD_DEBUG  0

#define TEMP_SECOND_INTERVAL        5
#define DISPLAY_CYCLE_INTERVAL      4
#define EXIT_DEMO_TIMEOUT           6
#define NUM_TEMP_SAMPLES            4

#define EXIT_DEMO           1
#define RANGE_DEMO          2
#define TEMP_DEMO           3
#define IDENTIFY_MODE       4
#define EXIT_IDENTIFY_MODE  5

#define TEMP_PKT            TEMP_DEMO
#define EXIT_PKT            EXIT_DEMO
#define ACK_PKT             6

#if APP_BUILD_DEBUG
#define DBG(x)      printf(x)
    #define DBG2(x, y)  printf(x, y)
#else
#define DBG(x)
#define DBG2(x, y)
#endif

static void App_StateMachine(BYTE evt);
static void ProcessMiWiMessage(void);
static void SendIdentifyCmd(BYTE cmd);
static void RunRangeTx(void);
static void RunTempTx(void);

extern RECEIVED_MESSAGE rxMessage;
extern BYTE ButtonPressed(void);
extern BYTE ReadTempSensor(WORD VBGResult);

typedef enum {
	APP_STATE_BOOT = 0,
	APP_STATE_CH_SELECT,
	APP_STATE_ROLE_SELECT,
	APP_STATE_RUN,
	APP_STATE_RANGE_DEMO,
	APP_STATE_TEMP_DEMO,
	APP_STATE_IDENTIFY
} APP_STATE;

static APP_STATE g_appState = APP_STATE_BOOT;
static MIWI_TICK g_lastTick, g_tempTick, g_lcdTick;
static BYTE g_channel = 11;
static BYTE g_connIndex = 0xFF;
BYTE ConnectionEntry = 0;

void main(void)
{
	BYTE btn, evt;
	MIWI_TICK now;
	WORD VBGResult;
	char buf[32];

	BoardInit();
	LCDInit();
	LED0 = 0; LED1 = 0; LED2 = 0;
	MiApp_ProtocolInit(FALSE);

	VBGResult = Read_VBGVoltage();
	sprintf(buf, "MiWi Demo %s", APP_VERSION);
	LCDDisplay(buf, 0, FALSE);
	DelayMs(1500);

	g_lastTick = g_tempTick = g_lcdTick = MiWi_TickGet();

	while (1)
	{
		evt = 0xFF;
		now = MiWi_TickGet();

		if (MiWi_TickGetDiff(now, g_lastTick) >= 100) {
			evt = 1;
			g_lastTick = now;
		}

		btn = ButtonPressed();
		if (btn == SW1)
			evt = 2;
		else if (btn == SW2)
			evt = 3;

		if (MiApp_MessageAvailable())
			evt = 4;

		if (evt != 0xFF)
			App_StateMachine(evt);
	}
}

static void App_StateMachine(BYTE evt)
{
	char buf[32];
	MIWI_TICK now = MiWi_TickGet();

	switch (g_appState)
	{
		case APP_STATE_BOOT:
			LCDErase();
			sprintf(buf, "Select CH: %u", g_channel);
			LCDDisplay(buf, 0, FALSE);
			g_appState = APP_STATE_CH_SELECT;
			break;

		case APP_STATE_CH_SELECT:
			if (evt == 2) {
				g_channel = (g_channel == 26) ? 11 : g_channel + 1;
				sprintf(buf, "Select CH: %u", g_channel);
				LCDDisplay(buf, 0, FALSE);
			} else if (evt == 3) {
				LCDErase();
				LCDDisplay("SW1=Create\nSW2=Join", 0, FALSE);
				g_appState = APP_STATE_ROLE_SELECT;
			}
			break;

		case APP_STATE_ROLE_SELECT:
			if (evt == 2) {
				MiApp_StartConnection(START_CONN_DIRECT, 0, 0);
				sprintf(buf, "PAN Created\nCH%u", g_channel);
				LCDErase(); LCDDisplay(buf, 0, FALSE);
				g_appState = APP_STATE_RUN;
			} else if (evt == 3) {
				BYTE scanResult = MiApp_SearchConnection(10, (0x00000001UL << g_channel));
				if (scanResult != 0xFF) {
					g_connIndex = MiApp_EstablishConnection(0, CONN_MODE_DIRECT);
					sprintf(buf, "Joined\nCH%u", g_channel);
					LCDErase(); LCDDisplay(buf, 0, FALSE);
					g_appState = APP_STATE_RUN;
				} else {
					LCDErase(); LCDDisplay("No networks\nfound.", 0, FALSE);
					DelayMs(1000);
					g_appState = APP_STATE_CH_SELECT;
				}
			}
			break;

		case APP_STATE_RUN:
			if (evt == 1 && MiWi_TickGetDiff(now, g_lcdTick) >= ONE_SECOND * DISPLAY_CYCLE_INTERVAL) {
				PrintTempLCD();
				g_lcdTick = now;
			} else if (evt == 2) {
				g_appState = APP_STATE_RANGE_DEMO;
				LCDErase(); 
                LCDDisplay("Range demo\nTx->Peer", 0, FALSE);
			} else if (evt == 3) {
				MiApp_FlushTx();
				MiApp_WriteData(EXIT_DEMO);
				MiApp_BroadcastPacket(FALSE);
				g_appState = APP_STATE_RUN;
			} else if (evt == 4) {
				ProcessMiWiMessage();
			}

			if (MiWi_TickGetDiff(now, g_tempTick) >= ONE_SECOND * TEMP_SECOND_INTERVAL) {
				RunTempTx();
				g_tempTick = now;
			}
			break;

		case APP_STATE_RANGE_DEMO:
			if (evt == 1) RunRangeTx();
			else if (evt == 3) { g_appState = APP_STATE_RUN; LCDErase(); }
			else if (evt == 4) ProcessMiWiMessage();
			break;

		case APP_STATE_IDENTIFY:
			if (evt == 1) LED0 ^= 1;
			else if (evt == 3) {
				SendIdentifyCmd(EXIT_IDENTIFY_MODE);
				LED0 = 0; LED1 = 0; LED2 = 0;
				g_appState = APP_STATE_RUN;
			} else if (evt == 4) ProcessMiWiMessage();
			break;
	}
}

static void SendIdentifyCmd(BYTE cmd)
{
	MiApp_FlushTx();
	MiApp_WriteData(cmd);
	MiApp_BroadcastPacket(TRUE);
}

static void RunRangeTx(void)
{
	MiApp_FlushTx();
	MiApp_WriteData(RANGE_DEMO);
	MiApp_UnicastConnection(g_connIndex, TRUE);
}

static void RunTempTx(void)
{
	WORD VBGResult = Read_VBGVoltage();
	BYTE temp = ReadTempSensor(VBGResult);

	MiApp_FlushTx();
	MiApp_WriteData(TEMP_PKT);
	MiApp_WriteData(temp);
	MiApp_WriteData(myShortAddress.v[0]);
	MiApp_WriteData(myShortAddress.v[1]);
	MiApp_BroadcastPacket(FALSE);
}

static void ProcessMiWiMessage(void)
{
	BYTE cmd = rxMessage.Payload[0];
	int i;

	if (cmd == EXIT_DEMO) {
		MiApp_DiscardMessage();
		MiApp_FlushTx();
		MiApp_WriteData(ACK_PKT);
		MiApp_UnicastConnection(0, FALSE);
		g_appState = APP_STATE_RUN;
		return;
	}

	if (cmd == TEMP_DEMO) {
		for (i = 0; i < CONNECTION_SIZE; i++) {
			if (ConnectionTable[i].status.bits.isValid &&
			    ConnectionTable[i].AltAddress.v[0] == rxMessage.Payload[2] &&
			    ConnectionTable[i].AltAddress.v[1] == rxMessage.Payload[3]) {
				// Valid matching node
			}
		}
	}

	if (cmd == IDENTIFY_MODE) {
		g_appState = APP_STATE_IDENTIFY;
		LED2 ^= 1;
	} else if (cmd == EXIT_IDENTIFY_MODE) {
		g_appState = APP_STATE_RUN;
		LED0 = 0; LED1 = 0; LED2 = 0;
	}

	MiApp_DiscardMessage();
}
