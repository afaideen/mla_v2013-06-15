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
ifeq "$(wildcard nbproject/Makefile-local-HAS_SLEEP_FUNC.mk)" "nbproject/Makefile-local-HAS_SLEEP_FUNC.mk"
include nbproject/Makefile-local-HAS_SLEEP_FUNC.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=HAS_SLEEP_FUNC
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../Demo.c ../TempDemo.c ../RangeDemo.c ../BSP_MiWiDemoBd.c ../LCD_ST7032.c ../MAC_EEProm.c ../SelfTestMode.c ../SST_SerialFlash.c ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/MSPI.c ../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../Microchip/WirelessProtocols/Console.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../Microchip/Transceivers/security.c ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/Demo.o ${OBJECTDIR}/_ext/1472/TempDemo.o ${OBJECTDIR}/_ext/1472/RangeDemo.o ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/MAC_EEProm.o ${OBJECTDIR}/_ext/1472/SelfTestMode.o ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1466186449/MSPI.o ${OBJECTDIR}/_ext/35256690/MiWi.o ${OBJECTDIR}/_ext/1109514802/P2P.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ${OBJECTDIR}/_ext/1466186449/Console.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ${OBJECTDIR}/_ext/1127682237/security.o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/Demo.o.d ${OBJECTDIR}/_ext/1472/TempDemo.o.d ${OBJECTDIR}/_ext/1472/RangeDemo.o.d ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o.d ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d ${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d ${OBJECTDIR}/_ext/1472/SelfTestMode.o.d ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o.d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/1466186449/MSPI.o.d ${OBJECTDIR}/_ext/35256690/MiWi.o.d ${OBJECTDIR}/_ext/1109514802/P2P.o.d ${OBJECTDIR}/_ext/1466186449/NVM.o.d ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d ${OBJECTDIR}/_ext/1466186449/Console.o.d ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d ${OBJECTDIR}/_ext/1127682237/security.o.d ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/Demo.o ${OBJECTDIR}/_ext/1472/TempDemo.o ${OBJECTDIR}/_ext/1472/RangeDemo.o ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/MAC_EEProm.o ${OBJECTDIR}/_ext/1472/SelfTestMode.o ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1466186449/MSPI.o ${OBJECTDIR}/_ext/35256690/MiWi.o ${OBJECTDIR}/_ext/1109514802/P2P.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ${OBJECTDIR}/_ext/1466186449/Console.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ${OBJECTDIR}/_ext/1127682237/security.o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o

# Source Files
SOURCEFILES=../Demo.c ../TempDemo.c ../RangeDemo.c ../BSP_MiWiDemoBd.c ../LCD_ST7032.c ../MAC_EEProm.c ../SelfTestMode.c ../SST_SerialFlash.c ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/MSPI.c ../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../Microchip/WirelessProtocols/Console.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../Microchip/Transceivers/security.c ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c



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
	${MAKE}  -f nbproject/Makefile-HAS_SLEEP_FUNC.mk dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1472/Demo.o: ../Demo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/Demo.o   ../Demo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/Demo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Demo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/TempDemo.o: ../TempDemo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TempDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TempDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/TempDemo.o   ../TempDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/TempDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TempDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/RangeDemo.o: ../RangeDemo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/RangeDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RangeDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/RangeDemo.o   ../RangeDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/RangeDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RangeDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o: ../BSP_MiWiDemoBd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o   ../BSP_MiWiDemoBd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/LCD_ST7032.o: ../LCD_ST7032.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/LCD_ST7032.o   ../LCD_ST7032.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/MAC_EEProm.o: ../MAC_EEProm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/MAC_EEProm.o   ../MAC_EEProm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/MAC_EEProm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/SelfTestMode.o: ../SelfTestMode.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/SelfTestMode.o   ../SelfTestMode.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/SelfTestMode.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SelfTestMode.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/SST_SerialFlash.o: ../SST_SerialFlash.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o   ../SST_SerialFlash.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SST_SerialFlash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1860783399/TimeDelay.o   ../../../Microchip/Common/TimeDelay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1466186449/MSPI.o: ../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1466186449/MSPI.o   ../../../Microchip/WirelessProtocols/MSPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1466186449/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/35256690/MiWi.o: ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/35256690" 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/35256690/MiWi.o   ../../../Microchip/WirelessProtocols/MiWi/MiWi.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/35256690/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/35256690/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1109514802/P2P.o: ../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1109514802" 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1109514802/P2P.o   ../../../Microchip/WirelessProtocols/P2P/P2P.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1109514802/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1109514802/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1466186449/NVM.o   ../../../Microchip/WirelessProtocols/NVM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1466186449/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1466186449/SymbolTime.o   ../../../Microchip/WirelessProtocols/SymbolTime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1935015231/MiWiPRO.o: ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1935015231" 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o   ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1466186449/Console.o: ../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1466186449/Console.o   ../../../Microchip/WirelessProtocols/Console.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1466186449/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1061806389/MRF24J40.o   ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1127682237/security.o: ../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1127682237/security.o   ../../../Microchip/Transceivers/security.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1127682237/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127682237/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1697003801/MRF89XA.o: ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1697003801" 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1697003801/MRF89XA.o   ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/_ext/1472/Demo.o: ../Demo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/Demo.o   ../Demo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/Demo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Demo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/TempDemo.o: ../TempDemo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TempDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TempDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/TempDemo.o   ../TempDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/TempDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TempDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/RangeDemo.o: ../RangeDemo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/RangeDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RangeDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/RangeDemo.o   ../RangeDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/RangeDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RangeDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o: ../BSP_MiWiDemoBd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o   ../BSP_MiWiDemoBd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/LCD_ST7032.o: ../LCD_ST7032.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/LCD_ST7032.o   ../LCD_ST7032.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/MAC_EEProm.o: ../MAC_EEProm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/MAC_EEProm.o   ../MAC_EEProm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/MAC_EEProm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/SelfTestMode.o: ../SelfTestMode.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/SelfTestMode.o   ../SelfTestMode.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/SelfTestMode.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SelfTestMode.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/SST_SerialFlash.o: ../SST_SerialFlash.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o   ../SST_SerialFlash.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SST_SerialFlash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1860783399/TimeDelay.o   ../../../Microchip/Common/TimeDelay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1466186449/MSPI.o: ../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1466186449/MSPI.o   ../../../Microchip/WirelessProtocols/MSPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1466186449/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/35256690/MiWi.o: ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/35256690" 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/35256690/MiWi.o   ../../../Microchip/WirelessProtocols/MiWi/MiWi.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/35256690/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/35256690/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1109514802/P2P.o: ../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1109514802" 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1109514802/P2P.o   ../../../Microchip/WirelessProtocols/P2P/P2P.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1109514802/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1109514802/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1466186449/NVM.o   ../../../Microchip/WirelessProtocols/NVM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1466186449/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1466186449/SymbolTime.o   ../../../Microchip/WirelessProtocols/SymbolTime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1935015231/MiWiPRO.o: ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1935015231" 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o   ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1466186449/Console.o: ../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1466186449/Console.o   ../../../Microchip/WirelessProtocols/Console.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1466186449/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1061806389/MRF24J40.o   ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1127682237/security.o: ../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1127682237/security.o   ../../../Microchip/Transceivers/security.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1127682237/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127682237/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1697003801/MRF89XA.o: ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1697003801" 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -DMIWI_DEMO_KIT -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1697003801/MRF89XA.o   ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"$(BINDIR_)$(TARGETBASE).map" -w -l"../C:/Program Files/Microchip/MCC18/lib" -l"../C:/MCC18/lib" -u_EXTENDEDMODE -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_REAL_ICE=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"$(BINDIR_)$(TARGETBASE).map" -w -l"../C:/Program Files/Microchip/MCC18/lib" -l"../C:/MCC18/lib" -u_EXTENDEDMODE -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/HAS_SLEEP_FUNC
	${RM} -r dist/HAS_SLEEP_FUNC

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
