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
ifeq "$(wildcard nbproject/Makefile-local-SIMPLE_EXAMPLE.mk)" "nbproject/Makefile-local-SIMPLE_EXAMPLE.mk"
include nbproject/Makefile-local-SIMPLE_EXAMPLE.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=SIMPLE_EXAMPLE
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
SOURCEFILES_QUOTED_IF_SPACED=../TempDemo.c ../BSP_MiWiDemoBd.c ../LCD_ST7032.c ../MAC_EEProm.c ../DemoCustom.c ../rtcc.c ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/MSPI.c "../../../Microchip/TCPIP Stack/Delay.c" ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/TempDemo.o ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/MAC_EEProm.o ${OBJECTDIR}/_ext/1472/DemoCustom.o ${OBJECTDIR}/_ext/1472/rtcc.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1466186449/MSPI.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/TempDemo.o.d ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o.d ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d ${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d ${OBJECTDIR}/_ext/1472/DemoCustom.o.d ${OBJECTDIR}/_ext/1472/rtcc.o.d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/1466186449/MSPI.o.d ${OBJECTDIR}/_ext/1954962658/Delay.o.d ${OBJECTDIR}/_ext/1466186449/NVM.o.d ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/TempDemo.o ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/MAC_EEProm.o ${OBJECTDIR}/_ext/1472/DemoCustom.o ${OBJECTDIR}/_ext/1472/rtcc.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1466186449/MSPI.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o

# Source Files
SOURCEFILES=../TempDemo.c ../BSP_MiWiDemoBd.c ../LCD_ST7032.c ../MAC_EEProm.c ../DemoCustom.c ../rtcc.c ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/MSPI.c ../../../Microchip/TCPIP Stack/Delay.c ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c



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
	${MAKE}  -f nbproject/Makefile-SIMPLE_EXAMPLE.mk dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1472/TempDemo.o: ../TempDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TempDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TempDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/TempDemo.o   ../TempDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/TempDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TempDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o: ../BSP_MiWiDemoBd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o   ../BSP_MiWiDemoBd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/LCD_ST7032.o: ../LCD_ST7032.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/LCD_ST7032.o   ../LCD_ST7032.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/MAC_EEProm.o: ../MAC_EEProm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/MAC_EEProm.o   ../MAC_EEProm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/MAC_EEProm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/DemoCustom.o: ../DemoCustom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoCustom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoCustom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/DemoCustom.o   ../DemoCustom.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/DemoCustom.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoCustom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/rtcc.o: ../rtcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rtcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/rtcc.o   ../rtcc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/rtcc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rtcc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1466186449/MSPI.o   ../../../Microchip/WirelessProtocols/MSPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1466186449/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Delay.o   "../../../Microchip/TCPIP Stack/Delay.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1466186449/NVM.o   ../../../Microchip/WirelessProtocols/NVM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1466186449/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1466186449/SymbolTime.o   ../../../Microchip/WirelessProtocols/SymbolTime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1935015231/MiWiPRO.o: ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1935015231" 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o   ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1061806389/MRF24J40.o   ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/_ext/1472/TempDemo.o: ../TempDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TempDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TempDemo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/TempDemo.o   ../TempDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/TempDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TempDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o: ../BSP_MiWiDemoBd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o   ../BSP_MiWiDemoBd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/LCD_ST7032.o: ../LCD_ST7032.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/LCD_ST7032.o   ../LCD_ST7032.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/MAC_EEProm.o: ../MAC_EEProm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/MAC_EEProm.o   ../MAC_EEProm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/MAC_EEProm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/DemoCustom.o: ../DemoCustom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoCustom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoCustom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/DemoCustom.o   ../DemoCustom.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/DemoCustom.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoCustom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/rtcc.o: ../rtcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rtcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/rtcc.o   ../rtcc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/rtcc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/rtcc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1466186449/MSPI.o   ../../../Microchip/WirelessProtocols/MSPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1466186449/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1954962658/Delay.o   "../../../Microchip/TCPIP Stack/Delay.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1466186449/NVM.o   ../../../Microchip/WirelessProtocols/NVM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1466186449/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1466186449/SymbolTime.o   ../../../Microchip/WirelessProtocols/SymbolTime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1935015231/MiWiPRO.o: ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1935015231" 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o   ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DSIMPLE_EXAMPLE -I".." -I"../C:/Program Files/Microchip/MCC18/h" -I"../../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/Transceivers/MRF49XA" -ms -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1061806389/MRF24J40.o   ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"$(BINDIR_)$(TARGETBASE).map" -w -l"../../../../Microchip/C18/v3.46/lib" -u_EXTENDEDMODE -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_REAL_ICE=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"$(BINDIR_)$(TARGETBASE).map" -w -l"../../../../Microchip/C18/v3.46/lib" -u_EXTENDEDMODE -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/SIMPLE_EXAMPLE
	${RM} -r dist/SIMPLE_EXAMPLE

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
