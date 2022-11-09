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
ifeq "$(wildcard nbproject/Makefile-local-C18_MIWI_BRD_MIWI_TEST.mk)" "nbproject/Makefile-local-C18_MIWI_BRD_MIWI_TEST.mk"
include nbproject/Makefile-local-C18_MIWI_BRD_MIWI_TEST.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=C18_MIWI_BRD_MIWI_TEST
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
SOURCEFILES_QUOTED_IF_SPACED=../DemoOutput.c ../../../../Microchip/WirelessProtocols/MiWiHelper.c ../BSP_MiWiDemoBd.c ../LCD_ST7032.c ../MAC_EEProm.c ../DemoTest.c.c ../App_ConfigureControl.c ../../../../Microchip/Common/TimeDelay.c ../../../../Microchip/WirelessProtocols/MSPI.c ../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../Microchip/WirelessProtocols/P2P/P2P.c ../LocalFiles/NVM.c ../../../../Microchip/Transceivers/crc.c ../../../../Microchip/Transceivers/security.c ../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/546296802/MiWiHelper.o ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/MAC_EEProm.o ${OBJECTDIR}/_ext/1472/DemoTest.c.o ${OBJECTDIR}/_ext/1472/App_ConfigureControl.o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ${OBJECTDIR}/_ext/546296802/MSPI.o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ${OBJECTDIR}/_ext/1850237697/MiWi.o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ${OBJECTDIR}/_ext/355958077/P2P.o ${OBJECTDIR}/_ext/1452631451/NVM.o ${OBJECTDIR}/_ext/594816914/crc.o ${OBJECTDIR}/_ext/594816914/security.o ${OBJECTDIR}/_ext/1767688028/MRF24J40.o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ${OBJECTDIR}/_ext/56838198/MRF89XA.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/DemoOutput.o.d ${OBJECTDIR}/_ext/546296802/MiWiHelper.o.d ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o.d ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d ${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d ${OBJECTDIR}/_ext/1472/DemoTest.c.o.d ${OBJECTDIR}/_ext/1472/App_ConfigureControl.o.d ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d ${OBJECTDIR}/_ext/546296802/MSPI.o.d ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d ${OBJECTDIR}/_ext/1850237697/MiWi.o.d ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d ${OBJECTDIR}/_ext/355958077/P2P.o.d ${OBJECTDIR}/_ext/1452631451/NVM.o.d ${OBJECTDIR}/_ext/594816914/crc.o.d ${OBJECTDIR}/_ext/594816914/security.o.d ${OBJECTDIR}/_ext/1767688028/MRF24J40.o.d ${OBJECTDIR}/_ext/56957362/MRF49XA.o.d ${OBJECTDIR}/_ext/56838198/MRF89XA.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/546296802/MiWiHelper.o ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/MAC_EEProm.o ${OBJECTDIR}/_ext/1472/DemoTest.c.o ${OBJECTDIR}/_ext/1472/App_ConfigureControl.o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ${OBJECTDIR}/_ext/546296802/MSPI.o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ${OBJECTDIR}/_ext/1850237697/MiWi.o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ${OBJECTDIR}/_ext/355958077/P2P.o ${OBJECTDIR}/_ext/1452631451/NVM.o ${OBJECTDIR}/_ext/594816914/crc.o ${OBJECTDIR}/_ext/594816914/security.o ${OBJECTDIR}/_ext/1767688028/MRF24J40.o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ${OBJECTDIR}/_ext/56838198/MRF89XA.o

# Source Files
SOURCEFILES=../DemoOutput.c ../../../../Microchip/WirelessProtocols/MiWiHelper.c ../BSP_MiWiDemoBd.c ../LCD_ST7032.c ../MAC_EEProm.c ../DemoTest.c.c ../App_ConfigureControl.c ../../../../Microchip/Common/TimeDelay.c ../../../../Microchip/WirelessProtocols/MSPI.c ../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../Microchip/WirelessProtocols/P2P/P2P.c ../LocalFiles/NVM.c ../../../../Microchip/Transceivers/crc.c ../../../../Microchip/Transceivers/security.c ../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c



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
	${MAKE}  -f nbproject/Makefile-C18_MIWI_BRD_MIWI_TEST.mk dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/DemoOutput.o   ../DemoOutput.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/MiWiHelper.o: ../../../../Microchip/WirelessProtocols/MiWiHelper.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/MiWiHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/MiWiHelper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/MiWiHelper.o   ../../../../Microchip/WirelessProtocols/MiWiHelper.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/MiWiHelper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/MiWiHelper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o: ../BSP_MiWiDemoBd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o   ../BSP_MiWiDemoBd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/LCD_ST7032.o: ../LCD_ST7032.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/LCD_ST7032.o   ../LCD_ST7032.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/MAC_EEProm.o: ../MAC_EEProm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/MAC_EEProm.o   ../MAC_EEProm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/MAC_EEProm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/DemoTest.c.o: ../DemoTest.c.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoTest.c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoTest.c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/DemoTest.c.o   ../DemoTest.c.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/DemoTest.c.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoTest.c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/App_ConfigureControl.o: ../App_ConfigureControl.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/App_ConfigureControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/App_ConfigureControl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/App_ConfigureControl.o   ../App_ConfigureControl.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/App_ConfigureControl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/App_ConfigureControl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2048740170" 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2048740170/TimeDelay.o   ../../../../Microchip/Common/TimeDelay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2048740170/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/MSPI.o: ../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/MSPI.o   ../../../../Microchip/WirelessProtocols/MSPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/SymbolTime.o: ../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/SymbolTime.o   ../../../../Microchip/WirelessProtocols/SymbolTime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1850237697/MiWi.o: ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1850237697" 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1850237697/MiWi.o   ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1850237697/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1850237697/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179125038/MiWiPRO.o: ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1179125038" 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o   ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/355958077/P2P.o: ../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/355958077" 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/355958077/P2P.o   ../../../../Microchip/WirelessProtocols/P2P/P2P.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/355958077/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/355958077/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1452631451/NVM.o: ../LocalFiles/NVM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1452631451/NVM.o   ../LocalFiles/NVM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1452631451/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1452631451/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/594816914/crc.o: ../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/594816914/crc.o   ../../../../Microchip/Transceivers/crc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/594816914/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/594816914/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/594816914/security.o: ../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/594816914/security.o   ../../../../Microchip/Transceivers/security.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/594816914/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/594816914/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1767688028/MRF24J40.o: ../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1767688028" 
	@${RM} ${OBJECTDIR}/_ext/1767688028/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1767688028/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1767688028/MRF24J40.o   ../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1767688028/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1767688028/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/56957362/MRF49XA.o: ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/56957362" 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/56957362/MRF49XA.o   ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/56957362/MRF49XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/56957362/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/56838198/MRF89XA.o: ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/56838198" 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/56838198/MRF89XA.o   ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/56838198/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/56838198/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/DemoOutput.o   ../DemoOutput.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/MiWiHelper.o: ../../../../Microchip/WirelessProtocols/MiWiHelper.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/MiWiHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/MiWiHelper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/MiWiHelper.o   ../../../../Microchip/WirelessProtocols/MiWiHelper.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/MiWiHelper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/MiWiHelper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o: ../BSP_MiWiDemoBd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o   ../BSP_MiWiDemoBd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BSP_MiWiDemoBd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/LCD_ST7032.o: ../LCD_ST7032.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/LCD_ST7032.o   ../LCD_ST7032.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/MAC_EEProm.o: ../MAC_EEProm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/MAC_EEProm.o   ../MAC_EEProm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/MAC_EEProm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/DemoTest.c.o: ../DemoTest.c.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoTest.c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoTest.c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/DemoTest.c.o   ../DemoTest.c.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/DemoTest.c.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/DemoTest.c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/App_ConfigureControl.o: ../App_ConfigureControl.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/App_ConfigureControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/App_ConfigureControl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/App_ConfigureControl.o   ../App_ConfigureControl.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/App_ConfigureControl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/App_ConfigureControl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2048740170" 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2048740170/TimeDelay.o   ../../../../Microchip/Common/TimeDelay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2048740170/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/MSPI.o: ../../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/MSPI.o   ../../../../Microchip/WirelessProtocols/MSPI.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/546296802/SymbolTime.o: ../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/546296802/SymbolTime.o   ../../../../Microchip/WirelessProtocols/SymbolTime.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/546296802/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1850237697/MiWi.o: ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1850237697" 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1850237697/MiWi.o   ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1850237697/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1850237697/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179125038/MiWiPRO.o: ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1179125038" 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o   ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/355958077/P2P.o: ../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/355958077" 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/355958077/P2P.o   ../../../../Microchip/WirelessProtocols/P2P/P2P.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/355958077/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/355958077/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1452631451/NVM.o: ../LocalFiles/NVM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1452631451/NVM.o   ../LocalFiles/NVM.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1452631451/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1452631451/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/594816914/crc.o: ../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/594816914/crc.o   ../../../../Microchip/Transceivers/crc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/594816914/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/594816914/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/594816914/security.o: ../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/594816914/security.o   ../../../../Microchip/Transceivers/security.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/594816914/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/594816914/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1767688028/MRF24J40.o: ../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1767688028" 
	@${RM} ${OBJECTDIR}/_ext/1767688028/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1767688028/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1767688028/MRF24J40.o   ../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1767688028/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1767688028/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/56957362/MRF49XA.o: ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/56957362" 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/56957362/MRF49XA.o   ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/56957362/MRF49XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/56957362/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/56838198/MRF89XA.o: ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/56838198" 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -DCFG_INCLUDE_MIWI_DEMOBRD -DPROTOCOL_MIWI -DMIWI_HELPER -I".." -I"../../../" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/Transceivers" -I"../../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../../Microchip/Include/WirelessProtocols" -I"../../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../../Microchip/Include/WirelessProtocols" -ml -o- --extended -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/56838198/MRF89XA.o   ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/56838198/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/56838198/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"$(BINDIR_)$(TARGETBASE).map" -w -u_EXTENDEDMODE -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_REAL_ICE=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"$(BINDIR_)$(TARGETBASE).map" -w -u_EXTENDEDMODE -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/C18_MIWI_BRD_MIWI_TEST
	${RM} -r dist/C18_MIWI_BRD_MIWI_TEST

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
