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
ifeq "$(wildcard nbproject/Makefile-local-Explorer_16_-_PIC24_or_dsPIC33.mk)" "nbproject/Makefile-local-Explorer_16_-_PIC24_or_dsPIC33.mk"
include nbproject/Makefile-local-Explorer_16_-_PIC24_or_dsPIC33.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Explorer_16_-_PIC24_or_dsPIC33
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MiWiLesson.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MiWiLesson.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../HardwareProfile.c ../DemoOutput.c ../main_pancoordinator.c ../../../../../Microchip/Common/TimeDelay.c ../Drivers/MRF24J40.c ../../../../../Microchip/WirelessProtocols/LCD_ST7032.c "../../../../../Microchip/TCPIP Stack/SPIEEPROM.c" ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../../Microchip/WirelessProtocols/Console.c ../../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../../Microchip/WirelessProtocols/LCDBlocking.c ../../../../../Microchip/WirelessProtocols/MSPI.c ../../../../../Microchip/WirelessProtocols/NVM.c ../../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../../Microchip/WirelessProtocols/MiWiHelper.c ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../../../../../Microchip/Transceivers/crc.c ../../../../../Microchip/Transceivers/security.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/1472/main_pancoordinator.o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ${OBJECTDIR}/_ext/1904510940/MRF24J40.o ${OBJECTDIR}/_ext/1994828495/LCD_ST7032.o ${OBJECTDIR}/_ext/136971646/SPIEEPROM.o ${OBJECTDIR}/_ext/1688839406/MiWi.o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ${OBJECTDIR}/_ext/84067474/P2P.o ${OBJECTDIR}/_ext/1994828495/Console.o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ${OBJECTDIR}/_ext/1994828495/MSPI.o ${OBJECTDIR}/_ext/1994828495/NVM.o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ${OBJECTDIR}/_ext/702228253/crc.o ${OBJECTDIR}/_ext/702228253/security.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o.d ${OBJECTDIR}/_ext/1472/DemoOutput.o.d ${OBJECTDIR}/_ext/1472/main_pancoordinator.o.d ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d ${OBJECTDIR}/_ext/1904510940/MRF24J40.o.d ${OBJECTDIR}/_ext/1994828495/LCD_ST7032.o.d ${OBJECTDIR}/_ext/136971646/SPIEEPROM.o.d ${OBJECTDIR}/_ext/1688839406/MiWi.o.d ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d ${OBJECTDIR}/_ext/84067474/P2P.o.d ${OBJECTDIR}/_ext/1994828495/Console.o.d ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d ${OBJECTDIR}/_ext/1994828495/MSPI.o.d ${OBJECTDIR}/_ext/1994828495/NVM.o.d ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o.d ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d ${OBJECTDIR}/_ext/702228253/crc.o.d ${OBJECTDIR}/_ext/702228253/security.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/1472/main_pancoordinator.o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ${OBJECTDIR}/_ext/1904510940/MRF24J40.o ${OBJECTDIR}/_ext/1994828495/LCD_ST7032.o ${OBJECTDIR}/_ext/136971646/SPIEEPROM.o ${OBJECTDIR}/_ext/1688839406/MiWi.o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ${OBJECTDIR}/_ext/84067474/P2P.o ${OBJECTDIR}/_ext/1994828495/Console.o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ${OBJECTDIR}/_ext/1994828495/MSPI.o ${OBJECTDIR}/_ext/1994828495/NVM.o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ${OBJECTDIR}/_ext/702228253/crc.o ${OBJECTDIR}/_ext/702228253/security.o

