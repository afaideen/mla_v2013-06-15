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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/WDK_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/WDK_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../HardwareProfile.c ../Demo.c ../LcdDisplay.c ../SelfTestMode.c ../../../../Microchip/Common/TimeDelay.c ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../Microchip/WirelessProtocols/NVM.c ../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../Microchip/WirelessProtocols/MSPI.c ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../Microchip/WirelessProtocols/Console.c ../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../Microchip/Transceivers/security.c ../../../../Microchip/Transceivers/crc.c ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/Demo.o ${OBJECTDIR}/_ext/1472/LcdDisplay.o ${OBJECTDIR}/_ext/1472/SelfTestMode.o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ${OBJECTDIR}/_ext/1850237697/MiWi.o ${OBJECTDIR}/_ext/355958077/P2P.o ${OBJECTDIR}/_ext/546296802/NVM.o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ${OBJECTDIR}/_ext/546296802/MSPI.o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ${OBJECTDIR}/_ext/546296802/EEPROM.o ${OBJECTDIR}/_ext/546296802/Console.o ${OBJECTDIR}/_ext/1767688028/MRF24J40.o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ${OBJECTDIR}/_ext/594816914/security.o ${OBJECTDIR}/_ext/594816914/crc.o ${OBJECTDIR}/_ext/56838198/MRF89XA.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o.d ${OBJECTDIR}/_ext/1472/Demo.o.d ${OBJECTDIR}/_ext/1472/LcdDisplay.o.d ${OBJECTDIR}/_ext/1472/SelfTestMode.o.d ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d ${OBJECTDIR}/_ext/1850237697/MiWi.o.d ${OBJECTDIR}/_ext/355958077/P2P.o.d ${OBJECTDIR}/_ext/546296802/NVM.o.d ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d ${OBJECTDIR}/_ext/546296802/MSPI.o.d ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d ${OBJECTDIR}/_ext/546296802/EEPROM.o.d ${OBJECTDIR}/_ext/546296802/Console.o.d ${OBJECTDIR}/_ext/1767688028/MRF24J40.o.d ${OBJECTDIR}/_ext/56957362/MRF49XA.o.d ${OBJECTDIR}/_ext/594816914/security.o.d ${OBJECTDIR}/_ext/594816914/crc.o.d ${OBJECTDIR}/_ext/56838198/MRF89XA.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/Demo.o ${OBJECTDIR}/_ext/1472/LcdDisplay.o ${OBJECTDIR}/_ext/1472/SelfTestMode.o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ${OBJECTDIR}/_ext/1850237697/MiWi.o ${OBJECTDIR}/_ext/355958077/P2P.o ${OBJECTDIR}/_ext/546296802/NVM.o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ${OBJECTDIR}/_ext/546296802/MSPI.o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ${OBJECTDIR}/_ext/546296802/EEPROM.o ${OBJECTDIR}/_ext/546296802/Console.o ${OBJECTDIR}/_ext/1767688028/MRF24J40.o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ${OBJECTDIR}/_ext/594816914/security.o ${OBJECTDIR}/_ext/594816914/crc.o ${OBJECTDIR}/_ext/56838198/MRF89XA.o

