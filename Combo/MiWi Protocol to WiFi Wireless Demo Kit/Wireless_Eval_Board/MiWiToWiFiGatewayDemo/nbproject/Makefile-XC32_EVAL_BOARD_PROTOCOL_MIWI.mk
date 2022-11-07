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
SOURCEFILES_QUOTED_IF_SPACED=Helper/MyHelper.c "../../../../Microchip/TCPIP Stack/Announce.c" "../../../../Microchip/TCPIP Stack/ARP.c" "../../../../Microchip/TCPIP Stack/AutoIP.c" "../../../../Microchip/TCPIP Stack/BerkeleyAPI.c" "../../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S" "../../../../Microchip/TCPIP Stack/Delay.c" "../../../../Microchip/TCPIP Stack/DNS.c" "../../../../Microchip/TCPIP Stack/DNSs.c" "../../../../Microchip/TCPIP Stack/DynDNS.c" "../../../../Microchip/TCPIP Stack/ENC28J60.c" "../../../../Microchip/TCPIP Stack/ENCX24J600.c" "../../../../Microchip/TCPIP Stack/FTP.c" "../../../../Microchip/TCPIP Stack/Hashes.c" "../../../../Microchip/TCPIP Stack/Helpers.c" "../../../../Microchip/TCPIP Stack/HTTP2.c" "../../../../Microchip/TCPIP Stack/ICMP.c" "../../../../Microchip/TCPIP Stack/IP.c" "../../../../Microchip/TCPIP Stack/LCDBlocking.c" "../../../../Microchip/TCPIP Stack/MPFS2.c" "../../../../Microchip/TCPIP Stack/NBNS.c" "../../../../Microchip/TCPIP Stack/Reboot.c" "../../../../Microchip/TCPIP Stack/SMTP.c" "../../../../Microchip/TCPIP Stack/SNMP.c" "../../../../Microchip/TCPIP Stack/SNTP.c" "../../../../Microchip/TCPIP Stack/SPIEEPROM.c" "../../../../Microchip/TCPIP Stack/SPIFlash.c" "../../../../Microchip/TCPIP Stack/SPIRAM.c" "../../../../Microchip/TCPIP Stack/StackTsk.c" "../../../../Microchip/TCPIP Stack/TCP.c" "../../../../Microchip/TCPIP Stack/TCPPerformanceTest.c" "../../../../Microchip/TCPIP Stack/Telnet.c" "../../../../Microchip/TCPIP Stack/TFTPc.c" "../../../../Microchip/TCPIP Stack/Tick.c" "../../../../Microchip/TCPIP Stack/UART.c" "../../../../Microchip/TCPIP Stack/UART2TCPBridge.c" "../../../../Microchip/TCPIP Stack/UDP.c" "../../../../Microchip/TCPIP Stack/UDPPerformanceTest.c" "../../../../Microchip/TCPIP Stack/ZeroconfHelper.c" "../../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c" "../../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c" ../LocalFiles/DHCP.c ../LocalFiles/DHCPs.c ../LocalFiles/MRF24J40.c ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../../../../Microchip/Transceivers/crc.c ../../../../Microchip/Transceivers/security.c "../../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c" "../../../../Microchip/TCPIP Stack/WiFi/WF_pbkdf2.c" "../../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsole.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c" "../../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c" "../../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c" "../../../../Microchip/TCPIP Stack/WiFi/WFDriverCom_24G.c" "../../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw_24G.c" "../../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c" "../../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c" "../../../../Microchip/TCPIP Stack/WiFi/WFInit.c" "../../../../Microchip/TCPIP Stack/WiFi/WFMac_24G.c" "../../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg_24G.c" "../../../../Microchip/TCPIP Stack/WiFi/WFParamMsg_24G.c" "../../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c" "../../../../Microchip/TCPIP Stack/WiFi/WFScan.c" "../../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c" ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../Microchip/WirelessProtocols/Console.c ../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../Microchip/WirelessProtocols/NVM.c ../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../Microchip/WirelessProtocols/MSPI.c ../CustomHTTPApp.c ../UARTConfig.c ../WF_Config.c ../LCD_ST7032.c ../Storage.c ../MPFSImg2.c ../SelfTestMode.c ../GenericTCPClient.c ../MainDemoTest.c.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Helper/MyHelper.o ${OBJECTDIR}/_ext/1622303505/Announce.o ${OBJECTDIR}/_ext/1622303505/ARP.o ${OBJECTDIR}/_ext/1622303505/AutoIP.o ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/1622303505/Delay.o ${OBJECTDIR}/_ext/1622303505/DNS.o ${OBJECTDIR}/_ext/1622303505/DNSs.o ${OBJECTDIR}/_ext/1622303505/DynDNS.o ${OBJECTDIR}/_ext/1622303505/ENC28J60.o ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o ${OBJECTDIR}/_ext/1622303505/FTP.o ${OBJECTDIR}/_ext/1622303505/Hashes.o ${OBJECTDIR}/_ext/1622303505/Helpers.o ${OBJECTDIR}/_ext/1622303505/HTTP2.o ${OBJECTDIR}/_ext/1622303505/ICMP.o ${OBJECTDIR}/_ext/1622303505/IP.o ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o ${OBJECTDIR}/_ext/1622303505/MPFS2.o ${OBJECTDIR}/_ext/1622303505/NBNS.o ${OBJECTDIR}/_ext/1622303505/Reboot.o ${OBJECTDIR}/_ext/1622303505/SMTP.o ${OBJECTDIR}/_ext/1622303505/SNMP.o ${OBJECTDIR}/_ext/1622303505/SNTP.o ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o ${OBJECTDIR}/_ext/1622303505/SPIFlash.o ${OBJECTDIR}/_ext/1622303505/SPIRAM.o ${OBJECTDIR}/_ext/1622303505/StackTsk.o ${OBJECTDIR}/_ext/1622303505/TCP.o ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1622303505/Telnet.o ${OBJECTDIR}/_ext/1622303505/TFTPc.o ${OBJECTDIR}/_ext/1622303505/Tick.o ${OBJECTDIR}/_ext/1622303505/UART.o ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o ${OBJECTDIR}/_ext/1622303505/UDP.o ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/1452631451/DHCP.o ${OBJECTDIR}/_ext/1452631451/DHCPs.o ${OBJECTDIR}/_ext/1452631451/MRF24J40.o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ${OBJECTDIR}/_ext/56838198/MRF89XA.o ${OBJECTDIR}/_ext/594816914/crc.o ${OBJECTDIR}/_ext/594816914/security.o ${OBJECTDIR}/_ext/1310019475/WF_Eint.o ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o ${OBJECTDIR}/_ext/1310019475/WF_Spi.o ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o ${OBJECTDIR}/_ext/1310019475/WFConsole.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o ${OBJECTDIR}/_ext/1310019475/WFInit.o ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o ${OBJECTDIR}/_ext/1310019475/WFScan.o ${OBJECTDIR}/_ext/1310019475/WFTxPower.o ${OBJECTDIR}/_ext/1850237697/MiWi.o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ${OBJECTDIR}/_ext/355958077/P2P.o ${OBJECTDIR}/_ext/546296802/Console.o ${OBJECTDIR}/_ext/546296802/EEPROM.o ${OBJECTDIR}/_ext/546296802/NVM.o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ${OBJECTDIR}/_ext/546296802/MSPI.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1472/WF_Config.o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/Storage.o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ${OBJECTDIR}/_ext/1472/SelfTestMode.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o
POSSIBLE_DEPFILES=${OBJECTDIR}/Helper/MyHelper.o.d ${OBJECTDIR}/_ext/1622303505/Announce.o.d ${OBJECTDIR}/_ext/1622303505/ARP.o.d ${OBJECTDIR}/_ext/1622303505/AutoIP.o.d ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.d ${OBJECTDIR}/_ext/1622303505/Delay.o.d ${OBJECTDIR}/_ext/1622303505/DNS.o.d ${OBJECTDIR}/_ext/1622303505/DNSs.o.d ${OBJECTDIR}/_ext/1622303505/DynDNS.o.d ${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d ${OBJECTDIR}/_ext/1622303505/FTP.o.d ${OBJECTDIR}/_ext/1622303505/Hashes.o.d ${OBJECTDIR}/_ext/1622303505/Helpers.o.d ${OBJECTDIR}/_ext/1622303505/HTTP2.o.d ${OBJECTDIR}/_ext/1622303505/ICMP.o.d ${OBJECTDIR}/_ext/1622303505/IP.o.d ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d ${OBJECTDIR}/_ext/1622303505/MPFS2.o.d ${OBJECTDIR}/_ext/1622303505/NBNS.o.d ${OBJECTDIR}/_ext/1622303505/Reboot.o.d ${OBJECTDIR}/_ext/1622303505/SMTP.o.d ${OBJECTDIR}/_ext/1622303505/SNMP.o.d ${OBJECTDIR}/_ext/1622303505/SNTP.o.d ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d ${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d ${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d ${OBJECTDIR}/_ext/1622303505/StackTsk.o.d ${OBJECTDIR}/_ext/1622303505/TCP.o.d ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d ${OBJECTDIR}/_ext/1622303505/Telnet.o.d ${OBJECTDIR}/_ext/1622303505/TFTPc.o.d ${OBJECTDIR}/_ext/1622303505/Tick.o.d ${OBJECTDIR}/_ext/1622303505/UART.o.d ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/1622303505/UDP.o.d ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d ${OBJECTDIR}/_ext/1452631451/DHCP.o.d ${OBJECTDIR}/_ext/1452631451/DHCPs.o.d ${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d ${OBJECTDIR}/_ext/56957362/MRF49XA.o.d ${OBJECTDIR}/_ext/56838198/MRF89XA.o.d ${OBJECTDIR}/_ext/594816914/crc.o.d ${OBJECTDIR}/_ext/594816914/security.o.d ${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d ${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d ${OBJECTDIR}/_ext/1310019475/WFConsole.o.d ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d ${OBJECTDIR}/_ext/1310019475/WFInit.o.d ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d ${OBJECTDIR}/_ext/1310019475/WFScan.o.d ${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d ${OBJECTDIR}/_ext/1850237697/MiWi.o.d ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d ${OBJECTDIR}/_ext/355958077/P2P.o.d ${OBJECTDIR}/_ext/546296802/Console.o.d ${OBJECTDIR}/_ext/546296802/EEPROM.o.d ${OBJECTDIR}/_ext/546296802/NVM.o.d ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d ${OBJECTDIR}/_ext/546296802/MSPI.o.d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d ${OBJECTDIR}/_ext/1472/UARTConfig.o.d ${OBJECTDIR}/_ext/1472/WF_Config.o.d ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d ${OBJECTDIR}/_ext/1472/Storage.o.d ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d ${OBJECTDIR}/_ext/1472/SelfTestMode.o.d ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Helper/MyHelper.o ${OBJECTDIR}/_ext/1622303505/Announce.o ${OBJECTDIR}/_ext/1622303505/ARP.o ${OBJECTDIR}/_ext/1622303505/AutoIP.o ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/1622303505/Delay.o ${OBJECTDIR}/_ext/1622303505/DNS.o ${OBJECTDIR}/_ext/1622303505/DNSs.o ${OBJECTDIR}/_ext/1622303505/DynDNS.o ${OBJECTDIR}/_ext/1622303505/ENC28J60.o ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o ${OBJECTDIR}/_ext/1622303505/FTP.o ${OBJECTDIR}/_ext/1622303505/Hashes.o ${OBJECTDIR}/_ext/1622303505/Helpers.o ${OBJECTDIR}/_ext/1622303505/HTTP2.o ${OBJECTDIR}/_ext/1622303505/ICMP.o ${OBJECTDIR}/_ext/1622303505/IP.o ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o ${OBJECTDIR}/_ext/1622303505/MPFS2.o ${OBJECTDIR}/_ext/1622303505/NBNS.o ${OBJECTDIR}/_ext/1622303505/Reboot.o ${OBJECTDIR}/_ext/1622303505/SMTP.o ${OBJECTDIR}/_ext/1622303505/SNMP.o ${OBJECTDIR}/_ext/1622303505/SNTP.o ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o ${OBJECTDIR}/_ext/1622303505/SPIFlash.o ${OBJECTDIR}/_ext/1622303505/SPIRAM.o ${OBJECTDIR}/_ext/1622303505/StackTsk.o ${OBJECTDIR}/_ext/1622303505/TCP.o ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1622303505/Telnet.o ${OBJECTDIR}/_ext/1622303505/TFTPc.o ${OBJECTDIR}/_ext/1622303505/Tick.o ${OBJECTDIR}/_ext/1622303505/UART.o ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o ${OBJECTDIR}/_ext/1622303505/UDP.o ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/1452631451/DHCP.o ${OBJECTDIR}/_ext/1452631451/DHCPs.o ${OBJECTDIR}/_ext/1452631451/MRF24J40.o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ${OBJECTDIR}/_ext/56838198/MRF89XA.o ${OBJECTDIR}/_ext/594816914/crc.o ${OBJECTDIR}/_ext/594816914/security.o ${OBJECTDIR}/_ext/1310019475/WF_Eint.o ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o ${OBJECTDIR}/_ext/1310019475/WF_Spi.o ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o ${OBJECTDIR}/_ext/1310019475/WFConsole.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o ${OBJECTDIR}/_ext/1310019475/WFInit.o ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o ${OBJECTDIR}/_ext/1310019475/WFScan.o ${OBJECTDIR}/_ext/1310019475/WFTxPower.o ${OBJECTDIR}/_ext/1850237697/MiWi.o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ${OBJECTDIR}/_ext/355958077/P2P.o ${OBJECTDIR}/_ext/546296802/Console.o ${OBJECTDIR}/_ext/546296802/EEPROM.o ${OBJECTDIR}/_ext/546296802/NVM.o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ${OBJECTDIR}/_ext/546296802/MSPI.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1472/WF_Config.o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/Storage.o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ${OBJECTDIR}/_ext/1472/SelfTestMode.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o

# Source Files
SOURCEFILES=Helper/MyHelper.c ../../../../Microchip/TCPIP Stack/Announce.c ../../../../Microchip/TCPIP Stack/ARP.c ../../../../Microchip/TCPIP Stack/AutoIP.c ../../../../Microchip/TCPIP Stack/BerkeleyAPI.c ../../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S ../../../../Microchip/TCPIP Stack/Delay.c ../../../../Microchip/TCPIP Stack/DNS.c ../../../../Microchip/TCPIP Stack/DNSs.c ../../../../Microchip/TCPIP Stack/DynDNS.c ../../../../Microchip/TCPIP Stack/ENC28J60.c ../../../../Microchip/TCPIP Stack/ENCX24J600.c ../../../../Microchip/TCPIP Stack/FTP.c ../../../../Microchip/TCPIP Stack/Hashes.c ../../../../Microchip/TCPIP Stack/Helpers.c ../../../../Microchip/TCPIP Stack/HTTP2.c ../../../../Microchip/TCPIP Stack/ICMP.c ../../../../Microchip/TCPIP Stack/IP.c ../../../../Microchip/TCPIP Stack/LCDBlocking.c ../../../../Microchip/TCPIP Stack/MPFS2.c ../../../../Microchip/TCPIP Stack/NBNS.c ../../../../Microchip/TCPIP Stack/Reboot.c ../../../../Microchip/TCPIP Stack/SMTP.c ../../../../Microchip/TCPIP Stack/SNMP.c ../../../../Microchip/TCPIP Stack/SNTP.c ../../../../Microchip/TCPIP Stack/SPIEEPROM.c ../../../../Microchip/TCPIP Stack/SPIFlash.c ../../../../Microchip/TCPIP Stack/SPIRAM.c ../../../../Microchip/TCPIP Stack/StackTsk.c ../../../../Microchip/TCPIP Stack/TCP.c ../../../../Microchip/TCPIP Stack/TCPPerformanceTest.c ../../../../Microchip/TCPIP Stack/Telnet.c ../../../../Microchip/TCPIP Stack/TFTPc.c ../../../../Microchip/TCPIP Stack/Tick.c ../../../../Microchip/TCPIP Stack/UART.c ../../../../Microchip/TCPIP Stack/UART2TCPBridge.c ../../../../Microchip/TCPIP Stack/UDP.c ../../../../Microchip/TCPIP Stack/UDPPerformanceTest.c ../../../../Microchip/TCPIP Stack/ZeroconfHelper.c ../../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c ../../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c ../LocalFiles/DHCP.c ../LocalFiles/DHCPs.c ../LocalFiles/MRF24J40.c ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../../../../Microchip/Transceivers/crc.c ../../../../Microchip/Transceivers/security.c ../../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c ../../../../Microchip/TCPIP Stack/WiFi/WF_pbkdf2.c ../../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c ../../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c ../../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c ../../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsole.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c ../../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c ../../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c ../../../../Microchip/TCPIP Stack/WiFi/WFDriverCom_24G.c ../../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw_24G.c ../../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c ../../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c ../../../../Microchip/TCPIP Stack/WiFi/WFInit.c ../../../../Microchip/TCPIP Stack/WiFi/WFMac_24G.c ../../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg_24G.c ../../../../Microchip/TCPIP Stack/WiFi/WFParamMsg_24G.c ../../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c ../../../../Microchip/TCPIP Stack/WiFi/WFScan.c ../../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../Microchip/WirelessProtocols/Console.c ../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../Microchip/WirelessProtocols/NVM.c ../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../Microchip/WirelessProtocols/MSPI.c ../CustomHTTPApp.c ../UARTConfig.c ../WF_Config.c ../LCD_ST7032.c ../Storage.c ../MPFSImg2.c ../SelfTestMode.c ../GenericTCPClient.c ../MainDemoTest.c.c



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
${OBJECTDIR}/Helper/MyHelper.o: Helper/MyHelper.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/a3d18a73efec4d30ef03d3b3545af77ab36e972a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/Helper" 
	@${RM} ${OBJECTDIR}/Helper/MyHelper.o.d 
	@${RM} ${OBJECTDIR}/Helper/MyHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/Helper/MyHelper.o.d" -o ${OBJECTDIR}/Helper/MyHelper.o Helper/MyHelper.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Announce.o: ../../../../Microchip/TCPIP\ Stack/Announce.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/bef7607c2ead21fb4aa81f2d8598fa8a4e6e5c22 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Announce.o.d" -o ${OBJECTDIR}/_ext/1622303505/Announce.o "../../../../Microchip/TCPIP Stack/Announce.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ARP.o: ../../../../Microchip/TCPIP\ Stack/ARP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d4cc39e0ba0212970c8874acfa56351d530f3a8f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ARP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ARP.o.d" -o ${OBJECTDIR}/_ext/1622303505/ARP.o "../../../../Microchip/TCPIP Stack/ARP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/AutoIP.o: ../../../../Microchip/TCPIP\ Stack/AutoIP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/72f54a1356e342323e327936c3ba3938b010c1ca .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/AutoIP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1622303505/AutoIP.o "../../../../Microchip/TCPIP Stack/AutoIP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o: ../../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/58d6fb4f834bb392c98833a9c3ca26af6b8c483b .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o "../../../../Microchip/TCPIP Stack/BerkeleyAPI.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Delay.o: ../../../../Microchip/TCPIP\ Stack/Delay.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/1e0b3cd5fea6735e781666ab2a73dd3edf22f500 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Delay.o.d" -o ${OBJECTDIR}/_ext/1622303505/Delay.o "../../../../Microchip/TCPIP Stack/Delay.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/DNS.o: ../../../../Microchip/TCPIP\ Stack/DNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/985cfe4618d2b59361edaf1e670262c0695e8288 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/DNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/DNS.o "../../../../Microchip/TCPIP Stack/DNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/DNSs.o: ../../../../Microchip/TCPIP\ Stack/DNSs.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/83bdabb3c37950049fa549a96dbeea55b4239da7 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNSs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/DNSs.o.d" -o ${OBJECTDIR}/_ext/1622303505/DNSs.o "../../../../Microchip/TCPIP Stack/DNSs.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/DynDNS.o: ../../../../Microchip/TCPIP\ Stack/DynDNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/895f43ae6227563a757950cb4fd27686d716c79f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DynDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/DynDNS.o "../../../../Microchip/TCPIP Stack/DynDNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ENC28J60.o: ../../../../Microchip/TCPIP\ Stack/ENC28J60.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/c7a44f61aa32324879c234d57dec1cc546761e36 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENC28J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1622303505/ENC28J60.o "../../../../Microchip/TCPIP Stack/ENC28J60.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ENCX24J600.o: ../../../../Microchip/TCPIP\ Stack/ENCX24J600.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/5c19336e414a762a45e5449fc1e29c95357596bf .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o "../../../../Microchip/TCPIP Stack/ENCX24J600.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/FTP.o: ../../../../Microchip/TCPIP\ Stack/FTP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/bd408522fcdef81d280f109d27b8b529572a8271 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/FTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/FTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/FTP.o "../../../../Microchip/TCPIP Stack/FTP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Hashes.o: ../../../../Microchip/TCPIP\ Stack/Hashes.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/44fd7bae5a949d64d30082d50ea6ce564a753eda .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Hashes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Hashes.o.d" -o ${OBJECTDIR}/_ext/1622303505/Hashes.o "../../../../Microchip/TCPIP Stack/Hashes.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Helpers.o: ../../../../Microchip/TCPIP\ Stack/Helpers.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/90a1b1d9146fb291d2df0e40aa353e07d28b720 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Helpers.o.d" -o ${OBJECTDIR}/_ext/1622303505/Helpers.o "../../../../Microchip/TCPIP Stack/Helpers.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/HTTP2.o: ../../../../Microchip/TCPIP\ Stack/HTTP2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/90cfa0264c4b22dc108515f7965bd7e11156c53a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/HTTP2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1622303505/HTTP2.o "../../../../Microchip/TCPIP Stack/HTTP2.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ICMP.o: ../../../../Microchip/TCPIP\ Stack/ICMP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/9c74746e5cbfdbfec7e33a5bb3c1b5a05ac8b794 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ICMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ICMP.o.d" -o ${OBJECTDIR}/_ext/1622303505/ICMP.o "../../../../Microchip/TCPIP Stack/ICMP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/IP.o: ../../../../Microchip/TCPIP\ Stack/IP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e3d7b4824d9ee375ac0e6df8d56439d7430116a3 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/IP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/IP.o.d" -o ${OBJECTDIR}/_ext/1622303505/IP.o "../../../../Microchip/TCPIP Stack/IP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/LCDBlocking.o: ../../../../Microchip/TCPIP\ Stack/LCDBlocking.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/2c716e87433c58d7c3875459fb27c4fff8c54694 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o "../../../../Microchip/TCPIP Stack/LCDBlocking.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/MPFS2.o: ../../../../Microchip/TCPIP\ Stack/MPFS2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/5803505804a73867724b0a5d64305a26ae756520 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/MPFS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1622303505/MPFS2.o "../../../../Microchip/TCPIP Stack/MPFS2.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/NBNS.o: ../../../../Microchip/TCPIP\ Stack/NBNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/856358f2845b6c7945c63a5ab594a4d48b4f8bf4 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/NBNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/NBNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/NBNS.o "../../../../Microchip/TCPIP Stack/NBNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Reboot.o: ../../../../Microchip/TCPIP\ Stack/Reboot.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/90fd1e19ce5943bdc15082a846cddb9de1ae528d .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Reboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Reboot.o.d" -o ${OBJECTDIR}/_ext/1622303505/Reboot.o "../../../../Microchip/TCPIP Stack/Reboot.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SMTP.o: ../../../../Microchip/TCPIP\ Stack/SMTP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/4a662149d3700648f6fcf58cc3a39fe4814d3071 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SMTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SMTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SMTP.o "../../../../Microchip/TCPIP Stack/SMTP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SNMP.o: ../../../../Microchip/TCPIP\ Stack/SNMP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d36f43d20ebce71ec56929455635df3a2c4f60d3 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SNMP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SNMP.o "../../../../Microchip/TCPIP Stack/SNMP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SNTP.o: ../../../../Microchip/TCPIP\ Stack/SNTP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/c777adcbe79d8b7149e68ad97c9b9a48e823f14b .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SNTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SNTP.o "../../../../Microchip/TCPIP Stack/SNTP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o: ../../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d4875df904fc824c6d74a53e9afc628684f117e .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o "../../../../Microchip/TCPIP Stack/SPIEEPROM.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SPIFlash.o: ../../../../Microchip/TCPIP\ Stack/SPIFlash.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/46d823846df10f24acea241e3ea5f6874ed357ce .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIFlash.o "../../../../Microchip/TCPIP Stack/SPIFlash.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SPIRAM.o: ../../../../Microchip/TCPIP\ Stack/SPIRAM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/fa57d518c710a9e02784d7cdad52e593368f7d19 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIRAM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIRAM.o "../../../../Microchip/TCPIP Stack/SPIRAM.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/StackTsk.o: ../../../../Microchip/TCPIP\ Stack/StackTsk.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/7c6a3a8d53bfac778f3d8c1748b5e758e363bb10 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/StackTsk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1622303505/StackTsk.o "../../../../Microchip/TCPIP Stack/StackTsk.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/TCP.o: ../../../../Microchip/TCPIP\ Stack/TCP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/c11f392e1dd2ec2c60025dd312fc4bded806ec48 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/TCP.o.d" -o ${OBJECTDIR}/_ext/1622303505/TCP.o "../../../../Microchip/TCPIP Stack/TCP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o: ../../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/6069e7c12a306a2082ca6eca04af45bcf4af3162 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o "../../../../Microchip/TCPIP Stack/TCPPerformanceTest.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Telnet.o: ../../../../Microchip/TCPIP\ Stack/Telnet.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/5d333b00f029595868aba4524ea591d866c7910f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Telnet.o.d" -o ${OBJECTDIR}/_ext/1622303505/Telnet.o "../../../../Microchip/TCPIP Stack/Telnet.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/TFTPc.o: ../../../../Microchip/TCPIP\ Stack/TFTPc.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/39b8de7ef3194d9483494debdd89646a4956009e .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TFTPc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1622303505/TFTPc.o "../../../../Microchip/TCPIP Stack/TFTPc.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Tick.o: ../../../../Microchip/TCPIP\ Stack/Tick.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/bdaefa615de608c97d7b9c1c74521497d77ed6a3 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Tick.o.d" -o ${OBJECTDIR}/_ext/1622303505/Tick.o "../../../../Microchip/TCPIP Stack/Tick.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UART.o: ../../../../Microchip/TCPIP\ Stack/UART.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/df0d874f8c559da6958b8ee4f5000cd5deb6da9e .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UART.o.d" -o ${OBJECTDIR}/_ext/1622303505/UART.o "../../../../Microchip/TCPIP Stack/UART.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o: ../../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/f074b5999e196300fd4e9390f507c1a17f6a7c94 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o "../../../../Microchip/TCPIP Stack/UART2TCPBridge.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UDP.o: ../../../../Microchip/TCPIP\ Stack/UDP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/5fc19933cf9a9ef96db6864a4c4c08005d96496a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UDP.o.d" -o ${OBJECTDIR}/_ext/1622303505/UDP.o "../../../../Microchip/TCPIP Stack/UDP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o: ../../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/4f565bb4643e7d6e75d1d1749a868241e1245232 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o "../../../../Microchip/TCPIP Stack/UDPPerformanceTest.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b3dd1d3e3805fd05dc226255b9384d9001a213b .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o "../../../../Microchip/TCPIP Stack/ZeroconfHelper.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/169394ed6e3e3e4b1e4b832c0dcc5a7dbb5c4c4a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o "../../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/78a75db11350fb95f8fa29b3d4904f3ef526a578 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o "../../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1452631451/DHCP.o: ../LocalFiles/DHCP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/ab376f944215158f5838cc772d6f336760660247 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1452631451/DHCP.o.d" -o ${OBJECTDIR}/_ext/1452631451/DHCP.o ../LocalFiles/DHCP.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1452631451/DHCPs.o: ../LocalFiles/DHCPs.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/6d825e60e6d87292d8df25a8f3abcc325f0f4875 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCPs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1452631451/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1452631451/DHCPs.o ../LocalFiles/DHCPs.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1452631451/MRF24J40.o: ../LocalFiles/MRF24J40.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/677b92835d3b43b1f933500d3d411e57f47fdc3f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/MRF24J40.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/1452631451/MRF24J40.o ../LocalFiles/MRF24J40.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/56957362/MRF49XA.o: ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/1321270c8e0e751017310bdf5ffd6b51f93e99e1 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/56957362" 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/56957362/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/56838198/MRF89XA.o: ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/10bb9ccdaa7fc38111c92262e58f518970f09c44 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/56838198" 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/56838198/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/56838198/MRF89XA.o ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/594816914/crc.o: ../../../../Microchip/Transceivers/crc.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/fd15d3b970da8f6987ce96aaff671a55326f7156 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/594816914/crc.o.d" -o ${OBJECTDIR}/_ext/594816914/crc.o ../../../../Microchip/Transceivers/crc.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/594816914/security.o: ../../../../Microchip/Transceivers/security.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/a9c3194b66b8e74053f10bea232a8d589b29c44a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/594816914/security.o.d" -o ${OBJECTDIR}/_ext/594816914/security.o ../../../../Microchip/Transceivers/security.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WF_Eint.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d88e5d1150597441a96bce7a03758afc0e4c34b8 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_Eint.o "../../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_pbkdf2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/fabb270f8a03428480846a810848e012fa5cd619 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o "../../../../Microchip/TCPIP Stack/WiFi/WF_pbkdf2.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WF_Spi.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e367ce7180ade54bfdd9654c06352f52b57dd5ed .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_Spi.o "../../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b9f2872260d6526aa3c841313cbbed982ef595a0 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/721c051c078117813e4a8eef174b4e5678d2b393 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/66e8fc911500758e7586eea18afeabd99c9d46c7 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsole.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/52c3c1c76a8e907d1b527914921c3e10d06e905a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsole.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsole.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsole.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsole.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/5b161ff71a604c61a7a99e1ff4ccee0091c1d947 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/cab089c542fc47288716a7a66f3de66ddd70f8f1 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/2ec010965f73d11e6a3725ce67ccdfef81064023 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/f549bf2fa0db54a4165fb00e9a471078e2b4740 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/c992bfe31df0e05927b2107dceaad2ea825bbf29 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/20157e994da22971d1c62046d234dbe650855657 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o "../../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDebugStrings.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/eb16659c6ed69db481e43e49936d0e989e25b71f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o "../../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/cd86a4dcae09c9c47bc9e69f5816a3f7f5e480c4 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFDriverCom_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/2f7e53e0490c10636b55927bb286095fdb248ce8 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/9ba08205a19d2a733ddf4056a3a4082612c2dfc .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFEventHandler.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/ee3c5758cdbfd1e1f3c983b5f60ec98c7dc73564 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o "../../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFInit.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/7fcd9dd9467e10a4a2ff201bfdcfedad61d4a087 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFInit.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFInit.o "../../../../Microchip/TCPIP Stack/WiFi/WFInit.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFMac_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFMac_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/a7eaa7408e47902625bea9077ede19ef49d54d52 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFMac_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/329b49b10b9ec06a80ffab14f7a276ffe127ed67 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b55809fd9d36541d2ed95119e167b1969852cac3 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFParamMsg_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFPowerSave.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d7fad61be0f22a3baf8cffef3f253936419bebd .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o "../../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFScan.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/9beaf7811a2a7e9dbd052a0a50a0e517ee4de3c4 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFScan.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFScan.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFScan.o "../../../../Microchip/TCPIP Stack/WiFi/WFScan.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFTxPower.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/9658d88c33fac7b43c66764687e47b17fdd6c631 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFTxPower.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFTxPower.o "../../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1850237697/MiWi.o: ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/8a6353fa8543a14db36182842baf4d16a7f5786f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1850237697" 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1850237697/MiWi.o.d" -o ${OBJECTDIR}/_ext/1850237697/MiWi.o ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1179125038/MiWiPRO.o: ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d4d751a983919a8e4ef46fa256489efc9739075a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1179125038" 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/355958077/P2P.o: ../../../../Microchip/WirelessProtocols/P2P/P2P.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/8fecf66d6c5f0cb87309996fb62bc28252661df .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/355958077" 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/355958077/P2P.o.d" -o ${OBJECTDIR}/_ext/355958077/P2P.o ../../../../Microchip/WirelessProtocols/P2P/P2P.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/Console.o: ../../../../Microchip/WirelessProtocols/Console.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/273b1935bdce7667c632e6bf682b894cf4d14d91 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/Console.o.d" -o ${OBJECTDIR}/_ext/546296802/Console.o ../../../../Microchip/WirelessProtocols/Console.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/EEPROM.o: ../../../../Microchip/WirelessProtocols/EEPROM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/20f794cd2f894965dae2bf2e4a1512af372a7153 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/EEPROM.o.d" -o ${OBJECTDIR}/_ext/546296802/EEPROM.o ../../../../Microchip/WirelessProtocols/EEPROM.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/NVM.o: ../../../../Microchip/WirelessProtocols/NVM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/5700a97aa53eb8a43938f5e8294480e2ec7d4889 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/NVM.o.d" -o ${OBJECTDIR}/_ext/546296802/NVM.o ../../../../Microchip/WirelessProtocols/NVM.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/SymbolTime.o: ../../../../Microchip/WirelessProtocols/SymbolTime.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/35d22780449271702f03a13101a07d70c43cd005 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ../../../../Microchip/WirelessProtocols/SymbolTime.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/MSPI.o: ../../../../Microchip/WirelessProtocols/MSPI.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b8c677b3f9e61819bcb9d7913e8114b894473db4 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/MSPI.o.d" -o ${OBJECTDIR}/_ext/546296802/MSPI.o ../../../../Microchip/WirelessProtocols/MSPI.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/f3286b4a2dbcde8925305e01d0d3e436564dd9c4 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b5e95fe0cf94b748c8bda81c295351c8fd60343d .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/7fd4331e27324c2623ebdbcd901eb6ffb8557e6b .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472/WF_Config.o ../WF_Config.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/LCD_ST7032.o: ../LCD_ST7032.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/a3ef54e78db46110caba809ab193211414dfae48 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" -o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ../LCD_ST7032.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/Storage.o: ../Storage.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/9cf76592567494bafc1a75392e597584047bf930 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Storage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Storage.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/Storage.o.d" -o ${OBJECTDIR}/_ext/1472/Storage.o ../Storage.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/MPFSImg2.o: ../MPFSImg2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/6877d3cfc6b2d6fd806b0888a86147eb0a97a788 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ../MPFSImg2.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/SelfTestMode.o: ../SelfTestMode.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/ca354b67b836e194414dd80b9edf7c6fa1834eb2 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/SelfTestMode.o.d" -o ${OBJECTDIR}/_ext/1472/SelfTestMode.o ../SelfTestMode.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/2c05416984e9ffa35909be4620588f40538c5640 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/MainDemoTest.c.o: ../MainDemoTest.c.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/888371bc3fa6c20e5f0817e7618d38fe48ea124e .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemoTest.c.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o ../MainDemoTest.c.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/Helper/MyHelper.o: Helper/MyHelper.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3c8abf3a41126e9f350fdc49a1f3e0897e475dce .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/Helper" 
	@${RM} ${OBJECTDIR}/Helper/MyHelper.o.d 
	@${RM} ${OBJECTDIR}/Helper/MyHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/Helper/MyHelper.o.d" -o ${OBJECTDIR}/Helper/MyHelper.o Helper/MyHelper.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Announce.o: ../../../../Microchip/TCPIP\ Stack/Announce.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/fbe1405945e87d46bfac8eec2282f8c94e84ab4f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Announce.o.d" -o ${OBJECTDIR}/_ext/1622303505/Announce.o "../../../../Microchip/TCPIP Stack/Announce.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ARP.o: ../../../../Microchip/TCPIP\ Stack/ARP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3d21b82c0bc9a59be0b467ca8dd94efee68e8036 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ARP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ARP.o.d" -o ${OBJECTDIR}/_ext/1622303505/ARP.o "../../../../Microchip/TCPIP Stack/ARP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/AutoIP.o: ../../../../Microchip/TCPIP\ Stack/AutoIP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/56fef6b609adda2fde6e75088022005e6fb2f949 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/AutoIP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1622303505/AutoIP.o "../../../../Microchip/TCPIP Stack/AutoIP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o: ../../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d02b8f8fe1d39110ba4d291371a6d787911fe1b5 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o "../../../../Microchip/TCPIP Stack/BerkeleyAPI.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Delay.o: ../../../../Microchip/TCPIP\ Stack/Delay.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/178c4886e64469bdc6003662bdbae6dd03ca46b7 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Delay.o.d" -o ${OBJECTDIR}/_ext/1622303505/Delay.o "../../../../Microchip/TCPIP Stack/Delay.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/DNS.o: ../../../../Microchip/TCPIP\ Stack/DNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e3a25bb5acbc2acf51bfbd2e97f4984bae2c1eba .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/DNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/DNS.o "../../../../Microchip/TCPIP Stack/DNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/DNSs.o: ../../../../Microchip/TCPIP\ Stack/DNSs.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b53851bf03799dbd1a83c8cf335f80ffb94ba9d4 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNSs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/DNSs.o.d" -o ${OBJECTDIR}/_ext/1622303505/DNSs.o "../../../../Microchip/TCPIP Stack/DNSs.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/DynDNS.o: ../../../../Microchip/TCPIP\ Stack/DynDNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/bd1ab634c333200e639ae587b0a2298147c97991 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DynDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/DynDNS.o "../../../../Microchip/TCPIP Stack/DynDNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ENC28J60.o: ../../../../Microchip/TCPIP\ Stack/ENC28J60.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/76b145f9ecf3d75a13049c41c0fcd80f83e24923 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENC28J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1622303505/ENC28J60.o "../../../../Microchip/TCPIP Stack/ENC28J60.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ENCX24J600.o: ../../../../Microchip/TCPIP\ Stack/ENCX24J600.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d9b2d44ca1cbc27adc852602d0f3b010fc58142c .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o "../../../../Microchip/TCPIP Stack/ENCX24J600.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/FTP.o: ../../../../Microchip/TCPIP\ Stack/FTP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/df2ee74a3870d31f0b31775a4f9fdcbb4e27ade3 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/FTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/FTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/FTP.o "../../../../Microchip/TCPIP Stack/FTP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Hashes.o: ../../../../Microchip/TCPIP\ Stack/Hashes.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3be350795df8450a8b21985d7207d13b549e2880 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Hashes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Hashes.o.d" -o ${OBJECTDIR}/_ext/1622303505/Hashes.o "../../../../Microchip/TCPIP Stack/Hashes.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Helpers.o: ../../../../Microchip/TCPIP\ Stack/Helpers.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/131618140f573d9807eda290c0677c18b78a197c .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Helpers.o.d" -o ${OBJECTDIR}/_ext/1622303505/Helpers.o "../../../../Microchip/TCPIP Stack/Helpers.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/HTTP2.o: ../../../../Microchip/TCPIP\ Stack/HTTP2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d8a5b9df5d1b3b35a41e3ad52ff2cfe36e985dec .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/HTTP2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1622303505/HTTP2.o "../../../../Microchip/TCPIP Stack/HTTP2.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ICMP.o: ../../../../Microchip/TCPIP\ Stack/ICMP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/451cfb33d47e839f6e85690dd73c2b5c571c4b8a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ICMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ICMP.o.d" -o ${OBJECTDIR}/_ext/1622303505/ICMP.o "../../../../Microchip/TCPIP Stack/ICMP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/IP.o: ../../../../Microchip/TCPIP\ Stack/IP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d1a0339a6b20b6b19614e787c482a3eac904d582 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/IP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/IP.o.d" -o ${OBJECTDIR}/_ext/1622303505/IP.o "../../../../Microchip/TCPIP Stack/IP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/LCDBlocking.o: ../../../../Microchip/TCPIP\ Stack/LCDBlocking.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/7515fa7cc559a6ccc5629d9be1c4fced4b913d2c .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o "../../../../Microchip/TCPIP Stack/LCDBlocking.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/MPFS2.o: ../../../../Microchip/TCPIP\ Stack/MPFS2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/4342609e6e1ed3df97aaf9168d59411b4b9f194f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/MPFS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1622303505/MPFS2.o "../../../../Microchip/TCPIP Stack/MPFS2.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/NBNS.o: ../../../../Microchip/TCPIP\ Stack/NBNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/655da08e031d7aca37a886217fad8953428fbf21 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/NBNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/NBNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/NBNS.o "../../../../Microchip/TCPIP Stack/NBNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Reboot.o: ../../../../Microchip/TCPIP\ Stack/Reboot.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/dbf22e6a6e673402bab5c595dfd8cc35fe00d28d .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Reboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Reboot.o.d" -o ${OBJECTDIR}/_ext/1622303505/Reboot.o "../../../../Microchip/TCPIP Stack/Reboot.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SMTP.o: ../../../../Microchip/TCPIP\ Stack/SMTP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/5326f3e8a96d31aca97b8e3183fbde47a1830668 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SMTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SMTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SMTP.o "../../../../Microchip/TCPIP Stack/SMTP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SNMP.o: ../../../../Microchip/TCPIP\ Stack/SNMP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/2244a6a91622e09706a05d487e7d6ea188b89dff .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SNMP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SNMP.o "../../../../Microchip/TCPIP Stack/SNMP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SNTP.o: ../../../../Microchip/TCPIP\ Stack/SNTP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/35ba3d7bddc71c26bbcc6930a09112c3adfcbc49 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SNTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SNTP.o "../../../../Microchip/TCPIP Stack/SNTP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o: ../../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3602617b10afa03881e27733cb6898424c0ba25a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o "../../../../Microchip/TCPIP Stack/SPIEEPROM.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SPIFlash.o: ../../../../Microchip/TCPIP\ Stack/SPIFlash.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3b3a00aa915acd1dd15681c78271b70436fd3617 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIFlash.o "../../../../Microchip/TCPIP Stack/SPIFlash.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/SPIRAM.o: ../../../../Microchip/TCPIP\ Stack/SPIRAM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/79cd481915626a560a27669923c262cfe2e05808 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIRAM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIRAM.o "../../../../Microchip/TCPIP Stack/SPIRAM.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/StackTsk.o: ../../../../Microchip/TCPIP\ Stack/StackTsk.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/81dfb753ea5d6eb8e204313c4057a5a88b20bc99 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/StackTsk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1622303505/StackTsk.o "../../../../Microchip/TCPIP Stack/StackTsk.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/TCP.o: ../../../../Microchip/TCPIP\ Stack/TCP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/5d63086bff25e805bc53cac398af28bfc7b96cd7 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/TCP.o.d" -o ${OBJECTDIR}/_ext/1622303505/TCP.o "../../../../Microchip/TCPIP Stack/TCP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o: ../../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e7854583a5ef7a3cc1c4b6f5b15a013d21f5ffc4 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o "../../../../Microchip/TCPIP Stack/TCPPerformanceTest.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Telnet.o: ../../../../Microchip/TCPIP\ Stack/Telnet.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/7db3110cbc4c124e9ac08eed955977ba0de5fa1b .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Telnet.o.d" -o ${OBJECTDIR}/_ext/1622303505/Telnet.o "../../../../Microchip/TCPIP Stack/Telnet.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/TFTPc.o: ../../../../Microchip/TCPIP\ Stack/TFTPc.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/9d2a4dc881bce92378a4179b8ff4d919a8f22cda .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TFTPc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1622303505/TFTPc.o "../../../../Microchip/TCPIP Stack/TFTPc.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/Tick.o: ../../../../Microchip/TCPIP\ Stack/Tick.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3169e5e57c0502a0ffbde66aec57f980c67e2cff .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/Tick.o.d" -o ${OBJECTDIR}/_ext/1622303505/Tick.o "../../../../Microchip/TCPIP Stack/Tick.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UART.o: ../../../../Microchip/TCPIP\ Stack/UART.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/7412a5c5af9df0239dc4f0c10a26aeaa42cb06be .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UART.o.d" -o ${OBJECTDIR}/_ext/1622303505/UART.o "../../../../Microchip/TCPIP Stack/UART.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o: ../../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/c6bbbd773896a02b1e473d965c57820b03e3359d .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o "../../../../Microchip/TCPIP Stack/UART2TCPBridge.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UDP.o: ../../../../Microchip/TCPIP\ Stack/UDP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/4c943737c993c8e964a617a92fd00cd215a4cd20 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UDP.o.d" -o ${OBJECTDIR}/_ext/1622303505/UDP.o "../../../../Microchip/TCPIP Stack/UDP.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o: ../../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/a7e72fa0d82c8a3d05dea66682fcad73d1b826c5 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o "../../../../Microchip/TCPIP Stack/UDPPerformanceTest.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/64592633bb8fac3a1487f4eef1e3584d0a207643 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o "../../../../Microchip/TCPIP Stack/ZeroconfHelper.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/fdee8f1b6787fb2e35e6e89c310ac8cddc4ed480 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o "../../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e2beea46e71e88590e4725c7ce9a511e1dc8466c .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o "../../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1452631451/DHCP.o: ../LocalFiles/DHCP.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/a4162f2f94a6cf62060c059f7c30532b3d5dba03 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1452631451/DHCP.o.d" -o ${OBJECTDIR}/_ext/1452631451/DHCP.o ../LocalFiles/DHCP.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1452631451/DHCPs.o: ../LocalFiles/DHCPs.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b3d7182841b2355f613e2d7fbdc4c6fbca277011 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCPs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1452631451/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1452631451/DHCPs.o ../LocalFiles/DHCPs.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1452631451/MRF24J40.o: ../LocalFiles/MRF24J40.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/5020194dc64f3e583c7c091081fe6f197b2ab246 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/MRF24J40.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/1452631451/MRF24J40.o ../LocalFiles/MRF24J40.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/56957362/MRF49XA.o: ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/900d44c9ddadbba46c9d089ce04a648095046e10 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/56957362" 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/56957362/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/56838198/MRF89XA.o: ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/98a5f87ba91b020c5d774f73f3b9dcbf1ec1aa28 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/56838198" 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/56838198/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/56838198/MRF89XA.o ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/594816914/crc.o: ../../../../Microchip/Transceivers/crc.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/eb097f7d016cd1188914ec91bc5c8b14ea932225 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/594816914/crc.o.d" -o ${OBJECTDIR}/_ext/594816914/crc.o ../../../../Microchip/Transceivers/crc.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/594816914/security.o: ../../../../Microchip/Transceivers/security.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/8e4d01f0085b7fa98d9db377a0b0e16ff6647758 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/594816914/security.o.d" -o ${OBJECTDIR}/_ext/594816914/security.o ../../../../Microchip/Transceivers/security.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WF_Eint.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/5cfd6681803a508d6415516914a495bdb9f2e9d8 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_Eint.o "../../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_pbkdf2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/9887b89b95c8de0fae0133bcbb4058f497fb2e1b .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o "../../../../Microchip/TCPIP Stack/WiFi/WF_pbkdf2.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WF_Spi.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/680014f01b9392cbc1aaace52c53afd1198f992c .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_Spi.o "../../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/c17e0374400718a1f928add181d7b31cfe0fc267 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/d2102c971d986832b0d126ce5c18fb34a58a3ef2 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/6a3895cd294357cb2644676c954608c102113852 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsole.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e4e2acc083af0202ac65a98f2c80a8773deb7d4f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsole.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsole.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsole.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsole.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/490953102b7b2a10f40c68b06f25ee63d219cf88 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/80cbfc3265e28849f77e3e757c15558a32a645d3 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/aec540e6816ac71be01ecf4e997d55d2fe8502d9 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/4095454920994a7d8397b0173e9937461d6b6ff4 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/91e8041fab0aa68dac903ea714304c1bf8f449ef .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/f7f80d78443f2744f6ac491a48726ef83e81be8c .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o "../../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDebugStrings.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/f223dcc1f04514e80a294e23fabbddb7e5e3d18 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o "../../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/aaddb93da636b8f462986bfd4a626e7fb07fb7bb .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFDriverCom_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/1bc953f38d5b650d1625fcfc040a2e4013dc4b73 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/a4f676404abd1113587fd13c65bb58bbc19832f8 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFEventHandler.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/8bbdc556728717dcbdec65d5265a95bac64dd9a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o "../../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFInit.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/f80f1abf3cf0516475c9beeddbed182abb32f1a7 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFInit.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFInit.o "../../../../Microchip/TCPIP Stack/WiFi/WFInit.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFMac_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFMac_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/965b0b209f237a56cf212a70bb69d317e1022580 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFMac_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b3cc2cca5eada34ccfefa8382a95dabf722d0197 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg_24G.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/64b4ead5e092b4f6451e46b7b2288124339359cf .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFParamMsg_24G.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFPowerSave.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/ea48de2a4f70e967b687e0eb10c37fd8a522731c .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o "../../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFScan.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/8b3ad24958822abd57d1518fc982f0c0ff9a3fbe .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFScan.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFScan.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFScan.o "../../../../Microchip/TCPIP Stack/WiFi/WFScan.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1310019475/WFTxPower.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b9b7431a5a1b15daeb5b681416ea0c48bc792f03 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFTxPower.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFTxPower.o "../../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c"    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1850237697/MiWi.o: ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/f7405272b38eb37bed4489c8e77c4a496f8b823a .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1850237697" 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1850237697/MiWi.o.d" -o ${OBJECTDIR}/_ext/1850237697/MiWi.o ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1179125038/MiWiPRO.o: ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b9420ad58c643a7f6a7db94df8e085bbbf65a54f .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1179125038" 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/355958077/P2P.o: ../../../../Microchip/WirelessProtocols/P2P/P2P.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/8d493be72e59e47e75b3a2fadf8accf968d2d3d7 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/355958077" 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/355958077/P2P.o.d" -o ${OBJECTDIR}/_ext/355958077/P2P.o ../../../../Microchip/WirelessProtocols/P2P/P2P.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/Console.o: ../../../../Microchip/WirelessProtocols/Console.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/8dabc92e160a0c4c0454235ef823064f0998f65b .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/Console.o.d" -o ${OBJECTDIR}/_ext/546296802/Console.o ../../../../Microchip/WirelessProtocols/Console.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/EEPROM.o: ../../../../Microchip/WirelessProtocols/EEPROM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/4da7fd6494dfaf7afe269b19714117500860f63d .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/EEPROM.o.d" -o ${OBJECTDIR}/_ext/546296802/EEPROM.o ../../../../Microchip/WirelessProtocols/EEPROM.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/NVM.o: ../../../../Microchip/WirelessProtocols/NVM.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/588db017fab87429bc36090227e4731f0ff48cf8 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/NVM.o.d" -o ${OBJECTDIR}/_ext/546296802/NVM.o ../../../../Microchip/WirelessProtocols/NVM.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/SymbolTime.o: ../../../../Microchip/WirelessProtocols/SymbolTime.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/ae7d78dc44013be5ec9eb472a41f60893b92de38 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ../../../../Microchip/WirelessProtocols/SymbolTime.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/546296802/MSPI.o: ../../../../Microchip/WirelessProtocols/MSPI.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/4158a1f2b0aa1dada82f4f0aa2178f391c00ba86 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/546296802/MSPI.o.d" -o ${OBJECTDIR}/_ext/546296802/MSPI.o ../../../../Microchip/WirelessProtocols/MSPI.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/e1aad6c7e2102b928db0cd0d4956e139222e5806 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/c19473fc6b6c8fab455896335cad48158361c770 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/2073825850171420b3c5a4968c72933c2f3f7270 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472/WF_Config.o ../WF_Config.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/LCD_ST7032.o: ../LCD_ST7032.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/a0a5294eae4eef8adb3e23ba5e44daa425d2aa4c .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" -o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ../LCD_ST7032.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/Storage.o: ../Storage.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/b0b7835f645da75f11a9805e1135f02fe9febacd .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Storage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Storage.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/Storage.o.d" -o ${OBJECTDIR}/_ext/1472/Storage.o ../Storage.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/MPFSImg2.o: ../MPFSImg2.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/ca39f5039c5843cf2a96dc6f0d7c164b420e2e13 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ../MPFSImg2.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/SelfTestMode.o: ../SelfTestMode.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/bdae1efb5e21f279f55552e620d2669b9b10ae1 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/SelfTestMode.o.d" -o ${OBJECTDIR}/_ext/1472/SelfTestMode.o ../SelfTestMode.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/87739369ec8456cc1032618555c01fa90a1fbe48 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/MainDemoTest.c.o: ../MainDemoTest.c.c  .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/812afb55765a8614f8667e698bbebf59dbf479e2 .generated_files/flags/XC32_EVAL_BOARD_PROTOCOL_MIWI/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DPROTOCOL_MIWI -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -I"../../../../TCPIP/WiFi EZConfig" -I"D:/microchip_solutions_v2013-06-15/Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemoTest.c.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemoTest.c.o ../MainDemoTest.c.c    -DXPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI=$(CND_CONF)    $(COMPARISON_BUILD)    
	
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
