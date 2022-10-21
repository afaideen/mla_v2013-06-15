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
ifeq "$(wildcard nbproject/Makefile-local-Explorer_16_-_PIC32.mk)" "nbproject/Makefile-local-Explorer_16_-_PIC32.mk"
include nbproject/Makefile-local-Explorer_16_-_PIC32.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Explorer_16_-_PIC32
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
SOURCEFILES_QUOTED_IF_SPACED=../HardwareProfile.c ../DemoOutput.c ../main.c ../../../../../Microchip/Common/TimeDelay.c ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../../Microchip/WirelessProtocols/Console.c ../../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../../Microchip/WirelessProtocols/LCDBlocking.c ../../../../../Microchip/WirelessProtocols/MSPI.c ../../../../../Microchip/WirelessProtocols/NVM.c ../../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../../../../../Microchip/Transceivers/crc.c ../../../../../Microchip/Transceivers/security.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ${OBJECTDIR}/_ext/1688839406/MiWi.o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ${OBJECTDIR}/_ext/84067474/P2P.o ${OBJECTDIR}/_ext/1994828495/Console.o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ${OBJECTDIR}/_ext/1994828495/MSPI.o ${OBJECTDIR}/_ext/1994828495/NVM.o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ${OBJECTDIR}/_ext/702228253/crc.o ${OBJECTDIR}/_ext/702228253/security.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o.d ${OBJECTDIR}/_ext/1472/DemoOutput.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d ${OBJECTDIR}/_ext/1688839406/MiWi.o.d ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d ${OBJECTDIR}/_ext/84067474/P2P.o.d ${OBJECTDIR}/_ext/1994828495/Console.o.d ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d ${OBJECTDIR}/_ext/1994828495/MSPI.o.d ${OBJECTDIR}/_ext/1994828495/NVM.o.d ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d ${OBJECTDIR}/_ext/702228253/crc.o.d ${OBJECTDIR}/_ext/702228253/security.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ${OBJECTDIR}/_ext/1688839406/MiWi.o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ${OBJECTDIR}/_ext/84067474/P2P.o ${OBJECTDIR}/_ext/1994828495/Console.o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ${OBJECTDIR}/_ext/1994828495/MSPI.o ${OBJECTDIR}/_ext/1994828495/NVM.o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ${OBJECTDIR}/_ext/702228253/crc.o ${OBJECTDIR}/_ext/702228253/security.o

# Source Files
SOURCEFILES=../HardwareProfile.c ../DemoOutput.c ../main.c ../../../../../Microchip/Common/TimeDelay.c ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../../Microchip/WirelessProtocols/Console.c ../../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../../Microchip/WirelessProtocols/LCDBlocking.c ../../../../../Microchip/WirelessProtocols/MSPI.c ../../../../../Microchip/WirelessProtocols/NVM.c ../../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../../../../../Microchip/Transceivers/crc.c ../../../../../Microchip/Transceivers/security.c



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
	${MAKE}  -f nbproject/Makefile-Explorer_16_-_PIC32.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX360F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
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
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" -o ${OBJECTDIR}/_ext/1472/HardwareProfile.o ../HardwareProfile.c  
	
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" -o ${OBJECTDIR}/_ext/1472/DemoOutput.o ../DemoOutput.c  
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  
	
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/257748679" 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ../../../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1688839406" 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688839406/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1688839406/MiWi.o.d" -o ${OBJECTDIR}/_ext/1688839406/MiWi.o ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  
	
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/967918303" 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  
	
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/84067474" 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/84067474/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/84067474/P2P.o.d" -o ${OBJECTDIR}/_ext/84067474/P2P.o ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  
	
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/Console.o.d" -o ${OBJECTDIR}/_ext/1994828495/Console.o ../../../../../Microchip/WirelessProtocols/Console.c  
	
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d" -o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ../../../../../Microchip/WirelessProtocols/EEPROM.c  
	
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  
	
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/MSPI.o.d" -o ${OBJECTDIR}/_ext/1994828495/MSPI.o ../../../../../Microchip/WirelessProtocols/MSPI.c  
	
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/NVM.o.d" -o ${OBJECTDIR}/_ext/1994828495/NVM.o ../../../../../Microchip/WirelessProtocols/NVM.c  
	
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ../../../../../Microchip/WirelessProtocols/SymbolTime.c  
	
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2087253717" 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  
	
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/486793731" 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  
	
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/486674567" 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  
	
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/702228253/crc.o.d" -o ${OBJECTDIR}/_ext/702228253/crc.o ../../../../../Microchip/Transceivers/crc.c  
	
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/702228253/security.o.d" -o ${OBJECTDIR}/_ext/702228253/security.o ../../../../../Microchip/Transceivers/security.c  
	
else
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" -o ${OBJECTDIR}/_ext/1472/HardwareProfile.o ../HardwareProfile.c  
	
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" -o ${OBJECTDIR}/_ext/1472/DemoOutput.o ../DemoOutput.c  
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  
	
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/257748679" 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ../../../../../Microchip/Common/TimeDelay.c  
	
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1688839406" 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688839406/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1688839406/MiWi.o.d" -o ${OBJECTDIR}/_ext/1688839406/MiWi.o ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  
	
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/967918303" 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  
	
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/84067474" 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/84067474/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/84067474/P2P.o.d" -o ${OBJECTDIR}/_ext/84067474/P2P.o ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  
	
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/Console.o.d" -o ${OBJECTDIR}/_ext/1994828495/Console.o ../../../../../Microchip/WirelessProtocols/Console.c  
	
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d" -o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ../../../../../Microchip/WirelessProtocols/EEPROM.c  
	
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  
	
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/MSPI.o.d" -o ${OBJECTDIR}/_ext/1994828495/MSPI.o ../../../../../Microchip/WirelessProtocols/MSPI.c  
	
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/NVM.o.d" -o ${OBJECTDIR}/_ext/1994828495/NVM.o ../../../../../Microchip/WirelessProtocols/NVM.c  
	
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ../../../../../Microchip/WirelessProtocols/SymbolTime.c  
	
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2087253717" 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  
	
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/486793731" 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  
	
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/486674567" 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  
	
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/702228253/crc.o.d" -o ${OBJECTDIR}/_ext/702228253/crc.o ../../../../../Microchip/Transceivers/crc.c  
	
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/702228253/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mappio-debug -DEXPLORER16 -D_SUPPRESS_PLIB_WARNING -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Feature Demo/Node 2" -MMD -MF "${OBJECTDIR}/_ext/702228253/security.o.d" -o ${OBJECTDIR}/_ext/702228253/security.o ../../../../../Microchip/Transceivers/security.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}       -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" 
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}       -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Explorer_16_-_PIC32
	${RM} -r dist/Explorer_16_-_PIC32

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
