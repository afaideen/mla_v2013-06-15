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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c ../bsp_wireless_eval_board/LCD_ST7032.c "../MiWi PRO Test Interface.c" ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../Microchip/WirelessProtocols/MSPI.c ../../../Microchip/WirelessProtocols/Console.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/Transceivers/crc.c ../../../Microchip/Transceivers/security.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o" ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/35256690/MiWi.o ${OBJECTDIR}/_ext/1109514802/P2P.o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ${OBJECTDIR}/_ext/1466186449/MSPI.o ${OBJECTDIR}/_ext/1466186449/Console.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1127682237/crc.o ${OBJECTDIR}/_ext/1127682237/security.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o.d" ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/1466186449/NVM.o.d ${OBJECTDIR}/_ext/35256690/MiWi.o.d ${OBJECTDIR}/_ext/1109514802/P2P.o.d ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d ${OBJECTDIR}/_ext/1466186449/MSPI.o.d ${OBJECTDIR}/_ext/1466186449/Console.o.d ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d ${OBJECTDIR}/_ext/1127682237/crc.o.d ${OBJECTDIR}/_ext/1127682237/security.o.d ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d ${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/MiWi\ PRO\ Test\ Interface.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/35256690/MiWi.o ${OBJECTDIR}/_ext/1109514802/P2P.o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ${OBJECTDIR}/_ext/1466186449/MSPI.o ${OBJECTDIR}/_ext/1466186449/Console.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1127682237/crc.o ${OBJECTDIR}/_ext/1127682237/security.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o

# Source Files
SOURCEFILES=../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c ../bsp_wireless_eval_board/LCD_ST7032.c ../MiWi PRO Test Interface.c ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../Microchip/WirelessProtocols/MSPI.c ../../../Microchip/WirelessProtocols/Console.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/Transceivers/crc.c ../../../Microchip/Transceivers/security.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c


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
	${MAKE}  -f nbproject/Makefile-PIC32MX_WIRELESS_EVAL_BOARD.mk dist/${CND_CONF}/${IMAGE_TYPE}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o: ../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d" -o ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o ../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o: ../bsp_wireless_eval_board/LCD_ST7032.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d" -o ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o ../bsp_wireless_eval_board/LCD_ST7032.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/MiWi\ PRO\ Test\ Interface.o: ../MiWi\ PRO\ Test\ Interface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o".d 
	@${RM} "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o" 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o.d" -o "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o" "../MiWi PRO Test Interface.c"    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1466186449/NVM.o.d" -o ${OBJECTDIR}/_ext/1466186449/NVM.o ../../../Microchip/WirelessProtocols/NVM.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/35256690/MiWi.o: ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/35256690" 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/35256690/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/35256690/MiWi.o.d" -o ${OBJECTDIR}/_ext/35256690/MiWi.o ../../../Microchip/WirelessProtocols/MiWi/MiWi.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1109514802/P2P.o: ../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1109514802" 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1109514802/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1109514802/P2P.o.d" -o ${OBJECTDIR}/_ext/1109514802/P2P.o ../../../Microchip/WirelessProtocols/P2P/P2P.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1935015231/MiWiPRO.o: ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1935015231" 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1466186449/MSPI.o: ../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" -o ${OBJECTDIR}/_ext/1466186449/MSPI.o ../../../Microchip/WirelessProtocols/MSPI.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1466186449/Console.o: ../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1466186449/Console.o.d" -o ${OBJECTDIR}/_ext/1466186449/Console.o ../../../Microchip/WirelessProtocols/Console.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ../../../Microchip/WirelessProtocols/SymbolTime.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127682237/crc.o: ../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127682237/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1127682237/crc.o.d" -o ${OBJECTDIR}/_ext/1127682237/crc.o ../../../Microchip/Transceivers/crc.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127682237/security.o: ../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127682237/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1127682237/security.o.d" -o ${OBJECTDIR}/_ext/1127682237/security.o ../../../Microchip/Transceivers/security.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1696884637/MRF49XA.o: ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1696884637" 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1697003801/MRF89XA.o: ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1697003801" 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o: ../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d" -o ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o ../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o: ../bsp_wireless_eval_board/LCD_ST7032.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d" -o ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o ../bsp_wireless_eval_board/LCD_ST7032.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/MiWi\ PRO\ Test\ Interface.o: ../MiWi\ PRO\ Test\ Interface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o".d 
	@${RM} "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o" 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o.d" -o "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o" "../MiWi PRO Test Interface.c"    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1466186449/NVM.o.d" -o ${OBJECTDIR}/_ext/1466186449/NVM.o ../../../Microchip/WirelessProtocols/NVM.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/35256690/MiWi.o: ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/35256690" 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/35256690/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/35256690/MiWi.o.d" -o ${OBJECTDIR}/_ext/35256690/MiWi.o ../../../Microchip/WirelessProtocols/MiWi/MiWi.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1109514802/P2P.o: ../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1109514802" 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1109514802/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1109514802/P2P.o.d" -o ${OBJECTDIR}/_ext/1109514802/P2P.o ../../../Microchip/WirelessProtocols/P2P/P2P.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1935015231/MiWiPRO.o: ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1935015231" 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1466186449/MSPI.o: ../../../Microchip/WirelessProtocols/MSPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" -o ${OBJECTDIR}/_ext/1466186449/MSPI.o ../../../Microchip/WirelessProtocols/MSPI.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1466186449/Console.o: ../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1466186449/Console.o.d" -o ${OBJECTDIR}/_ext/1466186449/Console.o ../../../Microchip/WirelessProtocols/Console.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ../../../Microchip/WirelessProtocols/SymbolTime.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127682237/crc.o: ../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127682237/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1127682237/crc.o.d" -o ${OBJECTDIR}/_ext/1127682237/crc.o ../../../Microchip/Transceivers/crc.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127682237/security.o: ../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127682237/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1127682237/security.o.d" -o ${OBJECTDIR}/_ext/1127682237/security.o ../../../Microchip/Transceivers/security.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1696884637/MRF49XA.o: ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1696884637" 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1697003801/MRF89XA.o: ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1697003801" 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MMD -MF "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--defsym=_min_heap_size=2048,--defsym=_min_stack_size=2048,-L"..",-L".",-Map="${DISTDIR}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.map",--gc-sections
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2048,--defsym=_min_stack_size=2048,-L"..",-L".",-Map="${DISTDIR}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.map",--gc-sections
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
