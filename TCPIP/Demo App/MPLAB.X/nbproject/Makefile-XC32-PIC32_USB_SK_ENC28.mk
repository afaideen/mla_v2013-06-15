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
ifeq "$(wildcard nbproject/Makefile-local-XC32-PIC32_USB_SK_ENC28.mk)" "nbproject/Makefile-local-XC32-PIC32_USB_SK_ENC28.mk"
include nbproject/Makefile-local-XC32-PIC32_USB_SK_ENC28.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=XC32-PIC32_USB_SK_ENC28
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../BerkeleyTCPClientDemo.c ../BerkeleyTCPServerDemo.c ../BerkeleyUDPClientDemo.c ../GenericTCPClient.c ../GenericTCPServer.c ../PingDemo.c ../SMTPDemo.c ../UARTConfig.c "../../../Microchip/TCPIP Stack/ARCFOUR.c" "../../../Microchip/TCPIP Stack/ARP.c" "../../../Microchip/TCPIP Stack/Announce.c" "../../../Microchip/TCPIP Stack/AutoIP.c" "../../../Microchip/TCPIP Stack/BerkeleyAPI.c" "../../../Microchip/TCPIP Stack/BigInt.c" "../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S" "../../../Microchip/TCPIP Stack/DHCP.c" "../../../Microchip/TCPIP Stack/DHCPs.c" "../../../Microchip/TCPIP Stack/DNS.c" "../../../Microchip/TCPIP Stack/DNSs.c" "../../../Microchip/TCPIP Stack/Delay.c" "../../../Microchip/TCPIP Stack/DynDNS.c" "../../../Microchip/TCPIP Stack/ENC28J60.c" "../../../Microchip/TCPIP Stack/ENCX24J600.c" "../../../Microchip/TCPIP Stack/FTP.c" "../../../Microchip/TCPIP Stack/FileSystem.c" "../../../Microchip/TCPIP Stack/HTTP2.c" "../../../Microchip/TCPIP Stack/Hashes.c" "../../../Microchip/TCPIP Stack/Helpers.c" "../../../Microchip/TCPIP Stack/ICMP.c" "../../../Microchip/TCPIP Stack/IP.c" "../../../Microchip/TCPIP Stack/LCDBlocking.c" "../../../Microchip/TCPIP Stack/MPFS2.c" ../MPFSImg2.c "../../../Microchip/TCPIP Stack/NBNS.c" "../../../Microchip/TCPIP Stack/RSA.c" "../../../Microchip/TCPIP Stack/Random.c" "../../../Microchip/TCPIP Stack/Reboot.c" "../../../Microchip/TCPIP Stack/SMTP.c" "../../../Microchip/TCPIP Stack/SNMP.c" "../../../Microchip/TCPIP Stack/SNMPv3.c" "../../../Microchip/TCPIP Stack/SNMPv3USM.c" "../../../Microchip/TCPIP Stack/SNTP.c" "../../../Microchip/TCPIP Stack/SPIEEPROM.c" "../../../Microchip/TCPIP Stack/SPIFlash.c" "../../../Microchip/TCPIP Stack/SPIRAM.c" "../../../Microchip/TCPIP Stack/SSL.c" "../../../Microchip/TCPIP Stack/StackTsk.c" "../../../Microchip/TCPIP Stack/TCP.c" "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c" "../../../Microchip/TCPIP Stack/TFTPc.c" "../../../Microchip/TCPIP Stack/Telnet.c" "../../../Microchip/TCPIP Stack/Tick.c" "../../../Microchip/TCPIP Stack/UART.c" "../../../Microchip/TCPIP Stack/UART2TCPBridge.c" "../../../Microchip/TCPIP Stack/UDP.c" "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c" "../../../Microchip/TCPIP Stack/ZeroconfHelper.c" "../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c" "../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c" "../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c" ../CustomHTTPApp.c ../CustomSNMPApp.c ../CustomSSLCert.c ../MainDemo.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/BigInt.o ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/FileSystem.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1954962658/RSA.o ${OBJECTDIR}/_ext/1954962658/Random.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/SNMPv3.o ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/1954962658/SSL.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ${OBJECTDIR}/_ext/1472/MainDemo.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d ${OBJECTDIR}/_ext/1472/PingDemo.o.d ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d ${OBJECTDIR}/_ext/1472/UARTConfig.o.d ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d ${OBJECTDIR}/_ext/1954962658/ARP.o.d ${OBJECTDIR}/_ext/1954962658/Announce.o.d ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d ${OBJECTDIR}/_ext/1954962658/BigInt.o.d ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d ${OBJECTDIR}/_ext/1954962658/DHCP.o.d ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d ${OBJECTDIR}/_ext/1954962658/DNS.o.d ${OBJECTDIR}/_ext/1954962658/DNSs.o.d ${OBJECTDIR}/_ext/1954962658/Delay.o.d ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d ${OBJECTDIR}/_ext/1954962658/FTP.o.d ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d ${OBJECTDIR}/_ext/1954962658/Hashes.o.d ${OBJECTDIR}/_ext/1954962658/Helpers.o.d ${OBJECTDIR}/_ext/1954962658/ICMP.o.d ${OBJECTDIR}/_ext/1954962658/IP.o.d ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d ${OBJECTDIR}/_ext/1954962658/NBNS.o.d ${OBJECTDIR}/_ext/1954962658/RSA.o.d ${OBJECTDIR}/_ext/1954962658/Random.o.d ${OBJECTDIR}/_ext/1954962658/Reboot.o.d ${OBJECTDIR}/_ext/1954962658/SMTP.o.d ${OBJECTDIR}/_ext/1954962658/SNMP.o.d ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d ${OBJECTDIR}/_ext/1954962658/SNTP.o.d ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d ${OBJECTDIR}/_ext/1954962658/SSL.o.d ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d ${OBJECTDIR}/_ext/1954962658/TCP.o.d ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d ${OBJECTDIR}/_ext/1954962658/Telnet.o.d ${OBJECTDIR}/_ext/1954962658/Tick.o.d ${OBJECTDIR}/_ext/1954962658/UART.o.d ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/1954962658/UDP.o.d ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o.d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d ${OBJECTDIR}/_ext/1472/MainDemo.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/BigInt.o ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/FileSystem.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1954962658/RSA.o ${OBJECTDIR}/_ext/1954962658/Random.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/SNMPv3.o ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/1954962658/SSL.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ${OBJECTDIR}/_ext/1472/MainDemo.o

