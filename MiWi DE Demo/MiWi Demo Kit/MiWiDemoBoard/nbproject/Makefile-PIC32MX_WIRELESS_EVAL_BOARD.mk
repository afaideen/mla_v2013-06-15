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
ifeq "$(wildcard nbproject/Makefile-local-PIC32MX_WIRELESS_EVAL_BOARD.mk)" "nbproject/Makefile-local-PIC32MX_WIRELESS_EVAL_BOARD.mk"
include nbproject/Makefile-local-PIC32MX_WIRELESS_EVAL_BOARD.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PIC32MX_WIRELESS_EVAL_BOARD
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
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
SOURCEFILES_QUOTED_IF_SPACED=../Demo.c ../TempDemo.c ../RangeDemo.c ../LCD_ST7032.c ../MAC_EEProm.c ../SST_SerialFlash.c ../BSP_PC32MX_WirelessEvalBoard.c ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/MSPI.c ../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../Microchip/WirelessProtocols/Console.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../Microchip/Transceivers/security.c ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../bsp_wireless_eval_board/SelfTestMode.c ../bsp_wireless_eval_board/SPIEEPROM.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/Demo.o ${OBJECTDIR}/_ext/1472/TempDemo.o ${OBJECTDIR}/_ext/1472/RangeDemo.o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/MAC_EEProm.o ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o ${OBJECTDIR}/_ext/1472/BSP_PC32MX_WirelessEvalBoard.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1466186449/MSPI.o ${OBJECTDIR}/_ext/35256690/MiWi.o ${OBJECTDIR}/_ext/1109514802/P2P.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ${OBJECTDIR}/_ext/1466186449/Console.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ${OBJECTDIR}/_ext/1127682237/security.o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o ${OBJECTDIR}/_ext/1198648459/SelfTestMode.o ${OBJECTDIR}/_ext/1198648459/SPIEEPROM.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/Demo.o.d ${OBJECTDIR}/_ext/1472/TempDemo.o.d ${OBJECTDIR}/_ext/1472/RangeDemo.o.d ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d ${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o.d ${OBJECTDIR}/_ext/1472/BSP_PC32MX_WirelessEvalBoard.o.d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/1466186449/MSPI.o.d ${OBJECTDIR}/_ext/35256690/MiWi.o.d ${OBJECTDIR}/_ext/1109514802/P2P.o.d ${OBJECTDIR}/_ext/1466186449/NVM.o.d ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d ${OBJECTDIR}/_ext/1466186449/Console.o.d ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d ${OBJECTDIR}/_ext/1127682237/security.o.d ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d ${OBJECTDIR}/_ext/1198648459/SelfTestMode.o.d ${OBJECTDIR}/_ext/1198648459/SPIEEPROM.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/Demo.o ${OBJECTDIR}/_ext/1472/TempDemo.o ${OBJECTDIR}/_ext/1472/RangeDemo.o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/MAC_EEProm.o ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o ${OBJECTDIR}/_ext/1472/BSP_PC32MX_WirelessEvalBoard.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1466186449/MSPI.o ${OBJECTDIR}/_ext/35256690/MiWi.o ${OBJECTDIR}/_ext/1109514802/P2P.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ${OBJECTDIR}/_ext/1466186449/Console.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ${OBJECTDIR}/_ext/1127682237/security.o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o ${OBJECTDIR}/_ext/1198648459/SelfTestMode.o ${OBJECTDIR}/_ext/1198648459/SPIEEPROM.o

# Source Files
SOURCEFILES=../Demo.c ../TempDemo.c ../RangeDemo.c ../LCD_ST7032.c ../MAC_EEProm.c ../SST_SerialFlash.c ../BSP_PC32MX_WirelessEvalBoard.c ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/MSPI.c ../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../Microchip/WirelessProtocols/Console.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../Microchip/Transceivers/security.c ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../bsp_wireless_eval_board/SelfTestMode.c ../bsp_wireless_eval_board/SPIEEPROM.c



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
	${MAKE}  -f nbproject/Makefile-PIC32MX_WIRELESS_EVAL_BOARD.mk dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/Demo.o: ../Demo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Demo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Demo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/Demo.o.d" -o ${OBJECTDIR}/_ext/1472/Demo.o ../Demo.c  -legacy-libc
	
${OBJECTDIR}/_ext/1472/TempDemo.o: ../TempDemo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TempDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TempDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TempDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/TempDemo.o.d" -o ${OBJECTDIR}/_ext/1472/TempDemo.o ../TempDemo.c  -legacy-libc
	
${OBJECTDIR}/_ext/1472/RangeDemo.o: ../RangeDemo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/RangeDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RangeDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RangeDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/RangeDemo.o.d" -o ${OBJECTDIR}/_ext/1472/RangeDemo.o ../RangeDemo.c  -legacy-libc
	
${OBJECTDIR}/_ext/1472/LCD_ST7032.o: ../LCD_ST7032.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" -o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ../LCD_ST7032.c  -legacy-libc
	
${OBJECTDIR}/_ext/1472/MAC_EEProm.o: ../MAC_EEProm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d" -o ${OBJECTDIR}/_ext/1472/MAC_EEProm.o ../MAC_EEProm.c  -legacy-libc
	
${OBJECTDIR}/_ext/1472/SST_SerialFlash.o: ../SST_SerialFlash.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SST_SerialFlash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/SST_SerialFlash.o.d" -o ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o ../SST_SerialFlash.c  -legacy-libc
	
${OBJECTDIR}/_ext/1472/BSP_PC32MX_WirelessEvalBoard.o: ../BSP_PC32MX_WirelessEvalBoard.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_PC32MX_WirelessEvalBoard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_PC32MX_WirelessEvalBoard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BSP_PC32MX_WirelessEvalBoard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/BSP_PC32MX_WirelessEvalBoard.o.d" -o ${OBJECTDIR}/_ext/1472/BSP_PC32MX_WirelessEvalBoard.o ../BSP_PC32MX_WirelessEvalBoard.c  -legacy-libc
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  -legacy-libc
	
${OBJECTDIR}/_ext/1466186449/MSPI.o: ../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" -o ${OBJECTDIR}/_ext/1466186449/MSPI.o ../../../Microchip/WirelessProtocols/MSPI.c  -legacy-libc
	
${OBJECTDIR}/_ext/35256690/MiWi.o: ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/35256690" 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/35256690/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/35256690/MiWi.o.d" -o ${OBJECTDIR}/_ext/35256690/MiWi.o ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  -legacy-libc
	
${OBJECTDIR}/_ext/1109514802/P2P.o: ../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1109514802" 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1109514802/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1109514802/P2P.o.d" -o ${OBJECTDIR}/_ext/1109514802/P2P.o ../../../Microchip/WirelessProtocols/P2P/P2P.c  -legacy-libc
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1466186449/NVM.o.d" -o ${OBJECTDIR}/_ext/1466186449/NVM.o ../../../Microchip/WirelessProtocols/NVM.c  -legacy-libc
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ../../../Microchip/WirelessProtocols/SymbolTime.c  -legacy-libc
	
${OBJECTDIR}/_ext/1935015231/MiWiPRO.o: ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1935015231" 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  -legacy-libc
	
${OBJECTDIR}/_ext/1466186449/Console.o: ../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1466186449/Console.o.d" -o ${OBJECTDIR}/_ext/1466186449/Console.o ../../../Microchip/WirelessProtocols/Console.c  -legacy-libc
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  -legacy-libc
	
${OBJECTDIR}/_ext/1127682237/security.o: ../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127682237/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1127682237/security.o.d" -o ${OBJECTDIR}/_ext/1127682237/security.o ../../../Microchip/Transceivers/security.c  -legacy-libc
	
${OBJECTDIR}/_ext/1697003801/MRF89XA.o: ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1697003801" 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  -legacy-libc
	
${OBJECTDIR}/_ext/1198648459/SelfTestMode.o: ../bsp_wireless_eval_board/SelfTestMode.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/SelfTestMode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/SelfTestMode.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1198648459/SelfTestMode.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1198648459/SelfTestMode.o.d" -o ${OBJECTDIR}/_ext/1198648459/SelfTestMode.o ../bsp_wireless_eval_board/SelfTestMode.c  -legacy-libc
	
${OBJECTDIR}/_ext/1198648459/SPIEEPROM.o: ../bsp_wireless_eval_board/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/SPIEEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1198648459/SPIEEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1198648459/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1198648459/SPIEEPROM.o ../bsp_wireless_eval_board/SPIEEPROM.c  -legacy-libc
	
else
${OBJECTDIR}/_ext/1472/Demo.o: ../Demo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Demo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Demo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/Demo.o.d" -o ${OBJECTDIR}/_ext/1472/Demo.o ../Demo.c  -legacy-libc
	
${OBJECTDIR}/_ext/1472/TempDemo.o: ../TempDemo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TempDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TempDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/TempDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/TempDemo.o.d" -o ${OBJECTDIR}/_ext/1472/TempDemo.o ../TempDemo.c  -legacy-libc
	
${OBJECTDIR}/_ext/1472/RangeDemo.o: ../RangeDemo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/RangeDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RangeDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RangeDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/RangeDemo.o.d" -o ${OBJECTDIR}/_ext/1472/RangeDemo.o ../RangeDemo.c  -legacy-libc
	
${OBJECTDIR}/_ext/1472/LCD_ST7032.o: ../LCD_ST7032.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" -o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ../LCD_ST7032.c  -legacy-libc
	
${OBJECTDIR}/_ext/1472/MAC_EEProm.o: ../MAC_EEProm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MAC_EEProm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/MAC_EEProm.o.d" -o ${OBJECTDIR}/_ext/1472/MAC_EEProm.o ../MAC_EEProm.c  -legacy-libc
	
${OBJECTDIR}/_ext/1472/SST_SerialFlash.o: ../SST_SerialFlash.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SST_SerialFlash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/SST_SerialFlash.o.d" -o ${OBJECTDIR}/_ext/1472/SST_SerialFlash.o ../SST_SerialFlash.c  -legacy-libc
	
${OBJECTDIR}/_ext/1472/BSP_PC32MX_WirelessEvalBoard.o: ../BSP_PC32MX_WirelessEvalBoard.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_PC32MX_WirelessEvalBoard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BSP_PC32MX_WirelessEvalBoard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BSP_PC32MX_WirelessEvalBoard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/BSP_PC32MX_WirelessEvalBoard.o.d" -o ${OBJECTDIR}/_ext/1472/BSP_PC32MX_WirelessEvalBoard.o ../BSP_PC32MX_WirelessEvalBoard.c  -legacy-libc
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  -legacy-libc
	
${OBJECTDIR}/_ext/1466186449/MSPI.o: ../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" -o ${OBJECTDIR}/_ext/1466186449/MSPI.o ../../../Microchip/WirelessProtocols/MSPI.c  -legacy-libc
	
${OBJECTDIR}/_ext/35256690/MiWi.o: ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/35256690" 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/35256690/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/35256690/MiWi.o.d" -o ${OBJECTDIR}/_ext/35256690/MiWi.o ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  -legacy-libc
	
${OBJECTDIR}/_ext/1109514802/P2P.o: ../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1109514802" 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1109514802/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1109514802/P2P.o.d" -o ${OBJECTDIR}/_ext/1109514802/P2P.o ../../../Microchip/WirelessProtocols/P2P/P2P.c  -legacy-libc
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1466186449/NVM.o.d" -o ${OBJECTDIR}/_ext/1466186449/NVM.o ../../../Microchip/WirelessProtocols/NVM.c  -legacy-libc
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ../../../Microchip/WirelessProtocols/SymbolTime.c  -legacy-libc
	
${OBJECTDIR}/_ext/1935015231/MiWiPRO.o: ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1935015231" 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  -legacy-libc
	
${OBJECTDIR}/_ext/1466186449/Console.o: ../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1466186449/Console.o.d" -o ${OBJECTDIR}/_ext/1466186449/Console.o ../../../Microchip/WirelessProtocols/Console.c  -legacy-libc
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  -legacy-libc
	
${OBJECTDIR}/_ext/1127682237/security.o: ../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127682237/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1127682237/security.o.d" -o ${OBJECTDIR}/_ext/1127682237/security.o ../../../Microchip/Transceivers/security.c  -legacy-libc
	
${OBJECTDIR}/_ext/1697003801/MRF89XA.o: ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1697003801" 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  -legacy-libc
	
${OBJECTDIR}/_ext/1198648459/SelfTestMode.o: ../bsp_wireless_eval_board/SelfTestMode.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/SelfTestMode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/SelfTestMode.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1198648459/SelfTestMode.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1198648459/SelfTestMode.o.d" -o ${OBJECTDIR}/_ext/1198648459/SelfTestMode.o ../bsp_wireless_eval_board/SelfTestMode.c  -legacy-libc
	
${OBJECTDIR}/_ext/1198648459/SPIEEPROM.o: ../bsp_wireless_eval_board/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/SPIEEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1198648459/SPIEEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DENABLE_CONSOLE -I"../../../Microchip/Include" -I"../../../Microchip/Include/WirelessProtocols" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1198648459/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1198648459/SPIEEPROM.o ../bsp_wireless_eval_board/SPIEEPROM.c  -legacy-libc
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -legacy-libc -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--defsym=_min_heap_size=4096,--defsym=_min_stack_size=1024,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" 
else
dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -legacy-libc -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=4096,--defsym=_min_stack_size=1024,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MiWiDemoBoard.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/PIC32MX_WIRELESS_EVAL_BOARD
	${RM} -r dist/PIC32MX_WIRELESS_EVAL_BOARD

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
