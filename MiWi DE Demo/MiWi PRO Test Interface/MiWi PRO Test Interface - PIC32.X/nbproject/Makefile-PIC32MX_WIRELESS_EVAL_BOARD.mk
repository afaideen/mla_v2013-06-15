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
SOURCEFILES_QUOTED_IF_SPACED="../MiWi PRO Test Interface.c" ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../Microchip/WirelessProtocols/MSPI.c ../../../Microchip/WirelessProtocols/Console.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/Transceivers/crc.c ../../../Microchip/Transceivers/security.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c ../bsp_wireless_eval_board/LCD_ST7032.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED="${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o" ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/35256690/MiWi.o ${OBJECTDIR}/_ext/1109514802/P2P.o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ${OBJECTDIR}/_ext/1466186449/MSPI.o ${OBJECTDIR}/_ext/1466186449/Console.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1127682237/crc.o ${OBJECTDIR}/_ext/1127682237/security.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o
POSSIBLE_DEPFILES="${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o.d" ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/1466186449/NVM.o.d ${OBJECTDIR}/_ext/35256690/MiWi.o.d ${OBJECTDIR}/_ext/1109514802/P2P.o.d ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d ${OBJECTDIR}/_ext/1466186449/MSPI.o.d ${OBJECTDIR}/_ext/1466186449/Console.o.d ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d ${OBJECTDIR}/_ext/1127682237/crc.o.d ${OBJECTDIR}/_ext/1127682237/security.o.d ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d ${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/MiWi\ PRO\ Test\ Interface.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/35256690/MiWi.o ${OBJECTDIR}/_ext/1109514802/P2P.o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ${OBJECTDIR}/_ext/1466186449/MSPI.o ${OBJECTDIR}/_ext/1466186449/Console.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1127682237/crc.o ${OBJECTDIR}/_ext/1127682237/security.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o

# Source Files
SOURCEFILES=../MiWi PRO Test Interface.c ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../Microchip/WirelessProtocols/MSPI.c ../../../Microchip/WirelessProtocols/Console.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/Transceivers/crc.c ../../../Microchip/Transceivers/security.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c ../bsp_wireless_eval_board/LCD_ST7032.c



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
${OBJECTDIR}/_ext/1472/MiWi\ PRO\ Test\ Interface.o: ../MiWi\ PRO\ Test\ Interface.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/ed43619027ed1671e77538987efea956826c60a9 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o".d 
	@${RM} "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o.d" -o "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o" "../MiWi PRO Test Interface.c"    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/b2e3f883d7234bc20854386986bce4e0b0953d59 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/38b7dcfb44eb50da373b943241081e58a38bbabe .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/NVM.o.d" -o ${OBJECTDIR}/_ext/1466186449/NVM.o ../../../Microchip/WirelessProtocols/NVM.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/35256690/MiWi.o: ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/80b73fab0558e9f0ce6e5880e86c4c6fe00fc38a .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/35256690" 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/35256690/MiWi.o.d" -o ${OBJECTDIR}/_ext/35256690/MiWi.o ../../../Microchip/WirelessProtocols/MiWi/MiWi.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1109514802/P2P.o: ../../../Microchip/WirelessProtocols/P2P/P2P.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/72530ba80ba0ba4e4aad87b23c39d0c8c221744c .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1109514802" 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1109514802/P2P.o.d" -o ${OBJECTDIR}/_ext/1109514802/P2P.o ../../../Microchip/WirelessProtocols/P2P/P2P.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1935015231/MiWiPRO.o: ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/dc788dea6b5c3e9d40ede883b37f9908be875327 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1935015231" 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/MSPI.o: ../../../Microchip/WirelessProtocols/MSPI.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/93fa99253e460267d8317cce3e36f284b5cff1ad .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" -o ${OBJECTDIR}/_ext/1466186449/MSPI.o ../../../Microchip/WirelessProtocols/MSPI.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/Console.o: ../../../Microchip/WirelessProtocols/Console.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/b4e718f9a6c572bc0375a7fccfe35b88a98e5872 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/Console.o.d" -o ${OBJECTDIR}/_ext/1466186449/Console.o ../../../Microchip/WirelessProtocols/Console.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/2180a7d73ca15be0ee0ffc5dba580da624ef9927 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ../../../Microchip/WirelessProtocols/SymbolTime.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1127682237/crc.o: ../../../Microchip/Transceivers/crc.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/24074dec59d6d06c9ec452baa6ba9317d166e855 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/crc.o.d" -o ${OBJECTDIR}/_ext/1127682237/crc.o ../../../Microchip/Transceivers/crc.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1127682237/security.o: ../../../Microchip/Transceivers/security.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/745c430baaaa6d73966efbafb9d421fde730b208 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/security.o.d" -o ${OBJECTDIR}/_ext/1127682237/security.o ../../../Microchip/Transceivers/security.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/97ed67ac8e080dab80036449f757178e1832acfc .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1696884637/MRF49XA.o: ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/582de683419ff312f295d2c63407b3d1a6bbe422 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1696884637" 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1697003801/MRF89XA.o: ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/dae9bee7fa9f85d0464545bb2bbf066c992d11f6 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1697003801" 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o: ../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/4107d300be1ff97ba4c2b61d5332f31c92caa7fa .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d" -o ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o ../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o: ../bsp_wireless_eval_board/LCD_ST7032.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/e5107305e630df59e07ef398bedfe015770fd09a .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d" -o ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o ../bsp_wireless_eval_board/LCD_ST7032.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/1472/MiWi\ PRO\ Test\ Interface.o: ../MiWi\ PRO\ Test\ Interface.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/b68b2bcab57f69fb745a1dde30ad90838bee3c0b .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o".d 
	@${RM} "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o.d" -o "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o" "../MiWi PRO Test Interface.c"    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/c9197a9b022e245e3ca4b24f949d468a060e0ab1 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/c86106927e33d3583e39d4e9b488b708c318b45d .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/NVM.o.d" -o ${OBJECTDIR}/_ext/1466186449/NVM.o ../../../Microchip/WirelessProtocols/NVM.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/35256690/MiWi.o: ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/a21bfeb6e4177d07c2d0629d5d87b140e64785f6 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/35256690" 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/35256690/MiWi.o.d" -o ${OBJECTDIR}/_ext/35256690/MiWi.o ../../../Microchip/WirelessProtocols/MiWi/MiWi.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1109514802/P2P.o: ../../../Microchip/WirelessProtocols/P2P/P2P.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/dc7e60e8552bedb6162cf6f93070885173207d9a .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1109514802" 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1109514802/P2P.o.d" -o ${OBJECTDIR}/_ext/1109514802/P2P.o ../../../Microchip/WirelessProtocols/P2P/P2P.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1935015231/MiWiPRO.o: ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/58393ae505822a24e727bf1a1aefe5666e976472 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1935015231" 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/MSPI.o: ../../../Microchip/WirelessProtocols/MSPI.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/73ff1ca34da8eec73ffd0a1cdc49c27baa2a627b .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" -o ${OBJECTDIR}/_ext/1466186449/MSPI.o ../../../Microchip/WirelessProtocols/MSPI.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/Console.o: ../../../Microchip/WirelessProtocols/Console.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/15ca022f920764612b299741c10537bab8a4b57c .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/Console.o.d" -o ${OBJECTDIR}/_ext/1466186449/Console.o ../../../Microchip/WirelessProtocols/Console.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/fbc172dc354149d44e9434f0008bb4b5eb89de7f .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ../../../Microchip/WirelessProtocols/SymbolTime.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1127682237/crc.o: ../../../Microchip/Transceivers/crc.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/9e6a57b190279756e809d3f0bd5da234394902a5 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/crc.o.d" -o ${OBJECTDIR}/_ext/1127682237/crc.o ../../../Microchip/Transceivers/crc.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1127682237/security.o: ../../../Microchip/Transceivers/security.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/44a0976e2c3109cfaa90b77c85ac054e03357fd7 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/security.o.d" -o ${OBJECTDIR}/_ext/1127682237/security.o ../../../Microchip/Transceivers/security.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/a3f924f58cd753d8de27f8b0043f306c09ea0115 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1696884637/MRF49XA.o: ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/a139011e5e7ef63c92a28e871910d57e08617996 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1696884637" 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1697003801/MRF89XA.o: ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/5cfb277cc473766af2e8057b3e84b6d02eac103 .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1697003801" 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o: ../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/838f3fd20cd10367a84d4469bb96ccd0a2b84aae .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d" -o ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o ../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o: ../bsp_wireless_eval_board/LCD_ST7032.c  .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/f85f084844cf8ce8fc71170600d5eadd5103437d .generated_files/flags/PIC32MX_WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DWIRELESS_EVAL_BOARD -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -I"../bsp_wireless_eval_board" -MP -MMD -MF "${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d" -o ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o ../bsp_wireless_eval_board/LCD_ST7032.c    -DXPRJ_PIC32MX_WIRELESS_EVAL_BOARD=$(CND_CONF)    $(COMPARISON_BUILD)    
	
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