# Source Files
SOURCEFILES=../BerkeleyTCPClientDemo.c ../BerkeleyTCPServerDemo.c ../BerkeleyUDPClientDemo.c ../GenericTCPClient.c ../GenericTCPServer.c ../PingDemo.c ../SMTPDemo.c ../UARTConfig.c ../../../Microchip/TCPIP Stack/ARCFOUR.c ../../../Microchip/TCPIP Stack/ARP.c ../../../Microchip/TCPIP Stack/Announce.c ../../../Microchip/TCPIP Stack/AutoIP.c ../../../Microchip/TCPIP Stack/BerkeleyAPI.c ../../../Microchip/TCPIP Stack/BigInt.c ../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S ../../../Microchip/TCPIP Stack/DHCP.c ../../../Microchip/TCPIP Stack/DHCPs.c ../../../Microchip/TCPIP Stack/DNS.c ../../../Microchip/TCPIP Stack/DNSs.c ../../../Microchip/TCPIP Stack/Delay.c ../../../Microchip/TCPIP Stack/DynDNS.c ../../../Microchip/TCPIP Stack/ENC28J60.c ../../../Microchip/TCPIP Stack/ENCX24J600.c ../../../Microchip/TCPIP Stack/FTP.c ../../../Microchip/TCPIP Stack/FileSystem.c ../../../Microchip/TCPIP Stack/HTTP2.c ../../../Microchip/TCPIP Stack/Hashes.c ../../../Microchip/TCPIP Stack/Helpers.c ../../../Microchip/TCPIP Stack/ICMP.c ../../../Microchip/TCPIP Stack/IP.c ../../../Microchip/TCPIP Stack/LCDBlocking.c ../../../Microchip/TCPIP Stack/MPFS2.c ../MPFSImg2.c ../../../Microchip/TCPIP Stack/NBNS.c ../../../Microchip/TCPIP Stack/RSA.c ../../../Microchip/TCPIP Stack/Random.c ../../../Microchip/TCPIP Stack/Reboot.c ../../../Microchip/TCPIP Stack/SMTP.c ../../../Microchip/TCPIP Stack/SNMP.c ../../../Microchip/TCPIP Stack/SNMPv3.c ../../../Microchip/TCPIP Stack/SNMPv3USM.c ../../../Microchip/TCPIP Stack/SNTP.c ../../../Microchip/TCPIP Stack/SPIEEPROM.c ../../../Microchip/TCPIP Stack/SPIFlash.c ../../../Microchip/TCPIP Stack/SPIRAM.c ../../../Microchip/TCPIP Stack/SSL.c ../../../Microchip/TCPIP Stack/StackTsk.c ../../../Microchip/TCPIP Stack/TCP.c ../../../Microchip/TCPIP Stack/TCPPerformanceTest.c ../../../Microchip/TCPIP Stack/TFTPc.c ../../../Microchip/TCPIP Stack/Telnet.c ../../../Microchip/TCPIP Stack/Tick.c ../../../Microchip/TCPIP Stack/UART.c ../../../Microchip/TCPIP Stack/UART2TCPBridge.c ../../../Microchip/TCPIP Stack/UDP.c ../../../Microchip/TCPIP Stack/UDPPerformanceTest.c ../../../Microchip/TCPIP Stack/ZeroconfHelper.c ../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c ../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c ../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c ../CustomHTTPApp.c ../CustomSNMPApp.c ../CustomSSLCert.c ../MainDemo.c



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
	${MAKE}  -f nbproject/Makefile-XC32-PIC32_USB_SK_ENC28.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o: ../../../Microchip/TCPIP\ Stack/BigInt_helper_PIC32.S  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/686a3795e2192a7484ab348a1fc41223f1b2db92 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.ok ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -MMD -MF "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d"  -o ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o "../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S"  -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I".." 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d" "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o: ../../../Microchip/TCPIP\ Stack/BigInt_helper_PIC32.S  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/d36a8fe52a32a9230b6e8345f47574114a1cdacf .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.ok ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -MMD -MF "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d"  -o ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o "../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S"  -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.asm.d",--gdwarf-2,-I".." 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d" "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/7d528cac3474c81b6732426a87b54f3952b4eac3 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ../BerkeleyTCPClientDemo.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/55fae702bed29613916d2f70dde3df076dc96c5d .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/407eec7d31e37ff9db302f95351931a71bd74866 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ../BerkeleyUDPClientDemo.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/6869f1b9f6795ed51a5edda2859902eed36fb894 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/38327a1275e8ea3db3b42910076c0c83be7c652b .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ../GenericTCPServer.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/3b3473ee586cb05639102dc8153191a08f7ec846 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/PingDemo.o.d" -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/8d597f8af752f00f51f86721337d82b52e0c847 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/SMTPDemo.o.d" -o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ../SMTPDemo.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/b5cefdf7f6047f45c49b37af031b5ca771f30e07 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ARCFOUR.o: ../../../Microchip/TCPIP\ Stack/ARCFOUR.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/adf75d4b37adc1348a2e5ac7bb9081336cf58d66 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o "../../../Microchip/TCPIP Stack/ARCFOUR.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/8956e6c753df8d0150aba076d909ae89ebc03964 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARP.o "../../../Microchip/TCPIP Stack/ARP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a9a86e622e595f022260f283331a74b30a775cc3 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Announce.o.d" -o ${OBJECTDIR}/_ext/1954962658/Announce.o "../../../Microchip/TCPIP Stack/Announce.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/7ca67233683aefc5af8cfea149d214562cff4c12 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1954962658/AutoIP.o "../../../Microchip/TCPIP Stack/AutoIP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/fe899dff05261ddfbe23f771cc9d7b230e7d89c3 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o "../../../Microchip/TCPIP Stack/BerkeleyAPI.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/BigInt.o: ../../../Microchip/TCPIP\ Stack/BigInt.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/920d0d9ae777edc9add6e4d67575ea1a51cfc44a .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/BigInt.o.d" -o ${OBJECTDIR}/_ext/1954962658/BigInt.o "../../../Microchip/TCPIP Stack/BigInt.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/3704afbac86efe98de80d67204dc85bbd5277b21 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCP.o "../../../Microchip/TCPIP Stack/DHCP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/7a12cdfdd17847a074dfe92c1b626897961c3a3f .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCPs.o "../../../Microchip/TCPIP Stack/DHCPs.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/441ed096dfaa878cad9639b7c5d12686f753335a .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNS.o "../../../Microchip/TCPIP Stack/DNS.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/c5464d2729f34901c6084825ef1c0a97ead032fd .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNSs.o "../../../Microchip/TCPIP Stack/DNSs.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/436291e34f2da4d24dbe9399580706d61ea753a4 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Delay.o.d" -o ${OBJECTDIR}/_ext/1954962658/Delay.o "../../../Microchip/TCPIP Stack/Delay.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/6b77c1118e499b8380c69bd3e7c382de7a153dfa .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DynDNS.o "../../../Microchip/TCPIP Stack/DynDNS.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/edb2c7ba17755f50c510370b8a585ba74cfeccd0 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o "../../../Microchip/TCPIP Stack/ENC28J60.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/4b287ee643500168a3250d5e8d9c7f0d4e062020 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o "../../../Microchip/TCPIP Stack/ENCX24J600.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/fb58599fea7a1ad71a506e939a9835ebd29ff2c5 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/FTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/FTP.o "../../../Microchip/TCPIP Stack/FTP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/FileSystem.o: ../../../Microchip/TCPIP\ Stack/FileSystem.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/1b28b837cbccad7bcb8c94dbc3e4f42343c02fcd .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/FileSystem.o.d" -o ${OBJECTDIR}/_ext/1954962658/FileSystem.o "../../../Microchip/TCPIP Stack/FileSystem.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/f177f8d04d5213043194ec7d1c216bb4deef7b28 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1954962658/HTTP2.o "../../../Microchip/TCPIP Stack/HTTP2.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/d9f285e0097f7e25c23935c0375033ade623e10b .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" -o ${OBJECTDIR}/_ext/1954962658/Hashes.o "../../../Microchip/TCPIP Stack/Hashes.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/9dd7176ffcc1e758ee9bf86cf211ee6e1fc73ad3 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" -o ${OBJECTDIR}/_ext/1954962658/Helpers.o "../../../Microchip/TCPIP Stack/Helpers.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/79c93af99e5847689b9a20d89afb32e07987bee3 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ICMP.o "../../../Microchip/TCPIP Stack/ICMP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/ba723a35472672bec5e65afcd776051b86752edc .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/IP.o.d" -o ${OBJECTDIR}/_ext/1954962658/IP.o "../../../Microchip/TCPIP Stack/IP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/83303bdae39ad7b33ea4abe7f95ea5aa40e86bd1 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o "../../../Microchip/TCPIP Stack/LCDBlocking.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/279dca9bddc967b0d905172204283bc707c64371 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1954962658/MPFS2.o "../../../Microchip/TCPIP Stack/MPFS2.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/MPFSImg2.o: ../MPFSImg2.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/4d96f2532a7132f072a0478a6387c30b041b91fb .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ../MPFSImg2.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/149042205aac13070f512237162cc987e869eb65 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/NBNS.o "../../../Microchip/TCPIP Stack/NBNS.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/RSA.o: ../../../Microchip/TCPIP\ Stack/RSA.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/60d2263957441b88e0dd098d80d1899ce59e6303 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/RSA.o.d" -o ${OBJECTDIR}/_ext/1954962658/RSA.o "../../../Microchip/TCPIP Stack/RSA.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Random.o: ../../../Microchip/TCPIP\ Stack/Random.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/6c0defd4fdae246e3d6fc0c6dbcaa6d35a399078 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Random.o.d" -o ${OBJECTDIR}/_ext/1954962658/Random.o "../../../Microchip/TCPIP Stack/Random.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/f473ab586d813c4fefb277afc99902e2a7175a75 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" -o ${OBJECTDIR}/_ext/1954962658/Reboot.o "../../../Microchip/TCPIP Stack/Reboot.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/d06bb5b28426a79ca4274b08907985afcae25afb .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SMTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SMTP.o "../../../Microchip/TCPIP Stack/SMTP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/cef9ab595e0bd2ff8e230fa4df9beda412d6bf04 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMP.o "../../../Microchip/TCPIP Stack/SNMP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SNMPv3.o: ../../../Microchip/TCPIP\ Stack/SNMPv3.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/4deb3d5f7f54da522048a7d02213fa5c267b8955 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMPv3.o "../../../Microchip/TCPIP Stack/SNMPv3.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o: ../../../Microchip/TCPIP\ Stack/SNMPv3USM.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/d58fa41b0e5c6997bc93f42b11872b706ee8b33e .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o "../../../Microchip/TCPIP Stack/SNMPv3USM.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/2d10abed2d1378629b1defea756b13414880e96b .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNTP.o "../../../Microchip/TCPIP Stack/SNTP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/4e3c76e005a00ad80ea631ebf1d5f8ed3a87d805 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o "../../../Microchip/TCPIP Stack/SPIEEPROM.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/64f3fa398c020f306463f56d23f92e086dd6f16e .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o "../../../Microchip/TCPIP Stack/SPIFlash.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/bed0d710d6657fcc71e9ccd6d1b3b03c2fe1265b .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o "../../../Microchip/TCPIP Stack/SPIRAM.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SSL.o: ../../../Microchip/TCPIP\ Stack/SSL.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/bee5d8b4c99c0fbe3779c421f0fce022f5d91c4f .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SSL.o.d" -o ${OBJECTDIR}/_ext/1954962658/SSL.o "../../../Microchip/TCPIP Stack/SSL.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/245fab5ade5f85f61306decb7f7c9a1a520a3ed1 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1954962658/StackTsk.o "../../../Microchip/TCPIP Stack/StackTsk.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/b96b73c614245f08dad3fd8c521db74b6a82c .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCP.o "../../../Microchip/TCPIP Stack/TCP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/90b12f89256e4afaccb33baa10468add9e0ea67f .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/e45aaad18d7989cd8d80a6f3a046e8a843f61d8b .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1954962658/TFTPc.o "../../../Microchip/TCPIP Stack/TFTPc.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/fa519559d9239189d7976a4f8fdbc35a62b64ee0 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" -o ${OBJECTDIR}/_ext/1954962658/Telnet.o "../../../Microchip/TCPIP Stack/Telnet.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/553869ca14f6e01ae57437c99621774ef832130d .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Tick.o.d" -o ${OBJECTDIR}/_ext/1954962658/Tick.o "../../../Microchip/TCPIP Stack/Tick.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/54dab041a29e56531fdc1b6d4f4c56837d2be2d .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART.o "../../../Microchip/TCPIP Stack/UART.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/e72967f00a7966ea56319013c6e8e4ba8a874f36 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o "../../../Microchip/TCPIP Stack/UART2TCPBridge.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/d839d95f33b9fdf973ee46425fbbbbc9537854df .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDP.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDP.o "../../../Microchip/TCPIP Stack/UDP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/1e4fce2af3bf4ab94969c782925d31a2051c6b34 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/fdd0a7a9c82ea5904620048639312113bc21baa9 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o "../../../Microchip/TCPIP Stack/ZeroconfHelper.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/3081f816b967bca41a786f3f016e0af01b425280 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o "../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/f89a728d6344a2fabb4b99b104cc93946aba60ac .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o "../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/243675038/WFDebugStrings.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDebugStrings.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/f349bed30fee353ad8dbe3941d7a239f2a84f75f .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/243675038" 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o "../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a3cc132053c786e38db2cf908a5d2bc36c37551 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/b9aa33d39d9a5ea791472faa2d2348f42929c398 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ../CustomSNMPApp.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/CustomSSLCert.o: ../CustomSSLCert.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/eb3408eb5ffcc1c710634e826a91ba054b004395 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ../CustomSSLCert.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/c40d058b152aaea270094337d4c8f4c07024b04f .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/3ad9ea7a8b633f9c027d2c8e7084df3fb1db67e2 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ../BerkeleyTCPClientDemo.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/b72fe4dbb2696cfd6e97a66fe2c73a336daa9a6c .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/f8e5e3e81a77efd5ca88c1d3ba33c2da8a69243 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ../BerkeleyUDPClientDemo.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/b4982722b5cc519ce45710b0ace6b178ca5c364d .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/72ea6c504cea2378b71229e57ee913fe4377d5ef .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ../GenericTCPServer.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/2084da9571f0fadeef72bcbcfc9148ccd7e07661 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/PingDemo.o.d" -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/dcd7376ddadd03365106e7f7f060bd5a96630cf0 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/SMTPDemo.o.d" -o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ../SMTPDemo.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/d160a3b1bfff73f112c0923ac5e2e1bf1b414282 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ARCFOUR.o: ../../../Microchip/TCPIP\ Stack/ARCFOUR.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/1e9ecac7dd2d5cdb501047ddc9ea919d64426ee5 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o "../../../Microchip/TCPIP Stack/ARCFOUR.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/2374eedaf34ccd1e68153a827c70314d95a3d28c .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARP.o "../../../Microchip/TCPIP Stack/ARP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/28f87d02f0d7c623110be7bcb8d016a3a6611e05 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Announce.o.d" -o ${OBJECTDIR}/_ext/1954962658/Announce.o "../../../Microchip/TCPIP Stack/Announce.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/18b25139c716c7ec01f5ffdb56dd3e0aeae5cc63 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1954962658/AutoIP.o "../../../Microchip/TCPIP Stack/AutoIP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/b1c558bce922fdecb7d7f025f2402a22c3b925f6 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o "../../../Microchip/TCPIP Stack/BerkeleyAPI.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/BigInt.o: ../../../Microchip/TCPIP\ Stack/BigInt.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/4589273e294c966a7319dd5974e41bcf3e27b4df .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/BigInt.o.d" -o ${OBJECTDIR}/_ext/1954962658/BigInt.o "../../../Microchip/TCPIP Stack/BigInt.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/368f43ee79ffa647659c979f333706ed10d14dd9 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCP.o "../../../Microchip/TCPIP Stack/DHCP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/3724fbb5c6463a7261801744513a132fbe748e3d .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCPs.o "../../../Microchip/TCPIP Stack/DHCPs.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/b043d507669ee6fe98c2471eb16cbcac6b06f7f5 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNS.o "../../../Microchip/TCPIP Stack/DNS.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/da74b54971cd0b575371a373075736be6cb71d9 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNSs.o "../../../Microchip/TCPIP Stack/DNSs.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/831953105670db494b9fed56e82c2f0f90f741ee .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Delay.o.d" -o ${OBJECTDIR}/_ext/1954962658/Delay.o "../../../Microchip/TCPIP Stack/Delay.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/78a6d4f6678854aa89963887b1c697517bd34f16 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DynDNS.o "../../../Microchip/TCPIP Stack/DynDNS.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/8d5a155df91d321dc7253bc0463ac7b8aa5e8c1e .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o "../../../Microchip/TCPIP Stack/ENC28J60.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/9b53a6cd4975f8427c3aca143d6dcda3df58624c .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o "../../../Microchip/TCPIP Stack/ENCX24J600.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a0009859f96ba4dd190db962a2162295388e7402 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/FTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/FTP.o "../../../Microchip/TCPIP Stack/FTP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/FileSystem.o: ../../../Microchip/TCPIP\ Stack/FileSystem.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/d1822b1a6c67d827d6469690958d2185dba30478 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/FileSystem.o.d" -o ${OBJECTDIR}/_ext/1954962658/FileSystem.o "../../../Microchip/TCPIP Stack/FileSystem.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/aed7ee2a9843914c8678b2e371d61c543ec64167 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1954962658/HTTP2.o "../../../Microchip/TCPIP Stack/HTTP2.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/ee9211ca8500f88360cfeeccf5918226b3e95a83 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" -o ${OBJECTDIR}/_ext/1954962658/Hashes.o "../../../Microchip/TCPIP Stack/Hashes.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/aabf9c8b75b9b699c6ba10819f683727cf993b6b .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" -o ${OBJECTDIR}/_ext/1954962658/Helpers.o "../../../Microchip/TCPIP Stack/Helpers.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/51ad42696b5b653c3ee7ac1648508ec3d8c78731 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ICMP.o "../../../Microchip/TCPIP Stack/ICMP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/8630d607dc02aef9bda29f18bc5e7e15f9aff8aa .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/IP.o.d" -o ${OBJECTDIR}/_ext/1954962658/IP.o "../../../Microchip/TCPIP Stack/IP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/708fe9592836de421a9ab5ed564bf4fba7839d75 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o "../../../Microchip/TCPIP Stack/LCDBlocking.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/acf2467ef2b93960a6eca70f318343339020e8b2 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1954962658/MPFS2.o "../../../Microchip/TCPIP Stack/MPFS2.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/MPFSImg2.o: ../MPFSImg2.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/3f5f409aecf01b6271efc95c053a732aae77579 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ../MPFSImg2.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/86047174589d66cdd3e976a0fc7a834438a627c5 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/NBNS.o "../../../Microchip/TCPIP Stack/NBNS.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/RSA.o: ../../../Microchip/TCPIP\ Stack/RSA.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/3d2909671cf8bc95d96ea1d21b92fdc719063125 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/RSA.o.d" -o ${OBJECTDIR}/_ext/1954962658/RSA.o "../../../Microchip/TCPIP Stack/RSA.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Random.o: ../../../Microchip/TCPIP\ Stack/Random.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/1d4f408b5d2ea2759f3962d5b996a41f3489eae2 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Random.o.d" -o ${OBJECTDIR}/_ext/1954962658/Random.o "../../../Microchip/TCPIP Stack/Random.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/3a977a5f5346b674a3439fb87137b0219ad0c672 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" -o ${OBJECTDIR}/_ext/1954962658/Reboot.o "../../../Microchip/TCPIP Stack/Reboot.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/126c8c21bf0e18ed2a266eac1db08f82424e1c35 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SMTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SMTP.o "../../../Microchip/TCPIP Stack/SMTP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/5a9691fecdd66d7abb771a5f417cab415ff1715f .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMP.o "../../../Microchip/TCPIP Stack/SNMP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SNMPv3.o: ../../../Microchip/TCPIP\ Stack/SNMPv3.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/3f4df74318af2685a22393444b9af0b7822ab666 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMPv3.o "../../../Microchip/TCPIP Stack/SNMPv3.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o: ../../../Microchip/TCPIP\ Stack/SNMPv3USM.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/eddc5be69fd3dea2f0e1cad431b32de0e2faffe3 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o "../../../Microchip/TCPIP Stack/SNMPv3USM.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/6394cd20b1dbbf167a44b516ed042ef666c8c554 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNTP.o "../../../Microchip/TCPIP Stack/SNTP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/240340255db0d324713c09b944a5854c8079d09b .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o "../../../Microchip/TCPIP Stack/SPIEEPROM.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/766337d76b223556117a0d75fc892b7996eee39e .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o "../../../Microchip/TCPIP Stack/SPIFlash.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a9dde8290eebdab21767dca94c11d8edc483e690 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o "../../../Microchip/TCPIP Stack/SPIRAM.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/SSL.o: ../../../Microchip/TCPIP\ Stack/SSL.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/34d161136f08a672d34f1996ecb70023c4952b89 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SSL.o.d" -o ${OBJECTDIR}/_ext/1954962658/SSL.o "../../../Microchip/TCPIP Stack/SSL.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/561f8c839f9f2067c5976a240147780de943b8f1 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1954962658/StackTsk.o "../../../Microchip/TCPIP Stack/StackTsk.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/2d87b9ba5810f16b029202bd3b23ed64f7968e51 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCP.o "../../../Microchip/TCPIP Stack/TCP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/7bc15720804eb4ae71999bb2029e05b5a4cde1ce .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/67902eaf5ce56da0281fd8196f9fbaed2cf6b3c0 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1954962658/TFTPc.o "../../../Microchip/TCPIP Stack/TFTPc.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/5ac2c0116995df5bf276c514657e5d282e1af4f5 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" -o ${OBJECTDIR}/_ext/1954962658/Telnet.o "../../../Microchip/TCPIP Stack/Telnet.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/783e36d0598c4c9d99f9286f224fd074d136b97b .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Tick.o.d" -o ${OBJECTDIR}/_ext/1954962658/Tick.o "../../../Microchip/TCPIP Stack/Tick.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/7a98c4c37df65fc24aafade8ab4b77a6872e546f .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART.o "../../../Microchip/TCPIP Stack/UART.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/cf779e0100dd0a86dde0b433dee57bc4ddd125c7 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o "../../../Microchip/TCPIP Stack/UART2TCPBridge.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/e0ba1e1e8fa22e08ca4a13da752d916c08049c26 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDP.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDP.o "../../../Microchip/TCPIP Stack/UDP.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/1baa642cc91ca8cff832c74673adbd68bd51c653 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/105bdedddce6b52e9a54646736f54a842046a4a1 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o "../../../Microchip/TCPIP Stack/ZeroconfHelper.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/f241b41aac8e9d6eb021f1a1cdf69edd9e7e2a4a .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o "../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/800b04dada34924967e9cce25783347aae504c3b .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o "../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/243675038/WFDebugStrings.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDebugStrings.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/43d22bf604cdea6551160a7a56766b2be11852b9 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/243675038" 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o.d 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o "../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c"    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/63b379d7d7ce42df37d9fde18ea1ea5e78ee7327 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/adbde1e3fff4c83a42848a32e1147005b535f38c .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ../CustomSNMPApp.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/CustomSSLCert.o: ../CustomSSLCert.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/b4c697df3a14bbd3edbdaae691526b073245b569 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ../CustomSSLCert.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  .generated_files/flags/XC32-PIC32_USB_SK_ENC28/2c3af63e1721d2e3696432eb23eb569629980089 .generated_files/flags/XC32-PIC32_USB_SK_ENC28/a266d183c11ecfb3b84b34e5bc10b31d5d622870
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_USB_SK_ENC28 -D_SUPPRESS_PLIB_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c    -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=_min_heap_size=42000,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem,"-mperipheral-libs" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_XC32-PIC32_USB_SK_ENC28=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=42000,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem,"-mperipheral-libs" 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/XC32-PIC32_USB_SK_ENC28
	${RM} -r dist/XC32-PIC32_USB_SK_ENC28

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
