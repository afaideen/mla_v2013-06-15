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
ifeq "$(wildcard nbproject/Makefile-local-Eight_bit_Wireless_Development_Kit_TEST.mk)" "nbproject/Makefile-local-Eight_bit_Wireless_Development_Kit_TEST.mk"
include nbproject/Makefile-local-Eight_bit_Wireless_Development_Kit_TEST.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Eight_bit_Wireless_Development_Kit_TEST
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
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
SOURCEFILES_QUOTED_IF_SPACED=../HardwareProfile.c ../DemoOutput.c main_test.c ../../../../../Microchip/Common/TimeDelay.c ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../../Microchip/WirelessProtocols/Console.c ../../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../../Microchip/WirelessProtocols/LCDBlocking.c ../../../../../Microchip/WirelessProtocols/MSPI.c ../../../../../Microchip/WirelessProtocols/NVM.c ../../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../../../../../Microchip/Transceivers/crc.c ../../../../../Microchip/Transceivers/security.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/main_test.o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ${OBJECTDIR}/_ext/1688839406/MiWi.o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ${OBJECTDIR}/_ext/84067474/P2P.o ${OBJECTDIR}/_ext/1994828495/Console.o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ${OBJECTDIR}/_ext/1994828495/MSPI.o ${OBJECTDIR}/_ext/1994828495/NVM.o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ${OBJECTDIR}/_ext/702228253/crc.o ${OBJECTDIR}/_ext/702228253/security.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o.d ${OBJECTDIR}/_ext/1472/DemoOutput.o.d ${OBJECTDIR}/main_test.o.d ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d ${OBJECTDIR}/_ext/1688839406/MiWi.o.d ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d ${OBJECTDIR}/_ext/84067474/P2P.o.d ${OBJECTDIR}/_ext/1994828495/Console.o.d ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d ${OBJECTDIR}/_ext/1994828495/MSPI.o.d ${OBJECTDIR}/_ext/1994828495/NVM.o.d ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d ${OBJECTDIR}/_ext/702228253/crc.o.d ${OBJECTDIR}/_ext/702228253/security.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/main_test.o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ${OBJECTDIR}/_ext/1688839406/MiWi.o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ${OBJECTDIR}/_ext/84067474/P2P.o ${OBJECTDIR}/_ext/1994828495/Console.o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ${OBJECTDIR}/_ext/1994828495/MSPI.o ${OBJECTDIR}/_ext/1994828495/NVM.o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ${OBJECTDIR}/_ext/702228253/crc.o ${OBJECTDIR}/_ext/702228253/security.o

# Source Files
SOURCEFILES=../HardwareProfile.c ../DemoOutput.c main_test.c ../../../../../Microchip/Common/TimeDelay.c ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../../Microchip/WirelessProtocols/Console.c ../../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../../Microchip/WirelessProtocols/LCDBlocking.c ../../../../../Microchip/WirelessProtocols/MSPI.c ../../../../../Microchip/WirelessProtocols/NVM.c ../../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../../../../../Microchip/Transceivers/crc.c ../../../../../Microchip/Transceivers/security.c


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
	${MAKE}  -f nbproject/Makefile-Eight_bit_Wireless_Development_Kit_TEST.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F46J50
MP_PROCESSOR_OPTION_LD=18f46j50
MP_LINKER_DEBUG_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/HardwareProfile.o   ../HardwareProfile.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/DemoOutput.o   ../DemoOutput.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/main_test.o: main_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main_test.o.d 
	@${RM} ${OBJECTDIR}/main_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/main_test.o   main_test.c 
	@${DEP_GEN} -d ${OBJECTDIR}/main_test.o 
	@${FIXDEPS} "${OBJECTDIR}/main_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/257748679" 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/257748679/TimeDelay.o   ../../../../../Microchip/Common/TimeDelay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/257748679/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688839406" 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1688839406/MiWi.o   ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1688839406/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688839406/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/967918303" 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/967918303/MiWiPRO.o   ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/967918303/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/84067474" 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/84067474/P2P.o   ../../../../../Microchip/WirelessProtocols/P2P/P2P.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/84067474/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/84067474/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/Console.o   ../../../../../Microchip/WirelessProtocols/Console.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/EEPROM.o   ../../../../../Microchip/WirelessProtocols/EEPROM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/EEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o   ../../../../../Microchip/WirelessProtocols/LCDBlocking.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/MSPI.o   ../../../../../Microchip/WirelessProtocols/MSPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/NVM.o   ../../../../../Microchip/WirelessProtocols/NVM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/SymbolTime.o   ../../../../../Microchip/WirelessProtocols/SymbolTime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2087253717" 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2087253717/MRF24J40.o   ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2087253717/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/486793731" 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/486793731/MRF49XA.o   ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/486793731/MRF49XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/486674567" 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/486674567/MRF89XA.o   ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/486674567/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/702228253/crc.o   ../../../../../Microchip/Transceivers/crc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/702228253/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/702228253/security.o   ../../../../../Microchip/Transceivers/security.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/702228253/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/HardwareProfile.o   ../HardwareProfile.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/DemoOutput.o   ../DemoOutput.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/main_test.o: main_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main_test.o.d 
	@${RM} ${OBJECTDIR}/main_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/main_test.o   main_test.c 
	@${DEP_GEN} -d ${OBJECTDIR}/main_test.o 
	@${FIXDEPS} "${OBJECTDIR}/main_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/257748679" 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/257748679/TimeDelay.o   ../../../../../Microchip/Common/TimeDelay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/257748679/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688839406" 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1688839406/MiWi.o   ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1688839406/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688839406/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/967918303" 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/967918303/MiWiPRO.o   ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/967918303/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/84067474" 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/84067474/P2P.o   ../../../../../Microchip/WirelessProtocols/P2P/P2P.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/84067474/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/84067474/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/Console.o   ../../../../../Microchip/WirelessProtocols/Console.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/EEPROM.o   ../../../../../Microchip/WirelessProtocols/EEPROM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/EEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o   ../../../../../Microchip/WirelessProtocols/LCDBlocking.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/MSPI.o   ../../../../../Microchip/WirelessProtocols/MSPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/NVM.o   ../../../../../Microchip/WirelessProtocols/NVM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1994828495/SymbolTime.o   ../../../../../Microchip/WirelessProtocols/SymbolTime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1994828495/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2087253717" 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2087253717/MRF24J40.o   ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2087253717/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/486793731" 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/486793731/MRF49XA.o   ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/486793731/MRF49XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/486674567" 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/486674567/MRF89XA.o   ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/486674567/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/702228253/crc.o   ../../../../../Microchip/Transceivers/crc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/702228253/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DEIGHT_BIT_WIRELESS_BOARD -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/702228253/security.o   ../../../../../Microchip/Transceivers/security.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/702228253/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" -u_EXTENDEDMODE -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_SIMULATOR=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" -u_EXTENDEDMODE -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Eight_bit_Wireless_Development_Kit_TEST
	${RM} -r dist/Eight_bit_Wireless_Development_Kit_TEST

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
