//
// Created by han on 01-Jul-25.
//

void RangeDemo(void)
{
	BOOL Run_Demo = TRUE;
	BOOL Tx_Packet = TRUE;
	BYTE rssi = 0;
	BYTE Pkt_Loss_Cnt = 0;
	MIWI_TICK tick1, tick2;
	BYTE switch_val;
	BYTE pktCmd = 0;

	// Patch variables for timeout logic
	static MIWI_TICK firstUnicastAttemptTick = 0;
	static BOOL rangeTimeoutActive = FALSE;
	const BYTE RANGE_UNICAST_TIMEOUT_SEC = 12;

	// Display Range Demo Splash Screen
	LCDBacklightON();
	LCDDisplay((char *)"   Microchip       Range Demo  ", 0, TRUE);
	LCDBacklightOFF();

	// Read Start tickcount
	tick1 = MiWi_TickGet();

	while (Run_Demo)
	{
		// Read current tickcount
		tick2 = MiWi_TickGet();

		// Send a Message every TX_PKT_INTERVAL
		if ((MiWi_TickGetDiff(tick2, tick1) > (ONE_SECOND * TX_PKT_INTERVAL)))
		{
			LCDErase();

			if (Tx_Packet)
			{
				LCDDisplay((char *)"Checking Signal Strength...", 0, TRUE);

				MiApp_FlushTx();

				MiApp_WriteData(RANGE_PKT);
				MiApp_WriteData(0x4D);
				MiApp_WriteData(0x69);
				MiApp_WriteData(0x57);
				MiApp_WriteData(0x69);
				MiApp_WriteData(0x20);
				MiApp_WriteData(0x52);
				MiApp_WriteData(0x6F);
				MiApp_WriteData(0x63);
				MiApp_WriteData(0x6B);
				MiApp_WriteData(0x73);
				MiApp_WriteData(0x21);

				// --- PATCH: Timeout from first unicast attempt ---
				if (!rangeTimeoutActive)
				{
					firstUnicastAttemptTick = MiWi_TickGet();
					rangeTimeoutActive = TRUE;
				}
				// -------------------------------------------------

				if (MiApp_UnicastConnection(ConnectionEntry, TRUE) == FALSE)
				{
					Pkt_Loss_Cnt++;
				}
				else
				{
					LED1 ^= 1;
					Pkt_Loss_Cnt = 0;
					// --- PATCH: Reset timeout ONLY on successful send ---
					rangeTimeoutActive = FALSE;
					firstUnicastAttemptTick = 0;
					// ---------------------------------------------------
				}

				Tx_Packet = FALSE;
			}
			else
			{
				if (Pkt_Loss_Cnt < 1)
				{
#if defined(MRF24J40)
					if (rssi > 120)
#else
					if (rssi > 100)
#endif
					{
						sprintf((char *)&LCDText, (far rom char*)"Strength: High ");
						LED0 = 1;
						LED1 = 0;
						LED2 = 0;
					}
#if defined(MRF24J40)
						else if (rssi < 121 && rssi > 60)
#else
					else if (rssi < 101 && rssi > 60)
#endif
					{
						sprintf((char *)&LCDText, (far rom char*)"Strength: Medium");
					}
#if defined(MRF24J40)
						else if (rssi < 61)
#else
					else if (rssi < 61)
#endif
					{
						sprintf((char *)&LCDText, (far rom char*)"Strength: Low");
					}

					// Convert to dB
					// rssi = RSSIlookupTable[rssi];
					sprintf((char *)&(LCDText[16]), (far rom char*)"Rcv RSSI: %03d", rssi);
				}
				else
				{
					LCDDisplay((char *)"No Device Found or Out of Range ", 0, TRUE);
					LED0 = 0;
					LED1 = 0;
					LED2 = 1;
				}

				LCDUpdate();
				Tx_Packet = TRUE;
			}
			// Read New Start tickcount
			tick1 = MiWi_TickGet();
		}

		// --- PATCH: Check for unicast timeout ---
		if (rangeTimeoutActive)
		{
			MIWI_TICK now = MiWi_TickGet();
			if (MiWi_TickGetDiff(now, firstUnicastAttemptTick) > (ONE_SECOND * RANGE_UNICAST_TIMEOUT_SEC))
			{
				LCDDisplay((char *)"Conn lost. Rejoining...", 0, TRUE);
				Run_Demo = FALSE;
				break; // Exit immediately; main logic can now attempt rejoin
			}
		}
		// -----------------------------------------

		// Check if Message Available
		if (MiApp_MessageAvailable())
		{
			pktCmd = rxMessage.Payload[0];
			if (pktCmd == EXIT_PKT)
			{
				MiApp_DiscardMessage();
				MiApp_FlushTx();
				MiApp_WriteData(ACK_PKT);
				MiApp_UnicastConnection(ConnectionEntry, TRUE);
				Run_Demo = FALSE;
				LCDBacklightON();
				LCDDisplay((char *)"   Exiting....     Range Demo  ", 0, TRUE);
				LCDBacklightOFF();
			}
			else if (rxMessage.Payload[0] == RANGE_PKT)
			{
				// Get RSSI value from Received Packet
				rssi = rxMessage.PacketRSSI;
#if defined(MRF89XA)
				rssi = rssi << 1;
#endif
				// Discard the Packet so can receive next
				MiApp_DiscardMessage();
			}
			else
				MiApp_DiscardMessage();
		}

		// Check if Switch Pressed
		switch_val = ButtonPressed();

		if ((switch_val == SW1) || (switch_val == SW2))
		{
			// Send Exit Demo Request Packet and exit Range Demo
			MiApp_FlushTx();
			MiApp_WriteData(EXIT_PKT);
			MiApp_UnicastConnection(ConnectionEntry, TRUE);

			LCDBacklightON();
			LCDDisplay((char *)"   Exiting....     Range Demo  ", 0, TRUE);
			LCDBacklightOFF();

			tick1 = MiWi_TickGet();
			// Wait for ACK Packet
			while (Run_Demo)
			{
				if (MiApp_MessageAvailable())
				{
					if (rxMessage.Payload[0] == ACK_PKT)
						Run_Demo = FALSE;

					MiApp_DiscardMessage();
				}
				if ((MiWi_TickGetDiff(tick2, tick1) > (ONE_SECOND * EXIT_DEMO_TIMEOUT)))
					Run_Demo = FALSE;

				tick2 = MiWi_TickGet();
			}
		}
	}
}