# Source Files
SOURCEFILES=../HardwareProfile.c ../Demo.c ../LcdDisplay.c ../SelfTestMode.c ../../../../Microchip/Common/TimeDelay.c ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../Microchip/WirelessProtocols/NVM.c ../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../Microchip/WirelessProtocols/MSPI.c ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../Microchip/WirelessProtocols/Console.c ../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../Microchip/Transceivers/security.c ../../../../Microchip/Transceivers/crc.c ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/WDK_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/HardwareProfile.o   ../HardwareProfile.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/Demo.o: ../Demo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/Demo.o   ../Demo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/Demo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Demo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/LcdDisplay.o: ../LcdDisplay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LcdDisplay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LcdDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/LcdDisplay.o   ../LcdDisplay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/LcdDisplay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LcdDisplay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/SelfTestMode.o: ../SelfTestMode.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/SelfTestMode.o   ../SelfTestMode.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/SelfTestMode.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SelfTestMode.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2048740170" 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2048740170/TimeDelay.o   ../../../../Microchip/Common/TimeDelay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2048740170/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1850237697/MiWi.o: ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1850237697" 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1850237697/MiWi.o   ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1850237697/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1850237697/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/355958077/P2P.o: ../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/355958077" 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/355958077/P2P.o   ../../../../Microchip/WirelessProtocols/P2P/P2P.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/355958077/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/355958077/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/NVM.o: ../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/NVM.o   ../../../../Microchip/WirelessProtocols/NVM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/SymbolTime.o: ../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/SymbolTime.o   ../../../../Microchip/WirelessProtocols/SymbolTime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/MSPI.o: ../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/MSPI.o   ../../../../Microchip/WirelessProtocols/MSPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179125038/MiWiPRO.o: ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1179125038" 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o   ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/EEPROM.o: ../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/EEPROM.o   ../../../../Microchip/WirelessProtocols/EEPROM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/EEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/EEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/Console.o: ../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/Console.o   ../../../../Microchip/WirelessProtocols/Console.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1767688028/MRF24J40.o: ../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1767688028" 
	@${RM} ${OBJECTDIR}/_ext/1767688028/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1767688028/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1767688028/MRF24J40.o   ../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1767688028/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1767688028/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/56957362/MRF49XA.o: ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/56957362" 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/56957362/MRF49XA.o   ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/56957362/MRF49XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/56957362/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/594816914/security.o: ../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/594816914/security.o   ../../../../Microchip/Transceivers/security.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/594816914/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/594816914/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/594816914/crc.o: ../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/594816914/crc.o   ../../../../Microchip/Transceivers/crc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/594816914/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/594816914/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/56838198/MRF89XA.o: ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/56838198" 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/56838198/MRF89XA.o   ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/56838198/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/56838198/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/HardwareProfile.o   ../HardwareProfile.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/Demo.o: ../Demo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/Demo.o   ../Demo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/Demo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Demo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/LcdDisplay.o: ../LcdDisplay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LcdDisplay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LcdDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/LcdDisplay.o   ../LcdDisplay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/LcdDisplay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LcdDisplay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/SelfTestMode.o: ../SelfTestMode.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/SelfTestMode.o   ../SelfTestMode.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/SelfTestMode.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SelfTestMode.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2048740170" 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2048740170/TimeDelay.o   ../../../../Microchip/Common/TimeDelay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2048740170/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1850237697/MiWi.o: ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1850237697" 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1850237697/MiWi.o   ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1850237697/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1850237697/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/355958077/P2P.o: ../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/355958077" 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/355958077/P2P.o   ../../../../Microchip/WirelessProtocols/P2P/P2P.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/355958077/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/355958077/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/NVM.o: ../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/NVM.o   ../../../../Microchip/WirelessProtocols/NVM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/SymbolTime.o: ../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/SymbolTime.o   ../../../../Microchip/WirelessProtocols/SymbolTime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/MSPI.o: ../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/MSPI.o   ../../../../Microchip/WirelessProtocols/MSPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179125038/MiWiPRO.o: ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1179125038" 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o   ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/EEPROM.o: ../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/EEPROM.o   ../../../../Microchip/WirelessProtocols/EEPROM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/EEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/EEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/Console.o: ../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/Console.o   ../../../../Microchip/WirelessProtocols/Console.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1767688028/MRF24J40.o: ../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1767688028" 
	@${RM} ${OBJECTDIR}/_ext/1767688028/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1767688028/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1767688028/MRF24J40.o   ../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1767688028/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1767688028/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/56957362/MRF49XA.o: ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/56957362" 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/56957362/MRF49XA.o   ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/56957362/MRF49XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/56957362/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/594816914/security.o: ../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/594816914/security.o   ../../../../Microchip/Transceivers/security.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/594816914/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/594816914/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/594816914/crc.o: ../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/594816914/crc.o   ../../../../Microchip/Transceivers/crc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/594816914/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/594816914/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/56838198/MRF89XA.o: ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/56838198" 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"C:/Program Files/Microchip/MCC18/h" -I"." -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/56838198/MRF89XA.o   ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/56838198/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/56838198/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/WDK_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"$(BINDIR_)$(TARGETBASE).map" -w -l"C:/MCC18/lib" -l"C:/Program Files/Microchip/MCC18/lib" -l"."  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_SIMULATOR=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/WDK_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/WDK_Demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"$(BINDIR_)$(TARGETBASE).map" -w -l"C:/MCC18/lib" -l"C:/Program Files/Microchip/MCC18/lib" -l"."  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/WDK_Demo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
