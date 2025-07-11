//
// Created by han on 01-Jul-25.
//

void main(void)
{
	static BOOL menuActive = FALSE;
	static MENU_OPTION menuIndex = MENU_RANGE_DEMO;
	static MENU_OPTION selectedMenu = MENU_RANGE_DEMO;
	static MIWI_TICK lastHeartbeatTick = 0;
	static BOOL networkJoined = FALSE;
	APP_STATE state = APP_STATE_INIT;
	BYTE result, i;
	MIWI_TICK now;
	BOOL res;

	// Board and LCD initialization
	BoardInit();
	LCDInit();
	InitSymbolTimer();
	LED0 = 0;
	LED1 = 0;
	LED2 = 0;

	Read_MAC_Address();

	BOOL useStoredNetwork = FALSE;

	while (state != APP_STATE_EXIT)
	{
		// Heartbeat logic, only if joined:
		if (networkJoined)
		{
			now = MiWi_TickGet();
			if (MiWi_TickGetDiff(now, lastHeartbeatTick) > (ONE_SECOND * HEARTBEAT_INTERVAL)) {
				MiApp_FlushTx();
				MiApp_WriteData(0x99);
				MiApp_WriteData(myShortAddress.v[0]);
				MiApp_WriteData(myShortAddress.v[1]);

				res = MiApp_UnicastConnection(0, TRUE);
				if(res){
					LED0 ^= 1;
				}

				lastHeartbeatTick = now;
			}
		}

		switch (state)
		{
			case APP_STATE_INIT:
				App_ShowSplash();

				// Attempt to restore from EEPROM (network freezer)
				MiApp_ProtocolInit(TRUE);

				// Check for valid stored network
				useStoredNetwork = (ConnectionTable[0].status.bits.isValid);

				if(useStoredNetwork) {
					LCDDisplay("Network Restored!", 0, TRUE);
					DelayMs(1200);
					networkJoined = TRUE;
					state = APP_STATE_MENU;
				} else {
					LCDDisplay("No Saved Network", 0, TRUE);
					DelayMs(1200);
					// Start fresh, cold start
					MiApp_ProtocolInit(FALSE);
					state = APP_STATE_CHANNEL_SELECT;
				}
				break;

			case APP_STATE_CHANNEL_SELECT:
				App_ChannelSelect();
				state = APP_STATE_NETWORK_SETUP;
				break;

			case APP_STATE_NETWORK_SETUP:
				networkJoined = FALSE;
				if (App_NetworkSetup())
				{
					networkJoined = TRUE;
					state = APP_STATE_WAIT_FOR_CONNECTION;
				}
				else
					state = APP_STATE_CHANNEL_SELECT;
				break;

			case APP_STATE_WAIT_FOR_CONNECTION:
				App_WaitForConnection();
				state = APP_STATE_MENU;
				break;

			case APP_STATE_MENU:
				if (!menuActive) {
					ShowMenuText(menuIndex);
					menuActive = TRUE;
				}
				result = ButtonPressed();
				if (result == SW1) {
					selectedMenu = menuIndex;
					menuActive = FALSE;
					switch (selectedMenu)
					{
						case MENU_RANGE_DEMO: state = APP_STATE_RANGE_DEMO; break;
						case MENU_TEMP_DEMO:  state = APP_STATE_TEMP_DEMO; break;
						case MENU_NODE_INFO:  state = APP_STATE_NODE_INFO; break;
						default:              state = APP_STATE_EXIT; break;
					}
				} else if (result == SW2) {
					menuIndex = (menuIndex + 1) % MENU_COUNT;
					ShowMenuText(menuIndex);
				}
				break;

			case APP_STATE_RANGE_DEMO:
			{
				BYTE i, validCount = 0;
				for (i = 0; i < CONNECTION_SIZE; i++) {
					if (ConnectionTable[i].status.bits.isValid) {
						validCount++;
					}
				}
				if (validCount > 1) {
					LCDDisplay("Select Peer Node for Range Test", 0, FALSE);
					DelayMs(1000);
				}
				RangeDemo();
				state = APP_STATE_MENU;
				break;
			}

			case APP_STATE_TEMP_DEMO:
				TempDemo();
				state = APP_STATE_MENU;
				break;

			case APP_STATE_NODE_INFO:
				App_ShowNodeInfo();
				state = APP_STATE_MENU;
				break;

			default:
				networkJoined = FALSE;
				state = APP_STATE_EXIT;
				MiApp_RemoveConnection(0);
				break;
		}
	}
}