# Source Files
SOURCEFILES=../HardwareProfile.c ../DemoOutput.c ../main_pancoordinator.c ../../../../../Microchip/Common/TimeDelay.c ../Drivers/MRF24J40.c ../../../../../Microchip/WirelessProtocols/LCD_ST7032.c ../../../../../Microchip/TCPIP Stack/SPIEEPROM.c ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../../Microchip/WirelessProtocols/Console.c ../../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../../Microchip/WirelessProtocols/LCDBlocking.c ../../../../../Microchip/WirelessProtocols/MSPI.c ../../../../../Microchip/WirelessProtocols/NVM.c ../../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../../Microchip/WirelessProtocols/MiWiHelper.c ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../../../../../Microchip/Transceivers/crc.c ../../../../../Microchip/Transceivers/security.c



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
	${MAKE}  -f nbproject/Makefile-Explorer_16_-_PIC24_or_dsPIC33.mk dist/${CND_CONF}/${IMAGE_TYPE}/MiWiLesson.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA010
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA010.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../HardwareProfile.c  -o ${OBJECTDIR}/_ext/1472/HardwareProfile.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../DemoOutput.c  -o ${OBJECTDIR}/_ext/1472/DemoOutput.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/DemoOutput.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/main_pancoordinator.o: ../main_pancoordinator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_pancoordinator.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_pancoordinator.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main_pancoordinator.c  -o ${OBJECTDIR}/_ext/1472/main_pancoordinator.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/main_pancoordinator.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main_pancoordinator.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/257748679" 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/Common/TimeDelay.c  -o ${OBJECTDIR}/_ext/257748679/TimeDelay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1904510940/MRF24J40.o: ../Drivers/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1904510940" 
	@${RM} ${OBJECTDIR}/_ext/1904510940/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1904510940/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Drivers/MRF24J40.c  -o ${OBJECTDIR}/_ext/1904510940/MRF24J40.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1904510940/MRF24J40.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1904510940/MRF24J40.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/LCD_ST7032.o: ../../../../../Microchip/WirelessProtocols/LCD_ST7032.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCD_ST7032.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/LCD_ST7032.c  -o ${OBJECTDIR}/_ext/1994828495/LCD_ST7032.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/LCD_ST7032.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/LCD_ST7032.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/136971646/SPIEEPROM.o: ../../../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/136971646" 
	@${RM} ${OBJECTDIR}/_ext/136971646/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/136971646/SPIEEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../../../../Microchip/TCPIP Stack/SPIEEPROM.c"  -o ${OBJECTDIR}/_ext/136971646/SPIEEPROM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/136971646/SPIEEPROM.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/136971646/SPIEEPROM.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688839406" 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  -o ${OBJECTDIR}/_ext/1688839406/MiWi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1688839406/MiWi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688839406/MiWi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/967918303" 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  -o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/84067474" 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  -o ${OBJECTDIR}/_ext/84067474/P2P.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/84067474/P2P.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/84067474/P2P.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/Console.c  -o ${OBJECTDIR}/_ext/1994828495/Console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/Console.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/Console.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/EEPROM.c  -o ${OBJECTDIR}/_ext/1994828495/EEPROM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  -o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/MSPI.c  -o ${OBJECTDIR}/_ext/1994828495/MSPI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/MSPI.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/MSPI.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/NVM.c  -o ${OBJECTDIR}/_ext/1994828495/NVM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/NVM.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/NVM.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/SymbolTime.c  -o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/MiWiHelper.o: ../../../../../Microchip/WirelessProtocols/MiWiHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/MiWiHelper.c  -o ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/MiWiHelper.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/MiWiHelper.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2087253717" 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  -o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/486793731" 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  -o ${OBJECTDIR}/_ext/486793731/MRF49XA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/486674567" 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  -o ${OBJECTDIR}/_ext/486674567/MRF89XA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/Transceivers/crc.c  -o ${OBJECTDIR}/_ext/702228253/crc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702228253/crc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/crc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/Transceivers/security.c  -o ${OBJECTDIR}/_ext/702228253/security.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702228253/security.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/security.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../HardwareProfile.c  -o ${OBJECTDIR}/_ext/1472/HardwareProfile.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../DemoOutput.c  -o ${OBJECTDIR}/_ext/1472/DemoOutput.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/DemoOutput.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/main_pancoordinator.o: ../main_pancoordinator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_pancoordinator.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_pancoordinator.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main_pancoordinator.c  -o ${OBJECTDIR}/_ext/1472/main_pancoordinator.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/main_pancoordinator.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main_pancoordinator.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/257748679" 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/Common/TimeDelay.c  -o ${OBJECTDIR}/_ext/257748679/TimeDelay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1904510940/MRF24J40.o: ../Drivers/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1904510940" 
	@${RM} ${OBJECTDIR}/_ext/1904510940/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1904510940/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Drivers/MRF24J40.c  -o ${OBJECTDIR}/_ext/1904510940/MRF24J40.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1904510940/MRF24J40.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1904510940/MRF24J40.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/LCD_ST7032.o: ../../../../../Microchip/WirelessProtocols/LCD_ST7032.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCD_ST7032.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/LCD_ST7032.c  -o ${OBJECTDIR}/_ext/1994828495/LCD_ST7032.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/LCD_ST7032.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/LCD_ST7032.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/136971646/SPIEEPROM.o: ../../../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/136971646" 
	@${RM} ${OBJECTDIR}/_ext/136971646/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/136971646/SPIEEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../../../../Microchip/TCPIP Stack/SPIEEPROM.c"  -o ${OBJECTDIR}/_ext/136971646/SPIEEPROM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/136971646/SPIEEPROM.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/136971646/SPIEEPROM.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688839406" 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  -o ${OBJECTDIR}/_ext/1688839406/MiWi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1688839406/MiWi.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688839406/MiWi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/967918303" 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  -o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/84067474" 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  -o ${OBJECTDIR}/_ext/84067474/P2P.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/84067474/P2P.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/84067474/P2P.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/Console.c  -o ${OBJECTDIR}/_ext/1994828495/Console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/Console.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/Console.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/EEPROM.c  -o ${OBJECTDIR}/_ext/1994828495/EEPROM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  -o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/MSPI.c  -o ${OBJECTDIR}/_ext/1994828495/MSPI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/MSPI.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/MSPI.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/NVM.c  -o ${OBJECTDIR}/_ext/1994828495/NVM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/NVM.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/NVM.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/SymbolTime.c  -o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1994828495/MiWiHelper.o: ../../../../../Microchip/WirelessProtocols/MiWiHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/WirelessProtocols/MiWiHelper.c  -o ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1994828495/MiWiHelper.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/MiWiHelper.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2087253717" 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  -o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/486793731" 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  -o ${OBJECTDIR}/_ext/486793731/MRF49XA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/486674567" 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  -o ${OBJECTDIR}/_ext/486674567/MRF89XA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/Transceivers/crc.c  -o ${OBJECTDIR}/_ext/702228253/crc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702228253/crc.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/crc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../Microchip/Transceivers/security.c  -o ${OBJECTDIR}/_ext/702228253/security.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702228253/security.o.d"        -g -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/security.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MiWiLesson.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWiLesson.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,$(MP_LINKER_FILE_OPTION),--heap=256,--no-check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MiWiLesson.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWiLesson.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=coff -DXPRJ_Explorer_16_-_PIC24_or_dsPIC33=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=256,--no-check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MiWiLesson.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=coff  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Explorer_16_-_PIC24_or_dsPIC33
	${RM} -r dist/Explorer_16_-_PIC24_or_dsPIC33

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
