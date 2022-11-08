#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-XC32_EVAL_BOARD_PROTOCOL_MIWI.mk)" "nbproject/Makefile-local-XC32_EVAL_BOARD_PROTOCOL_MIWI.mk"
include nbproject/Makefile-local-XC32_EVAL_BOARD_PROTOCOL_MIWI.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=XC32_EVAL_BOARD_PROTOCOL_MIWI
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../DemoOutput.c ../../../../Microchip/WirelessProtocols/MiWiHelper.c Helper/MyHelper.c "../../../../Microchip/TCPIP Stack/Announce.c" "../../../../Microchip/TCPIP Stack/ARP.c" "../../../../Microchip/TCPIP Stack/AutoIP.c" "../../../../Microchip/TCPIP Stack/BerkeleyAPI.c" "../../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S" "../../../../Microchip/TCPIP Stack/Delay.c" "../../../../Microchip/TCPIP Stack/DNS.c" "../../../../Microchip/TCPIP Stack/DNSs.c" "../../../../Microchip/TCPIP Stack/DynDNS.c" "../../../../Microchip/TCPIP Stack/ENC28J60.c" "../../../../Microchip/TCPIP Stack/ENCX24J600.c" "../../../../Microchip/TCPIP Stack/FTP.c" "../../../../Microchip/TCPIP Stack/Hashes.c" "../../../../Microchip/TCPIP Stack/Helpers.c" "../../../../Microchip/TCPIP Stack/HTTP2.c" "../../../../Microchip/TCPIP Stack/ICMP.c" "../../../../Microchip/TCPIP Stack/IP.c" "../../../../Microchip/TCPIP Stack/LCDBlocking.c" "../../../../Microchip/TCPIP Stack/MPFS2.c" "../../../../Microchip/TCPIP Stack/NBNS.c" "../../../../Microchip/TCPIP Stack/Reboot.c" "../../../../Microchip/TCPIP Stack/SMTP.c" "../../../../Microchip/TCPIP Stack/SNMP.c" "../../../../Microchip/TCPIP Stack/SNTP.c" "../../../../Microchip/TCPIP Stack/SPIEEPROM.c" "../../../../Microchip/TCPIP Stack/SPIFlash.c" "../../../../Microchip/TCPIP Stack/SPIRAM.c" "../../../../Microchip/TCPIP Stack/StackTsk.c" "../../../../Microchip/TCPIP Stack/TCP.c" "../../../../Microchip/TCPIP Stack/TCPPerformanceTest.c" "../../../../Microchip/TCPIP Stack/Telnet.c" "../../../../Microchip/TCPIP Stack/TFTPc.c" "../../../../Microchip/TCPIP Stack/Tick.c" "../../../../Microchip/TCPIP Stack/UART.c" "../../../../Microchip/TCPIP Stack/UART2TCPBridge.c" "../../../../Microchip/TCPIP Stack/UDP.c" "../../../../Microchip/TCPIP Stack/UDPPerformanceTest.c" "../../../../Microchip/TCPIP Stack/ZeroconfHelper.c" "../../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c" "../../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c" ../LocalFiles/DHCP.c ../LocalFiles/DHCPs.c ../LocalFiles/MRF24J40.c ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../../../../Microchip/Transceivers/crc.c ../../../../Microchip/Transceivers/security.c "../../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c" "../../../../Microchip/TCPIP Stack/WiFi/WF_pbkdf2.c" "../../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsole.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c" "../../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c" "../../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c" "../../../../Microchip/TCPIP Stack/WiFi/WFDriverCom_24G.c" "../../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw_24G.c" "../../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c" "../../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c" "../../../../Microchip/TCPIP Stack/WiFi/WFInit.c" "../../../../Microchip/TCPIP Stack/WiFi/WFMac_24G.c" "../../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg_24G.c" "../../../../Microchip/TCPIP Stack/WiFi/WFParamMsg_24G.c" "../../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c" "../../../../Microchip/TCPIP Stack/WiFi/WFScan.c" "../../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c" ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../Microchip/WirelessProtocols/Console.c ../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../Microchip/WirelessProtocols/NVM.c ../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../Microchip/WirelessProtocols/MSPI.c ../CustomHTTPApp.c ../UARTConfig.c ../WF_Config.c ../LCD_ST7032.c ../Storage.c ../MPFSImg2.c ../SelfTestMode.c ../GenericTCPClient.c ../MainDemoTest.c.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/546296802/MiWiHelper.o ${OBJECTDIR}/Helper/MyHelper.o ${OBJECTDIR}/_ext/1622303505/Announce.o ${OBJECTDIR}/_ext/1622303505/ARP.o ${OBJECTDIR}/_ext/1622303505/AutoIP.o ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/1622303505/Delay.o ${OBJECTDIR}/_ext/1622303505/DNS.o ${OBJECTDIR}/_ext/1622303505/DNSs.o ${OBJECTDIR}/_ext/1622303505/DynDNS.o ${OBJECTDIR}/_ext/1622303505/ENC28J60.o ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o ${OBJECTDIR}/_ext/1622303505/FTP.o ${OBJECTDIR}/_ext/1622303505/Hashes.o ${OBJECTDIR}/_ext/1622303505/Helpers.o ${OBJECTDIR}/_ext/1622303505/HTTP2.o ${OBJECTDIR}/_ext/1622303505/ICMP.o ${OBJECTDIR}/_ext/1622303505/IP.o ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o ${OBJECTDIR}/_ext/1622303505/MPFS2.o ${OBJECTDIR}/_ext/1622303505/NBNS.o ${OBJECTDIR}/_ext/1622303505/Reboot.o ${OBJECTDIR}/_ext/1622303505/SMTP.o ${OBJECTDIR}/_ext/1622303505/SNMP.o ${OBJECTDIR}/_ext/1622303505/SNTP.o ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o ${OBJECTDIR}/_ext/1622303505/SPIFlash.o ${OBJECTDIR}/_ext/1622303505/SPIRAM.o ${OBJECTDIR}/_ext/1622303505/StackTsk.o ${OBJECTDIR}/_ext/1622303505/TCP.o ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1622303505/Telnet.o ${OBJECTDIR}/_ext/1622303505/TFTPc.o ${OBJECTDIR}/_ext/1622303505/Tick.o ${OBJECTDIR}/_ext/1622303505/UART.o ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o ${OBJECTDIR}/_ext/1622303505/UDP.o ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/1452631451/DHCP.o ${OBJECTDIR}/_ext/1452631451/DHCPs.o ${OBJECTDIR}/_ext/1452631451/MRF24J40.o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ${OBJECTDIR}/_ext/56838198/MRF89XA.o ${OBJECTDIR}/_ext/594816914/crc.o ${OBJECTDIR}/_ext/594816914/security.o ${OBJECTDIR}/_ext/1310019475/WF_Eint.o ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o ${OBJECTDIR}/_ext/1310019475/WF_Spi.o ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o ${OBJECTDIR}/_ext/1310019475/WFConsole.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o ${OBJECTDIR}/_ext/1310019475/WFInit.o ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o ${OBJECTDIR}/_ext/1310019475/WFScan.o ${OBJECTDIR}/_ext/1310019475/WFTxPower.o ${OBJECTDIR}/_ext/1850237697/MiWi.o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ${OBJECTDIR}/_ext/355958077/P2P.o ${OBJECTDIR}/_ext/546296802/Console.o ${OBJECTDIR}/_ext/546296802/EEPROM.o ${OBJECTDIR}/_ext/546296802/NVM.o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ${OBJECTDIR}/_ext/546296802/MSPI.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1472/WF_Config.o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/Storage.o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ${OBJECTDIR}/_ext/1472/SelfTestMode.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/DemoOutput.o.d ${OBJECTDIR}/_ext/546296802/MiWiHelper.o.d ${OBJECTDIR}/Helper/MyHelper.o.d ${OBJECTDIR}/_ext/1622303505/Announce.o.d ${OBJECTDIR}/_ext/1622303505/ARP.o.d ${OBJECTDIR}/_ext/1622303505/AutoIP.o.d ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.d ${OBJECTDIR}/_ext/1622303505/Delay.o.d ${OBJECTDIR}/_ext/1622303505/DNS.o.d ${OBJECTDIR}/_ext/1622303505/DNSs.o.d ${OBJECTDIR}/_ext/1622303505/DynDNS.o.d ${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d ${OBJECTDIR}/_ext/1622303505/FTP.o.d ${OBJECTDIR}/_ext/1622303505/Hashes.o.d ${OBJECTDIR}/_ext/1622303505/Helpers.o.d ${OBJECTDIR}/_ext/1622303505/HTTP2.o.d ${OBJECTDIR}/_ext/1622303505/ICMP.o.d ${OBJECTDIR}/_ext/1622303505/IP.o.d ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d ${OBJECTDIR}/_ext/1622303505/MPFS2.o.d ${OBJECTDIR}/_ext/1622303505/NBNS.o.d ${OBJECTDIR}/_ext/1622303505/Reboot.o.d ${OBJECTDIR}/_ext/1622303505/SMTP.o.d ${OBJECTDIR}/_ext/1622303505/SNMP.o.d ${OBJECTDIR}/_ext/1622303505/SNTP.o.d ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d ${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d ${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d ${OBJECTDIR}/_ext/1622303505/StackTsk.o.d ${OBJECTDIR}/_ext/1622303505/TCP.o.d ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d ${OBJECTDIR}/_ext/1622303505/Telnet.o.d ${OBJECTDIR}/_ext/1622303505/TFTPc.o.d ${OBJECTDIR}/_ext/1622303505/Tick.o.d ${OBJECTDIR}/_ext/1622303505/UART.o.d ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/1622303505/UDP.o.d ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d ${OBJECTDIR}/_ext/1452631451/DHCP.o.d ${OBJECTDIR}/_ext/1452631451/DHCPs.o.d ${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d ${OBJECTDIR}/_ext/56957362/MRF49XA.o.d ${OBJECTDIR}/_ext/56838198/MRF89XA.o.d ${OBJECTDIR}/_ext/594816914/crc.o.d ${OBJECTDIR}/_ext/594816914/security.o.d ${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d ${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d ${OBJECTDIR}/_ext/1310019475/WFConsole.o.d ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d ${OBJECTDIR}/_ext/1310019475/WFInit.o.d ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d ${OBJECTDIR}/_ext/1310019475/WFScan.o.d ${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d ${OBJECTDIR}/_ext/1850237697/MiWi.o.d ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d ${OBJECTDIR}/_ext/355958077/P2P.o.d ${OBJECTDIR}/_ext/546296802/Console.o.d ${OBJECTDIR}/_ext/546296802/EEPROM.o.d ${OBJECTDIR}/_ext/546296802/NVM.o.d ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d ${OBJECTDIR}/_ext/546296802/MSPI.o.d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d ${OBJECTDIR}/_ext/1472/UARTConfig.o.d ${OBJECTDIR}/_ext/1472/WF_Config.o.d ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d ${OBJECTDIR}/_ext/1472/Storage.o.d ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d ${OBJECTDIR}/_ext/1472/SelfTestMode.o.d ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/546296802/MiWiHelper.o ${OBJECTDIR}/Helper/MyHelper.o ${OBJECTDIR}/_ext/1622303505/Announce.o ${OBJECTDIR}/_ext/1622303505/ARP.o ${OBJECTDIR}/_ext/1622303505/AutoIP.o ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/1622303505/Delay.o ${OBJECTDIR}/_ext/1622303505/DNS.o ${OBJECTDIR}/_ext/1622303505/DNSs.o ${OBJECTDIR}/_ext/1622303505/DynDNS.o ${OBJECTDIR}/_ext/1622303505/ENC28J60.o ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o ${OBJECTDIR}/_ext/1622303505/FTP.o ${OBJECTDIR}/_ext/1622303505/Hashes.o ${OBJECTDIR}/_ext/1622303505/Helpers.o ${OBJECTDIR}/_ext/1622303505/HTTP2.o ${OBJECTDIR}/_ext/1622303505/ICMP.o ${OBJECTDIR}/_ext/1622303505/IP.o ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o ${OBJECTDIR}/_ext/1622303505/MPFS2.o ${OBJECTDIR}/_ext/1622303505/NBNS.o ${OBJECTDIR}/_ext/1622303505/Reboot.o ${OBJECTDIR}/_ext/1622303505/SMTP.o ${OBJECTDIR}/_ext/1622303505/SNMP.o ${OBJECTDIR}/_ext/1622303505/SNTP.o ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o ${OBJECTDIR}/_ext/1622303505/SPIFlash.o ${OBJECTDIR}/_ext/1622303505/SPIRAM.o ${OBJECTDIR}/_ext/1622303505/StackTsk.o ${OBJECTDIR}/_ext/1622303505/TCP.o ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1622303505/Telnet.o ${OBJECTDIR}/_ext/1622303505/TFTPc.o ${OBJECTDIR}/_ext/1622303505/Tick.o ${OBJECTDIR}/_ext/1622303505/UART.o ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o ${OBJECTDIR}/_ext/1622303505/UDP.o ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/1452631451/DHCP.o ${OBJECTDIR}/_ext/1452631451/DHCPs.o ${OBJECTDIR}/_ext/1452631451/MRF24J40.o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ${OBJECTDIR}/_ext/56838198/MRF89XA.o ${OBJECTDIR}/_ext/594816914/crc.o ${OBJECTDIR}/_ext/594816914/security.o ${OBJECTDIR}/_ext/1310019475/WF_Eint.o ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o ${OBJECTDIR}/_ext/1310019475/WF_Spi.o ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o ${OBJECTDIR}/_ext/1310019475/WFConsole.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o ${OBJECTDIR}/_ext/1310019475/WFInit.o ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o ${OBJECTDIR}/_ext/1310019475/WFScan.o ${OBJECTDIR}/_ext/1310019475/WFTxPower.o ${OBJECTDIR}/_ext/1850237697/MiWi.o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ${OBJECTDIR}/_ext/355958077/P2P.o ${OBJECTDIR}/_ext/546296802/Console.o ${OBJECTDIR}/_ext/546296802/EEPROM.o ${OBJECTDIR}/_ext/546296802/NVM.o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ${OBJECTDIR}/_ext/546296802/MSPI.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1472/WF_Config.o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/Storage.o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ${OBJECTDIR}/_ext/1472/SelfTestMode.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o

# Source Files
SOURCEFILES=../DemoOutput.c ../../../../Microchip/WirelessProtocols/MiWiHelper.c Helper/MyHelper.c ../../../../Microchip/TCPIP Stack/Announce.c ../../../../Microchip/TCPIP Stack/ARP.c ../../../../Microchip/TCPIP Stack/AutoIP.c ../../../../Microchip/TCPIP Stack/BerkeleyAPI.c ../../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S ../../../../Microchip/TCPIP Stack/Delay.c ../../../../Microchip/TCPIP Stack/DNS.c ../../../../Microchip/TCPIP Stack/DNSs.c ../../../../Microchip/TCPIP Stack/DynDNS.c ../../../../Microchip/TCPIP Stack/ENC28J60.c ../../../../Microchip/TCPIP Stack/ENCX24J600.c ../../../../Microchip/TCPIP Stack/FTP.c ../../../../Microchip/TCPIP Stack/Hashes.c ../../../../Microchip/TCPIP Stack/Helpers.c ../../../../Microchip/TCPIP Stack/HTTP2.c ../../../../Microchip/TCPIP Stack/ICMP.c ../../../../Microchip/TCPIP Stack/IP.c ../../../../Microchip/TCPIP Stack/LCDBlocking.c ../../../../Microchip/TCPIP Stack/MPFS2.c ../../../../Microchip/TCPIP Stack/NBNS.c ../../../../Microchip/TCPIP Stack/Reboot.c ../../../../Microchip/TCPIP Stack/SMTP.c ../../../../Microchip/TCPIP Stack/SNMP.c ../../../../Microchip/TCPIP Stack/SNTP.c ../../../../Microchip/TCPIP Stack/SPIEEPROM.c ../../../../Microchip/TCPIP Stack/SPIFlash.c ../../../../Microchip/TCPIP Stack/SPIRAM.c ../../../../Microchip/TCPIP Stack/StackTsk.c ../../../../Microchip/TCPIP Stack/TCP.c ../../../../Microchip/TCPIP Stack/TCPPerformanceTest.c ../../../../Microchip/TCPIP Stack/Telnet.c ../../../../Microchip/TCPIP Stack/TFTPc.c ../../../../Microchip/TCPIP Stack/Tick.c ../../../../Microchip/TCPIP Stack/UART.c ../../../../Microchip/TCPIP Stack/UART2TCPBridge.c ../../../../Microchip/TCPIP Stack/UDP.c ../../../../Microchip/TCPIP Stack/UDPPerformanceTest.c ../../../../Microchip/TCPIP Stack/ZeroconfHelper.c ../../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c ../../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c ../LocalFiles/DHCP.c ../LocalFiles/DHCPs.c ../LocalFiles/MRF24J40.c ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../../../../Microchip/Transceivers/crc.c ../../../../Microchip/Transceivers/security.c ../../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c ../../../../Microchip/TCPIP Stack/WiFi/WF_pbkdf2.c ../../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c ../../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c ../../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c ../../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsole.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c ../../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c ../../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c ../../../../Microchip/TCPIP Stack/WiFi/WFDriverCom_24G.c ../../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw_24G.c ../../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c ../../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c ../../../../Microchip/TCPIP Stack/WiFi/WFInit.c ../../../../Microchip/TCPIP Stack/WiFi/WFMac_24G.c ../../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg_24G.c ../../../../Microchip/TCPIP Stack/WiFi/WFParamMsg_24G.c ../../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c ../../../../Microchip/TCPIP Stack/WiFi/WFScan.c ../../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../Microchip/WirelessProtocols/Console.c ../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../Microchip/WirelessProtocols/NVM.c ../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../Microchip/WirelessProtocols/MSPI.c ../CustomHTTPApp.c ../UARTConfig.c ../WF_Config.c ../LCD_ST7032.c ../Storage.c ../MPFSImg2.c ../SelfTestMode.c ../GenericTCPClient.c ../MainDemoTest.c.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-XC32_EVAL_BOARD_PROTOCOL_MIWI.mk dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX695F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o: ../../../../Microchip/TCPIP\ Stack/BigInt_helper_PIC32.S  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/302aaccd11477540cade7c5eb5930d4baff1a59b .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.ok ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_PIC32_EVAL_BOARD -DPROTOCOL_MIWI -I"../" -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIPStack" -I"../Configs" -MMD -MF "${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.d"  -o ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o "../../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S"  -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,-I".." 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.d" "${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o: ../../../../Microchip/TCPIP\ Stack/BigInt_helper_PIC32.S  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/9b42679c38d290b0f5e96d45bbae9bca54a9a61e .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.ok ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_PIC32_EVAL_BOARD -DPROTOCOL_MIWI -I"../" -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIPStack" -I"../Configs" -MMD -MF "${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.d"  -o ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o "../../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S"  -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.asm.d",--gdwarf-2,-I".." 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.d" "${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/fb98fd1f8c7da02d937e970be11e0770e7930828 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" -o ${OBJECTDIR}/_ext/1472/DemoOutput.o ../DemoOutput.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/MiWiHelper.o: ../../../../Microchip/WirelessProtocols/MiWiHelper.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b5870501d0ea6c0bc364f4e740d941611e0eaa4f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/MiWiHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/MiWiHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/MiWiHelper.o.d" -o ${OBJECTDIR}/_ext/546296802/MiWiHelper.o ../../../../Microchip/WirelessProtocols/MiWiHelper.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/Helper/MyHelper.o: Helper/MyHelper.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a2f7ac9047d5bd0e2d37de79d240ce4e5543bc8 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/Helper" 
	@${RM} ${OBJECTDIR}/Helper/MyHelper.o.d 
	@${RM} ${OBJECTDIR}/Helper/MyHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/Helper/MyHelper.o.d" -o ${OBJECTDIR}/Helper/MyHelper.o Helper/MyHelper.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Announce.o: ../../../../Microchip/TCPIP\ Stack/Announce.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/6774c6fc10c4d6e9e58b4b68302501c568b08780 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Announce.o.d" -o ${OBJECTDIR}/_ext/1622303505/Announce.o "../../../../Microchip/TCPIP Stack/Announce.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ARP.o: ../../../../Microchip/TCPIP\ Stack/ARP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/fcb46a40f5b9917341dc76b0b2f97c9cb9f78a3f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ARP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ARP.o.d" -o ${OBJECTDIR}/_ext/1622303505/ARP.o "../../../../Microchip/TCPIP Stack/ARP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/AutoIP.o: ../../../../Microchip/TCPIP\ Stack/AutoIP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/613bd950a8464c264c5412dfeb2c91fe5ce47550 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/AutoIP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1622303505/AutoIP.o "../../../../Microchip/TCPIP Stack/AutoIP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o: ../../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/334f8d57b9c6ebd96dbf08ac19414402247e3b93 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o "../../../../Microchip/TCPIP Stack/BerkeleyAPI.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Delay.o: ../../../../Microchip/TCPIP\ Stack/Delay.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/fb03ce7c2f0ee703c8d9f8667ee5e796da4aa946 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Delay.o.d" -o ${OBJECTDIR}/_ext/1622303505/Delay.o "../../../../Microchip/TCPIP Stack/Delay.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/DNS.o: ../../../../Microchip/TCPIP\ Stack/DNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/15e3882a0fee495f9fb779e6d5067cdb6358720d .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/DNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/DNS.o "../../../../Microchip/TCPIP Stack/DNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/DNSs.o: ../../../../Microchip/TCPIP\ Stack/DNSs.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/f00064cb1f1085338380aef04ff9552355c9d242 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNSs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/DNSs.o.d" -o ${OBJECTDIR}/_ext/1622303505/DNSs.o "../../../../Microchip/TCPIP Stack/DNSs.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/DynDNS.o: ../../../../Microchip/TCPIP\ Stack/DynDNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/ca7ae992c69ef5e5859edf7c0e4afddc87b1c1fe .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DynDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/DynDNS.o "../../../../Microchip/TCPIP Stack/DynDNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ENC28J60.o: ../../../../Microchip/TCPIP\ Stack/ENC28J60.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b9e695ced2374a89169ae249e04ebd86e65e1e13 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENC28J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1622303505/ENC28J60.o "../../../../Microchip/TCPIP Stack/ENC28J60.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ENCX24J600.o: ../../../../Microchip/TCPIP\ Stack/ENCX24J600.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/fb0f6c6bdd24d11d5062cfbdf10f4969968a1a59 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o "../../../../Microchip/TCPIP Stack/ENCX24J600.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/FTP.o: ../../../../Microchip/TCPIP\ Stack/FTP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/61d64aacbfded0a8c174915d35df13d700b342bc .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/FTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/FTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/FTP.o "../../../../Microchip/TCPIP Stack/FTP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Hashes.o: ../../../../Microchip/TCPIP\ Stack/Hashes.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/126df10696fd0a9bf437c294ec1a80418bec6f87 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Hashes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Hashes.o.d" -o ${OBJECTDIR}/_ext/1622303505/Hashes.o "../../../../Microchip/TCPIP Stack/Hashes.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Helpers.o: ../../../../Microchip/TCPIP\ Stack/Helpers.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/60a50c59b993769f92a77750f603284e815b3bf4 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Helpers.o.d" -o ${OBJECTDIR}/_ext/1622303505/Helpers.o "../../../../Microchip/TCPIP Stack/Helpers.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/HTTP2.o: ../../../../Microchip/TCPIP\ Stack/HTTP2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/569bf939f9bc6697ee0328c17da8543ff9c8dd5d .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/HTTP2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1622303505/HTTP2.o "../../../../Microchip/TCPIP Stack/HTTP2.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ICMP.o: ../../../../Microchip/TCPIP\ Stack/ICMP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/56be79210c0a5dcea0331eafd0253236f5a0c52b .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ICMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ICMP.o.d" -o ${OBJECTDIR}/_ext/1622303505/ICMP.o "../../../../Microchip/TCPIP Stack/ICMP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/IP.o: ../../../../Microchip/TCPIP\ Stack/IP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/9fe6064a5c30e277c7a902f022c7eb7dc1c68aec .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/IP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/IP.o.d" -o ${OBJECTDIR}/_ext/1622303505/IP.o "../../../../Microchip/TCPIP Stack/IP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/LCDBlocking.o: ../../../../Microchip/TCPIP\ Stack/LCDBlocking.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b3f380ddbda00123e4daa200b0afb28afbb80e2d .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o "../../../../Microchip/TCPIP Stack/LCDBlocking.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/MPFS2.o: ../../../../Microchip/TCPIP\ Stack/MPFS2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/5732746eceedd7bbb3800a94ba2e467a84e903c .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/MPFS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1622303505/MPFS2.o "../../../../Microchip/TCPIP Stack/MPFS2.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/NBNS.o: ../../../../Microchip/TCPIP\ Stack/NBNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e59a00fc9aae36991165561e1ca66b05cc93eabb .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/NBNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/NBNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/NBNS.o "../../../../Microchip/TCPIP Stack/NBNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Reboot.o: ../../../../Microchip/TCPIP\ Stack/Reboot.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/c4ebf067ae649260e656271012b758cecbb7fef6 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Reboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Reboot.o.d" -o ${OBJECTDIR}/_ext/1622303505/Reboot.o "../../../../Microchip/TCPIP Stack/Reboot.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SMTP.o: ../../../../Microchip/TCPIP\ Stack/SMTP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/88597122c2089f63ab2af4a5f20643f216512b4b .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SMTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SMTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SMTP.o "../../../../Microchip/TCPIP Stack/SMTP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SNMP.o: ../../../../Microchip/TCPIP\ Stack/SNMP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e35ec0d1e966f64229d4197d8103ed83bbb0cee1 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SNMP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SNMP.o "../../../../Microchip/TCPIP Stack/SNMP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SNTP.o: ../../../../Microchip/TCPIP\ Stack/SNTP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/5bbadb9c6465d07990b5daefb6e89284a3b29290 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SNTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SNTP.o "../../../../Microchip/TCPIP Stack/SNTP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o: ../../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/80d546ff178e68258b4bbde28c8827048cd28364 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o "../../../../Microchip/TCPIP Stack/SPIEEPROM.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SPIFlash.o: ../../../../Microchip/TCPIP\ Stack/SPIFlash.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/799ba6a5f861c9a1dedc9122659f23f5bb6cc9fa .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIFlash.o "../../../../Microchip/TCPIP Stack/SPIFlash.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SPIRAM.o: ../../../../Microchip/TCPIP\ Stack/SPIRAM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/88ca22892eca1211866a56b27e1cf8ffebe5d777 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIRAM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIRAM.o "../../../../Microchip/TCPIP Stack/SPIRAM.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/StackTsk.o: ../../../../Microchip/TCPIP\ Stack/StackTsk.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/83021593917c88a5902c2578a700c91ea9392b9 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/StackTsk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1622303505/StackTsk.o "../../../../Microchip/TCPIP Stack/StackTsk.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/TCP.o: ../../../../Microchip/TCPIP\ Stack/TCP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/605676ab34430770da296368ef7b33ded476e44d .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/TCP.o.d" -o ${OBJECTDIR}/_ext/1622303505/TCP.o "../../../../Microchip/TCPIP Stack/TCP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o: ../../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b4737b8ee83439a04ec386db0ac90c407ec20919 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o "../../../../Microchip/TCPIP Stack/TCPPerformanceTest.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Telnet.o: ../../../../Microchip/TCPIP\ Stack/Telnet.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/84b1c3b2ffb7290e7945c72bf13f08ffb67db73 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Telnet.o.d" -o ${OBJECTDIR}/_ext/1622303505/Telnet.o "../../../../Microchip/TCPIP Stack/Telnet.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/TFTPc.o: ../../../../Microchip/TCPIP\ Stack/TFTPc.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/73e878d4bec17027cc3cf1403f30fe85d42958d7 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TFTPc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1622303505/TFTPc.o "../../../../Microchip/TCPIP Stack/TFTPc.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Tick.o: ../../../../Microchip/TCPIP\ Stack/Tick.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/a513f9b7bd252225e783d04dbda2df86356abb68 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Tick.o.d" -o ${OBJECTDIR}/_ext/1622303505/Tick.o "../../../../Microchip/TCPIP Stack/Tick.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UART.o: ../../../../Microchip/TCPIP\ Stack/UART.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/8e8d92c937e1bd215278e59ec99ad3546adc6cc8 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UART.o.d" -o ${OBJECTDIR}/_ext/1622303505/UART.o "../../../../Microchip/TCPIP Stack/UART.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o: ../../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/c4fcd5141eeecbce7eff1f358eb670359c78886d .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o "../../../../Microchip/TCPIP Stack/UART2TCPBridge.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UDP.o: ../../../../Microchip/TCPIP\ Stack/UDP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/75fa5561cff986f3e8e76eb049ad1e2d9575bd7 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UDP.o.d" -o ${OBJECTDIR}/_ext/1622303505/UDP.o "../../../../Microchip/TCPIP Stack/UDP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o: ../../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/325ee0c2cd6ac09a64ec9cd12bede2a4ed38e126 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o "../../../../Microchip/TCPIP Stack/UDPPerformanceTest.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/492026c42f96abc23fd3ca96373ab7eb969eab72 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o "../../../../Microchip/TCPIP Stack/ZeroconfHelper.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/35b9a3210c120e78a69e656c4982041853a5ac3d .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o "../../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/840bffc7597825a8444944175897f3171cf8806e .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o "../../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1452631451/DHCP.o: ../LocalFiles/DHCP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b8459d67b689bf58bd29cc9de350293847eb9ee9 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1452631451/DHCP.o.d" -o ${OBJECTDIR}/_ext/1452631451/DHCP.o ../LocalFiles/DHCP.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1452631451/DHCPs.o: ../LocalFiles/DHCPs.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3ff8c8ae99b80a99f377523c43a489403c88bd08 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCPs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1452631451/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1452631451/DHCPs.o ../LocalFiles/DHCPs.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1452631451/MRF24J40.o: ../LocalFiles/MRF24J40.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/f4af7a2eeac79f34d5d5702d7ff2263f5b0e3eae .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/MRF24J40.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/1452631451/MRF24J40.o ../LocalFiles/MRF24J40.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/56957362/MRF49XA.o: ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d794df85fba170df485da13f4198a815116e51f6 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/56957362" 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/56957362/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/56838198/MRF89XA.o: ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/84f7275ea9082ffe57435eaaa4edbd6add0856d3 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/56838198" 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/56838198/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/56838198/MRF89XA.o ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/594816914/crc.o: ../../../../Microchip/Transceivers/crc.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/2ed6b86fe3123459b89a437f68bb78b8c95cf498 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/594816914/crc.o.d" -o ${OBJECTDIR}/_ext/594816914/crc.o ../../../../Microchip/Transceivers/crc.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/594816914/security.o: ../../../../Microchip/Transceivers/security.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/198bc38302643fdd7857c10025d877a095dd026f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/594816914/security.o.d" -o ${OBJECTDIR}/_ext/594816914/security.o ../../../../Microchip/Transceivers/security.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WF_Eint.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/4530940a329ccc39f9fdd5c8817e111f5510c2e6 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_Eint.o "../../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_pbkdf2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/37d66a8c5e41893c34d04127e6a6b6972f26f28a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o "../../../../Microchip/TCPIP Stack/WiFi/WF_pbkdf2.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WF_Spi.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d8848ec48e8fb29cb5118e0f300f498aaa3f7589 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_Spi.o "../../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d3ff270a1d7b6707fd51ef959e88e58d04ff617e .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/454e5117f3bdb166b089df7efa2b731c6170093a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/baa10a814dbb67a39d93e3899bc448dee4874e75 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsole.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/6870fc46ffbdb18fb057d8e75c9d0b8cf9b760a3 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsole.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsole.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsole.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsole.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/736ac50b6f5cf1ba549e57f9f5503d3b30553a2c .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e3af1eea147a7c112d6ff22d571cdb807f570c37 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/9354f1cd2e99b05eaae45af7006fd5802965978f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/dedbbf08b01c74f369f33ff4e0543aea5583e571 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/dd6ce8461176dba8430bca758d27b26a51c6ce5e .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b8ffbda65f07074f6de478962d9fd8539f3b8d00 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o "../../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDebugStrings.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/ef82d1c67089aef3c7679fba3350ba663fb8b9c .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o "../../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/2d02cd0e11cca1c3e8eadd9fcd35744ed7646c32 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFDriverCom_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/fd350d22b9154579f5335b0a0c8fd6062d1eb4ba .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d0067256ebeafe0907ae2218b17ba8c37eeb737f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFEventHandler.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/9af09cb7ff9ac105c7264673bf6c60e1c6ed3f2c .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o "../../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFInit.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/53b39d359060c946f7180ad74c3cf9e13216c999 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFInit.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFInit.o "../../../../Microchip/TCPIP Stack/WiFi/WFInit.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFMac_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFMac_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d20539ab094052ec2ab65b24b633b78619735f4b .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFMac_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/a970d680083feb9fefedc28cbe56f3476f3fef66 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d95145c54c2ac4d0cf51d72ba74f3c8d9b430f65 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFParamMsg_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFPowerSave.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/934c075c194363652596cd3864773fb384919bfd .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o "../../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFScan.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/318aa86b742adf3edc5383410a9c47d925ee160e .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFScan.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFScan.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFScan.o "../../../../Microchip/TCPIP Stack/WiFi/WFScan.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFTxPower.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/f6c31f06a1956699ef355eb61113d39bbfedf523 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFTxPower.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFTxPower.o "../../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1850237697/MiWi.o: ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/bf4fd274f5d345f488ffa941dd6a4db599c82cf6 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1850237697" 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1850237697/MiWi.o.d" -o ${OBJECTDIR}/_ext/1850237697/MiWi.o ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1179125038/MiWiPRO.o: ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/bf93a2674ec45659449a4ac59e590f3132ce2ed5 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1179125038" 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/355958077/P2P.o: ../../../../Microchip/WirelessProtocols/P2P/P2P.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/46943cc625050e79eb43f15398a9d3b1407fc5cd .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/355958077" 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/355958077/P2P.o.d" -o ${OBJECTDIR}/_ext/355958077/P2P.o ../../../../Microchip/WirelessProtocols/P2P/P2P.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/Console.o: ../../../../Microchip/WirelessProtocols/Console.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/1d8f05b75bbdbaa813eed964dab413d1032dde05 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/Console.o.d" -o ${OBJECTDIR}/_ext/546296802/Console.o ../../../../Microchip/WirelessProtocols/Console.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/EEPROM.o: ../../../../Microchip/WirelessProtocols/EEPROM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/c71788803cfb0e47b5bf1de87fa2a70ad2683448 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/EEPROM.o.d" -o ${OBJECTDIR}/_ext/546296802/EEPROM.o ../../../../Microchip/WirelessProtocols/EEPROM.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/NVM.o: ../../../../Microchip/WirelessProtocols/NVM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/bd3887a4a9ac96da02af24783b1dfee9bf496f7f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/NVM.o.d" -o ${OBJECTDIR}/_ext/546296802/NVM.o ../../../../Microchip/WirelessProtocols/NVM.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/SymbolTime.o: ../../../../Microchip/WirelessProtocols/SymbolTime.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/516a7d855de547b30044882c5a8dbfed33919462 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ../../../../Microchip/WirelessProtocols/SymbolTime.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/MSPI.o: ../../../../Microchip/WirelessProtocols/MSPI.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/f62e79d1d6b0f67f57cee9caf80f0b8360ef47c6 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/MSPI.o.d" -o ${OBJECTDIR}/_ext/546296802/MSPI.o ../../../../Microchip/WirelessProtocols/MSPI.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/2a25aeaa705b46a2a6e90c31325a77af4e3a7bbd .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/54f2565c96011cdfd8918261b063f89171d12a83 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/1153828c85bcc63b4e29160723066f2495d31771 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472/WF_Config.o ../WF_Config.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/LCD_ST7032.o: ../LCD_ST7032.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/30da1e1ca7bcbe5e3c0ab6dec4880ad086aae7a1 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" -o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ../LCD_ST7032.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/Storage.o: ../Storage.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/7d13d09f701c0b4c02abcd3252ad5ef3da5b18ba .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Storage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Storage.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/Storage.o.d" -o ${OBJECTDIR}/_ext/1472/Storage.o ../Storage.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/MPFSImg2.o: ../MPFSImg2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/ad5e93e6d12439d46ff68f50cf5c484fa488c59e .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ../MPFSImg2.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/SelfTestMode.o: ../SelfTestMode.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e51b719ebc9567334544d91ac3eb46b5b8f53231 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/SelfTestMode.o.d" -o ${OBJECTDIR}/_ext/1472/SelfTestMode.o ../SelfTestMode.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3ea76f7d43ddb471c2b41098ece476d954f243eb .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/MainDemoTest.c.o: ../MainDemoTest.c.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/36cba5366b77bf4903aed90bbfbe9a0289c96440 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemoTest.c.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o ../MainDemoTest.c.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/84f854b9987dc13bd8ce50eb2bd5dc055c8d3bc4 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" -o ${OBJECTDIR}/_ext/1472/DemoOutput.o ../DemoOutput.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/MiWiHelper.o: ../../../../Microchip/WirelessProtocols/MiWiHelper.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/f9d67a6aef4d3f23284e91b663739e72b628847d .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/MiWiHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/MiWiHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/MiWiHelper.o.d" -o ${OBJECTDIR}/_ext/546296802/MiWiHelper.o ../../../../Microchip/WirelessProtocols/MiWiHelper.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/Helper/MyHelper.o: Helper/MyHelper.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/addad17e2907a655de87b3b07a65c41c944bd483 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/Helper" 
	@${RM} ${OBJECTDIR}/Helper/MyHelper.o.d 
	@${RM} ${OBJECTDIR}/Helper/MyHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/Helper/MyHelper.o.d" -o ${OBJECTDIR}/Helper/MyHelper.o Helper/MyHelper.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Announce.o: ../../../../Microchip/TCPIP\ Stack/Announce.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b01a35bcffc58ad1505d2d2afcc40b8f161f22f9 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Announce.o.d" -o ${OBJECTDIR}/_ext/1622303505/Announce.o "../../../../Microchip/TCPIP Stack/Announce.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ARP.o: ../../../../Microchip/TCPIP\ Stack/ARP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/450236dd4ead35485ee93ee4b4737b12ac3dd3cb .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ARP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ARP.o.d" -o ${OBJECTDIR}/_ext/1622303505/ARP.o "../../../../Microchip/TCPIP Stack/ARP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/AutoIP.o: ../../../../Microchip/TCPIP\ Stack/AutoIP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/16a07c4e8ee042c458e32462a4e9fb6f5e0dffa9 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/AutoIP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1622303505/AutoIP.o "../../../../Microchip/TCPIP Stack/AutoIP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o: ../../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/a940147ca9ab7ae6f8b449b76caf5c1f41ec885 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o "../../../../Microchip/TCPIP Stack/BerkeleyAPI.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Delay.o: ../../../../Microchip/TCPIP\ Stack/Delay.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/9255941b255013fa94f635870397d0bb379c68c5 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Delay.o.d" -o ${OBJECTDIR}/_ext/1622303505/Delay.o "../../../../Microchip/TCPIP Stack/Delay.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/DNS.o: ../../../../Microchip/TCPIP\ Stack/DNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/78272a2cfc81b3498a2a27f9f74e35902cecee03 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/DNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/DNS.o "../../../../Microchip/TCPIP Stack/DNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/DNSs.o: ../../../../Microchip/TCPIP\ Stack/DNSs.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e1d5ac38159fd6e4db59a83b7f0b9e71d65f0bea .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNSs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/DNSs.o.d" -o ${OBJECTDIR}/_ext/1622303505/DNSs.o "../../../../Microchip/TCPIP Stack/DNSs.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/DynDNS.o: ../../../../Microchip/TCPIP\ Stack/DynDNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/31b342b7840cb8c23c3d6a6eb37fdd32a349618c .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DynDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/DynDNS.o "../../../../Microchip/TCPIP Stack/DynDNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ENC28J60.o: ../../../../Microchip/TCPIP\ Stack/ENC28J60.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/1d9c189223f2f27838c49c310ce6f5b82d1d95cf .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENC28J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1622303505/ENC28J60.o "../../../../Microchip/TCPIP Stack/ENC28J60.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ENCX24J600.o: ../../../../Microchip/TCPIP\ Stack/ENCX24J600.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/468ac99fc2e5369b84fd64243e52b25be85a3456 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o "../../../../Microchip/TCPIP Stack/ENCX24J600.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/FTP.o: ../../../../Microchip/TCPIP\ Stack/FTP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3f0fd25b474928ab8a64cd2a2d5658d99e94a024 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/FTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/FTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/FTP.o "../../../../Microchip/TCPIP Stack/FTP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Hashes.o: ../../../../Microchip/TCPIP\ Stack/Hashes.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3af092b5d92de389f66ca6804ef9a7a5687b95a0 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Hashes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Hashes.o.d" -o ${OBJECTDIR}/_ext/1622303505/Hashes.o "../../../../Microchip/TCPIP Stack/Hashes.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Helpers.o: ../../../../Microchip/TCPIP\ Stack/Helpers.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/24e8c405522461c690aecc1e2a8c35127f7b922e .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Helpers.o.d" -o ${OBJECTDIR}/_ext/1622303505/Helpers.o "../../../../Microchip/TCPIP Stack/Helpers.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/HTTP2.o: ../../../../Microchip/TCPIP\ Stack/HTTP2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/6f638410d5c043992372ce62460eba50180c9334 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/HTTP2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1622303505/HTTP2.o "../../../../Microchip/TCPIP Stack/HTTP2.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ICMP.o: ../../../../Microchip/TCPIP\ Stack/ICMP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/9d2f5ea8fc2406583edbbeb92dd065619398d413 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ICMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ICMP.o.d" -o ${OBJECTDIR}/_ext/1622303505/ICMP.o "../../../../Microchip/TCPIP Stack/ICMP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/IP.o: ../../../../Microchip/TCPIP\ Stack/IP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e7b053147312e077768178b4ed32b8e649ccb8ae .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/IP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/IP.o.d" -o ${OBJECTDIR}/_ext/1622303505/IP.o "../../../../Microchip/TCPIP Stack/IP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/LCDBlocking.o: ../../../../Microchip/TCPIP\ Stack/LCDBlocking.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/7a8915316b38a034edf1aedbc3177ef3b7a1d385 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o "../../../../Microchip/TCPIP Stack/LCDBlocking.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/MPFS2.o: ../../../../Microchip/TCPIP\ Stack/MPFS2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/89ebbddf2c900bf39f553091fa7591e295af0a5e .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/MPFS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1622303505/MPFS2.o "../../../../Microchip/TCPIP Stack/MPFS2.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/NBNS.o: ../../../../Microchip/TCPIP\ Stack/NBNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d18ce3a750c1f9d5d96121ec78768f977977feca .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/NBNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/NBNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/NBNS.o "../../../../Microchip/TCPIP Stack/NBNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Reboot.o: ../../../../Microchip/TCPIP\ Stack/Reboot.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/58f98cbbb1153a8128427e6661f50847868a6a15 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Reboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Reboot.o.d" -o ${OBJECTDIR}/_ext/1622303505/Reboot.o "../../../../Microchip/TCPIP Stack/Reboot.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SMTP.o: ../../../../Microchip/TCPIP\ Stack/SMTP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3b4eb18d57731d818cb3dd62d39f1788ca1ca1a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SMTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SMTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SMTP.o "../../../../Microchip/TCPIP Stack/SMTP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SNMP.o: ../../../../Microchip/TCPIP\ Stack/SNMP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/18ae93af1369de635aa270f3b138be1431be1552 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SNMP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SNMP.o "../../../../Microchip/TCPIP Stack/SNMP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SNTP.o: ../../../../Microchip/TCPIP\ Stack/SNTP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d178da856d16b59d978ac8bd55cbf886f072c922 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SNTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SNTP.o "../../../../Microchip/TCPIP Stack/SNTP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o: ../../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/9ca83df121429a3ebe16164507845a33001a5f2c .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o "../../../../Microchip/TCPIP Stack/SPIEEPROM.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SPIFlash.o: ../../../../Microchip/TCPIP\ Stack/SPIFlash.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/f0dcfc816833bf4d52d4f0e6ad11a09d168838d .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIFlash.o "../../../../Microchip/TCPIP Stack/SPIFlash.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SPIRAM.o: ../../../../Microchip/TCPIP\ Stack/SPIRAM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/97e863f210177effe9cf3a2e50fe19a1395330c0 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIRAM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIRAM.o "../../../../Microchip/TCPIP Stack/SPIRAM.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/StackTsk.o: ../../../../Microchip/TCPIP\ Stack/StackTsk.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/40088e15e6ee3d07ce27ebfdfecafecce579f03d .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/StackTsk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1622303505/StackTsk.o "../../../../Microchip/TCPIP Stack/StackTsk.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/TCP.o: ../../../../Microchip/TCPIP\ Stack/TCP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/6e87df969d0b229a88dca43cf027e83ee4a74788 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/TCP.o.d" -o ${OBJECTDIR}/_ext/1622303505/TCP.o "../../../../Microchip/TCPIP Stack/TCP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o: ../../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/34bda97216d93b506be63e77ed347ebea5321d8 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o "../../../../Microchip/TCPIP Stack/TCPPerformanceTest.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Telnet.o: ../../../../Microchip/TCPIP\ Stack/Telnet.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/afee3a70e2acc84b2a10ac0272356711ba8756bb .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Telnet.o.d" -o ${OBJECTDIR}/_ext/1622303505/Telnet.o "../../../../Microchip/TCPIP Stack/Telnet.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/TFTPc.o: ../../../../Microchip/TCPIP\ Stack/TFTPc.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/dc6492a55d15bfb372a78450b560955db238d6c7 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TFTPc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1622303505/TFTPc.o "../../../../Microchip/TCPIP Stack/TFTPc.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Tick.o: ../../../../Microchip/TCPIP\ Stack/Tick.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/1ac6b4fdaa0bf42ddb0c312cabbaa4b682694590 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Tick.o.d" -o ${OBJECTDIR}/_ext/1622303505/Tick.o "../../../../Microchip/TCPIP Stack/Tick.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UART.o: ../../../../Microchip/TCPIP\ Stack/UART.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/897e89f5cd49a64f39199ab49698b86d86eb563a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UART.o.d" -o ${OBJECTDIR}/_ext/1622303505/UART.o "../../../../Microchip/TCPIP Stack/UART.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o: ../../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/792bcf82376b2f8f97cb776d0c59aed6c2c46e44 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o "../../../../Microchip/TCPIP Stack/UART2TCPBridge.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UDP.o: ../../../../Microchip/TCPIP\ Stack/UDP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/79efb567640e87349ff77967b13c229bffeec985 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UDP.o.d" -o ${OBJECTDIR}/_ext/1622303505/UDP.o "../../../../Microchip/TCPIP Stack/UDP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o: ../../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/86bbdc05627875ee9df25922bc6c19df13bfc2a9 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o "../../../../Microchip/TCPIP Stack/UDPPerformanceTest.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/8125b53dc78bee0cfa7702de4e37e0773911eb97 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o "../../../../Microchip/TCPIP Stack/ZeroconfHelper.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e7d272383d3625a37321251881ece60b3910f07e .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o "../../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d143116e3d4a6c74f36690649eecfd601bf916b8 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o "../../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1452631451/DHCP.o: ../LocalFiles/DHCP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/25572b335b0e237b7d1c4e0118cc199223e4e4e9 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1452631451/DHCP.o.d" -o ${OBJECTDIR}/_ext/1452631451/DHCP.o ../LocalFiles/DHCP.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1452631451/DHCPs.o: ../LocalFiles/DHCPs.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/effd7a02c4d38dd4862799390c70d1b16481be5 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCPs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1452631451/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1452631451/DHCPs.o ../LocalFiles/DHCPs.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1452631451/MRF24J40.o: ../LocalFiles/MRF24J40.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/a8ccb1d07521cd872d351a0a5573114051358d88 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/MRF24J40.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/1452631451/MRF24J40.o ../LocalFiles/MRF24J40.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/56957362/MRF49XA.o: ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/1ab08c79fdc2ff593ab8b5d1be10fd884df7047f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/56957362" 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/56957362/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/56838198/MRF89XA.o: ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/acda36044828bca27b3b57bdb6d98602fdd6c2a1 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/56838198" 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/56838198/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/56838198/MRF89XA.o ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/594816914/crc.o: ../../../../Microchip/Transceivers/crc.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/eaa745e94fc5aaf755d2daff616b2f7a8724cea9 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/594816914/crc.o.d" -o ${OBJECTDIR}/_ext/594816914/crc.o ../../../../Microchip/Transceivers/crc.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/594816914/security.o: ../../../../Microchip/Transceivers/security.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/bf0445b61dda8d0c7679b63a54c9e5edee4e0d1f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/594816914/security.o.d" -o ${OBJECTDIR}/_ext/594816914/security.o ../../../../Microchip/Transceivers/security.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WF_Eint.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/aac543d10b26b9b04b557d1235f9dac6407a7960 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_Eint.o "../../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_pbkdf2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/49dfc52104a3403fce487c28b49f49bce708f59e .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o "../../../../Microchip/TCPIP Stack/WiFi/WF_pbkdf2.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WF_Spi.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/1ae43c54dd3d1f588e150c20951439f237227a17 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_Spi.o "../../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/533354b1d7e9bfc37676ef989979bd0233806029 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/96c85d5e24568608775e142d1b642a76f10b82af .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/f802d6267cd12a886a95eb74930390d1a2e0c19b .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsole.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/9a828d6ff8fff9c429300c2da3b1ebc8bc1107be .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsole.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsole.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsole.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsole.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/af8d0f810f7f483e486a598ed72e99f4a20385b7 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/2fdc4b010beea290ac3bf307949a687f94fb238b .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b863cedac48ae41a96732c0715c61617cc7fed31 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/311b10aceec633df79c128af81c047083e7d437d .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/dc27b266032b42a00d639e2b033fdb6ccbe937c1 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e05f3c3d4eb30a441efdd2e6894072feaa8dc2db .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o "../../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDebugStrings.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/8e690436fa7ddf102668e91417cc387eea709bf7 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o "../../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b9270326ae6d68f34f974d7279252055a552daae .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFDriverCom_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/316694475f69239f2f88198d3d5333c1c6ed2728 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/6fd585d10ca96d5ed298780eea3317cceeb07dc2 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFEventHandler.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/cc1deb639fe514b26b28b8cc058e76e3bcd7c29a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o "../../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFInit.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/bd3759b9bf36b5725d85b0dc25c87e245b237bc .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFInit.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFInit.o "../../../../Microchip/TCPIP Stack/WiFi/WFInit.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFMac_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFMac_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e930399c5fa6d9b972e5cf7ed78b1eb66adfee7a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFMac_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/16455784bf76a14042cf847a03f56ca9b625d283 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/60dc718870cf536ed513adaf5d1f4143b08e4a4f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFParamMsg_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFPowerSave.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/dc2b6260eea5f61d335e0a00ec0d2623da73eced .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o "../../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFScan.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/68656b7a44d5f430bc8c37dd4af6db2bd677e051 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFScan.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFScan.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFScan.o "../../../../Microchip/TCPIP Stack/WiFi/WFScan.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFTxPower.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/aae0bc9397cb3ba5b2cf0320ce5cf1a682ba2a62 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFTxPower.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFTxPower.o "../../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1850237697/MiWi.o: ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/5f9384cb399f7fb484b9274c8b7fc6a5420ff624 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1850237697" 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1850237697/MiWi.o.d" -o ${OBJECTDIR}/_ext/1850237697/MiWi.o ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1179125038/MiWiPRO.o: ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b1e45004f26e4ed1daad1e4144f6cd680e8ac0d2 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1179125038" 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/355958077/P2P.o: ../../../../Microchip/WirelessProtocols/P2P/P2P.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/2efb6ddf38c919af021d833d1d0a75e7fb310403 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/355958077" 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/355958077/P2P.o.d" -o ${OBJECTDIR}/_ext/355958077/P2P.o ../../../../Microchip/WirelessProtocols/P2P/P2P.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/Console.o: ../../../../Microchip/WirelessProtocols/Console.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/bd397842b4b1323b9e18fbf90b978f88bc4b980 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/Console.o.d" -o ${OBJECTDIR}/_ext/546296802/Console.o ../../../../Microchip/WirelessProtocols/Console.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/EEPROM.o: ../../../../Microchip/WirelessProtocols/EEPROM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/ca817a4fee3b9de19d581d1ae79034a3ff850f19 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/EEPROM.o.d" -o ${OBJECTDIR}/_ext/546296802/EEPROM.o ../../../../Microchip/WirelessProtocols/EEPROM.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/NVM.o: ../../../../Microchip/WirelessProtocols/NVM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3d20ef7f83b4f30997f96bb008b0158117e4d0a5 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/NVM.o.d" -o ${OBJECTDIR}/_ext/546296802/NVM.o ../../../../Microchip/WirelessProtocols/NVM.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/SymbolTime.o: ../../../../Microchip/WirelessProtocols/SymbolTime.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/ec337b068407b7b1ee8373b346841c5b9550e6d1 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ../../../../Microchip/WirelessProtocols/SymbolTime.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/MSPI.o: ../../../../Microchip/WirelessProtocols/MSPI.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/4863ba2fa725a85a082551d26028e14e4e3d7c13 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/MSPI.o.d" -o ${OBJECTDIR}/_ext/546296802/MSPI.o ../../../../Microchip/WirelessProtocols/MSPI.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/987fddd6382e10a06cbf94d80c25ce3421343a67 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/412441b2139df476802dd7b7794b5ec6837e5545 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/4fbfaaf3a60c46502b371ff4a630a7adb8b68eb8 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472/WF_Config.o ../WF_Config.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/LCD_ST7032.o: ../LCD_ST7032.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/dc6c7f6057248618b5a255b9c9ce250efcdc8fdd .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" -o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ../LCD_ST7032.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/Storage.o: ../Storage.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/1663f3867abdc429bd396a7535b55ece8c9fe10a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Storage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Storage.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/Storage.o.d" -o ${OBJECTDIR}/_ext/1472/Storage.o ../Storage.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/MPFSImg2.o: ../MPFSImg2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/7a84348a1e6476b6c0eb465b16b22e4abc2d8a88 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ../MPFSImg2.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/SelfTestMode.o: ../SelfTestMode.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/129ab99ca6b09ecf592ca1764bd2a68a3e907282 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/SelfTestMode.o.d" -o ${OBJECTDIR}/_ext/1472/SelfTestMode.o ../SelfTestMode.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/2083777cbf8461668a9b6312c2e73f94b01f429 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/MainDemoTest.c.o: ../MainDemoTest.c.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/51b53849d22bb0065adff90f96d7bbcacaa00528 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -DMIWI_HELPER -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemoTest.c.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o ../MainDemoTest.c.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/XC32_EVAL_BOARD_PROTOCOL_MIWI
	${RM} -r dist/XC32_EVAL_BOARD_PROTOCOL_MIWI

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
