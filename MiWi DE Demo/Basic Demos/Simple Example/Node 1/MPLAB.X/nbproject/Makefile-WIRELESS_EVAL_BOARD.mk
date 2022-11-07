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
ifeq "$(wildcard nbproject/Makefile-local-WIRELESS_EVAL_BOARD.mk)" "nbproject/Makefile-local-WIRELESS_EVAL_BOARD.mk"
include nbproject/Makefile-local-WIRELESS_EVAL_BOARD.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=WIRELESS_EVAL_BOARD
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
SOURCEFILES_QUOTED_IF_SPACED=../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c ../bsp_wireless_eval_board/LCD_ST7032.c ../DemoOutput.c ../main_test.c ../../../../../Microchip/Common/TimeDelay.c ../Helpers.c ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../../Microchip/WirelessProtocols/Console.c ../../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../../Microchip/WirelessProtocols/LCDBlocking.c ../../../../../Microchip/WirelessProtocols/MSPI.c ../../../../../Microchip/WirelessProtocols/NVM.c ../../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../../Microchip/WirelessProtocols/MiWiHelper.c ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../../../../../Microchip/Transceivers/crc.c ../../../../../Microchip/Transceivers/security.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/1472/main_test.o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ${OBJECTDIR}/_ext/1472/Helpers.o ${OBJECTDIR}/_ext/1688839406/MiWi.o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ${OBJECTDIR}/_ext/84067474/P2P.o ${OBJECTDIR}/_ext/1994828495/Console.o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ${OBJECTDIR}/_ext/1994828495/MSPI.o ${OBJECTDIR}/_ext/1994828495/NVM.o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ${OBJECTDIR}/_ext/702228253/crc.o ${OBJECTDIR}/_ext/702228253/security.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d ${OBJECTDIR}/_ext/1472/DemoOutput.o.d ${OBJECTDIR}/_ext/1472/main_test.o.d ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d ${OBJECTDIR}/_ext/1472/Helpers.o.d ${OBJECTDIR}/_ext/1688839406/MiWi.o.d ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d ${OBJECTDIR}/_ext/84067474/P2P.o.d ${OBJECTDIR}/_ext/1994828495/Console.o.d ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d ${OBJECTDIR}/_ext/1994828495/MSPI.o.d ${OBJECTDIR}/_ext/1994828495/NVM.o.d ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o.d ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d ${OBJECTDIR}/_ext/702228253/crc.o.d ${OBJECTDIR}/_ext/702228253/security.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/DemoOutput.o ${OBJECTDIR}/_ext/1472/main_test.o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ${OBJECTDIR}/_ext/1472/Helpers.o ${OBJECTDIR}/_ext/1688839406/MiWi.o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ${OBJECTDIR}/_ext/84067474/P2P.o ${OBJECTDIR}/_ext/1994828495/Console.o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ${OBJECTDIR}/_ext/1994828495/MSPI.o ${OBJECTDIR}/_ext/1994828495/NVM.o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ${OBJECTDIR}/_ext/702228253/crc.o ${OBJECTDIR}/_ext/702228253/security.o

# Source Files
SOURCEFILES=../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c ../bsp_wireless_eval_board/LCD_ST7032.c ../DemoOutput.c ../main_test.c ../../../../../Microchip/Common/TimeDelay.c ../Helpers.c ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../../Microchip/WirelessProtocols/Console.c ../../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../../Microchip/WirelessProtocols/LCDBlocking.c ../../../../../Microchip/WirelessProtocols/MSPI.c ../../../../../Microchip/WirelessProtocols/NVM.c ../../../../../Microchip/WirelessProtocols/SymbolTime.c ../../../../../Microchip/WirelessProtocols/MiWiHelper.c ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../../../../../Microchip/Transceivers/crc.c ../../../../../Microchip/Transceivers/security.c



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
	${MAKE}  -f nbproject/Makefile-WIRELESS_EVAL_BOARD.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o: ../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c  .generated_files/flags/WIRELESS_EVAL_BOARD/ab82b6dce0f6a361aa10acaa6264f9a0fb4ce3a7 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d" -o ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o ../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o: ../bsp_wireless_eval_board/LCD_ST7032.c  .generated_files/flags/WIRELESS_EVAL_BOARD/7f7dd4f8c5437ae3689240cb3d97179113189890 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d" -o ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o ../bsp_wireless_eval_board/LCD_ST7032.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  .generated_files/flags/WIRELESS_EVAL_BOARD/60764642afdbe3c3946083a04f6783c61430b04 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" -o ${OBJECTDIR}/_ext/1472/DemoOutput.o ../DemoOutput.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/main_test.o: ../main_test.c  .generated_files/flags/WIRELESS_EVAL_BOARD/71e312c9c3b4ab5322ff8e4fcccf6102f08022ec .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_test.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1472/main_test.o.d" -o ${OBJECTDIR}/_ext/1472/main_test.o ../main_test.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  .generated_files/flags/WIRELESS_EVAL_BOARD/7b7c733af23561ecbfa42e499ee869b31f599c7c .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/257748679" 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ../../../../../Microchip/Common/TimeDelay.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/Helpers.o: ../Helpers.c  .generated_files/flags/WIRELESS_EVAL_BOARD/cf30af297a659f023a7e9b6217aceac68744a9c8 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1472/Helpers.o.d" -o ${OBJECTDIR}/_ext/1472/Helpers.o ../Helpers.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  .generated_files/flags/WIRELESS_EVAL_BOARD/9fa31cf6ab4d18411e033a1b8a99c9d50e398b58 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1688839406" 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1688839406/MiWi.o.d" -o ${OBJECTDIR}/_ext/1688839406/MiWi.o ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  .generated_files/flags/WIRELESS_EVAL_BOARD/e602f22916eede68fb55999a02d4986b6244a308 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/967918303" 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  .generated_files/flags/WIRELESS_EVAL_BOARD/34c15982bbb830f99f659c145bc0f2cc567a383e .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/84067474" 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/84067474/P2P.o.d" -o ${OBJECTDIR}/_ext/84067474/P2P.o ../../../../../Microchip/WirelessProtocols/P2P/P2P.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  .generated_files/flags/WIRELESS_EVAL_BOARD/a28f2d986a18b4577657de0c60f7cc4af40db74c .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1994828495/Console.o.d" -o ${OBJECTDIR}/_ext/1994828495/Console.o ../../../../../Microchip/WirelessProtocols/Console.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  .generated_files/flags/WIRELESS_EVAL_BOARD/f050f1e6f56fb9c1150bd00bf8975723404898f6 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d" -o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ../../../../../Microchip/WirelessProtocols/EEPROM.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  .generated_files/flags/WIRELESS_EVAL_BOARD/ea06eee18645eb2528ba882c74121c28c367484 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ../../../../../Microchip/WirelessProtocols/LCDBlocking.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  .generated_files/flags/WIRELESS_EVAL_BOARD/324cb2bc918ae9297319741a48376490264f399f .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1994828495/MSPI.o.d" -o ${OBJECTDIR}/_ext/1994828495/MSPI.o ../../../../../Microchip/WirelessProtocols/MSPI.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  .generated_files/flags/WIRELESS_EVAL_BOARD/ef94817d601a31ea196c0a4994c3d740b29a4f7 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1994828495/NVM.o.d" -o ${OBJECTDIR}/_ext/1994828495/NVM.o ../../../../../Microchip/WirelessProtocols/NVM.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  .generated_files/flags/WIRELESS_EVAL_BOARD/5cdc7aebd99f372047ce4714c461c55eca2ede6d .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ../../../../../Microchip/WirelessProtocols/SymbolTime.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994828495/MiWiHelper.o: ../../../../../Microchip/WirelessProtocols/MiWiHelper.c  .generated_files/flags/WIRELESS_EVAL_BOARD/1e27d6ea4e5d3ad260c3b7d13733c06fffa1dd32 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1994828495/MiWiHelper.o.d" -o ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o ../../../../../Microchip/WirelessProtocols/MiWiHelper.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  .generated_files/flags/WIRELESS_EVAL_BOARD/d261b76450d962a01e039c3b969248e55ee5eb99 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/2087253717" 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  .generated_files/flags/WIRELESS_EVAL_BOARD/8a78c07742388d540ca354f7b6e29ddf5fd266ea .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/486793731" 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  .generated_files/flags/WIRELESS_EVAL_BOARD/9e6c100bf5c35f2f640504793fbc4f4554a5a12d .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/486674567" 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  .generated_files/flags/WIRELESS_EVAL_BOARD/3c4ee55b615561b1324de6763bd2ac1e50f8090e .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/702228253/crc.o.d" -o ${OBJECTDIR}/_ext/702228253/crc.o ../../../../../Microchip/Transceivers/crc.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  .generated_files/flags/WIRELESS_EVAL_BOARD/c603b86793973aaaf050b309145b78fe41e2c1c2 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/702228253/security.o.d" -o ${OBJECTDIR}/_ext/702228253/security.o ../../../../../Microchip/Transceivers/security.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o: ../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c  .generated_files/flags/WIRELESS_EVAL_BOARD/6f3cb02f0a01d293158e06eed8b82e79070d2104 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o.d" -o ${OBJECTDIR}/_ext/1198648459/BSP_PC32MX_WirelessEvalBoard.o ../bsp_wireless_eval_board/BSP_PC32MX_WirelessEvalBoard.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o: ../bsp_wireless_eval_board/LCD_ST7032.c  .generated_files/flags/WIRELESS_EVAL_BOARD/e79d3c0b82d1df02ee7eb4cf1d6f67a9f7c765a4 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1198648459" 
	@${RM} ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o.d" -o ${OBJECTDIR}/_ext/1198648459/LCD_ST7032.o ../bsp_wireless_eval_board/LCD_ST7032.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/DemoOutput.o: ../DemoOutput.c  .generated_files/flags/WIRELESS_EVAL_BOARD/b01494a77715c145b5e9fd952a2b550c61946db .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/DemoOutput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1472/DemoOutput.o.d" -o ${OBJECTDIR}/_ext/1472/DemoOutput.o ../DemoOutput.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/main_test.o: ../main_test.c  .generated_files/flags/WIRELESS_EVAL_BOARD/1f06a94978ccd9a6c96d829d986652e42747271e .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_test.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1472/main_test.o.d" -o ${OBJECTDIR}/_ext/1472/main_test.o ../main_test.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/257748679/TimeDelay.o: ../../../../../Microchip/Common/TimeDelay.c  .generated_files/flags/WIRELESS_EVAL_BOARD/efc7c9184c2c8938bdca0ab043fe4fe98ed33ba6 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/257748679" 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/257748679/TimeDelay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/257748679/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/257748679/TimeDelay.o ../../../../../Microchip/Common/TimeDelay.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/Helpers.o: ../Helpers.c  .generated_files/flags/WIRELESS_EVAL_BOARD/3027b1df68ac26a740c60d23a74e0e6742d0da96 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1472/Helpers.o.d" -o ${OBJECTDIR}/_ext/1472/Helpers.o ../Helpers.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688839406/MiWi.o: ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  .generated_files/flags/WIRELESS_EVAL_BOARD/33e0c1101f68f3230d2f103dee8256d3072fc3c0 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1688839406" 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688839406/MiWi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1688839406/MiWi.o.d" -o ${OBJECTDIR}/_ext/1688839406/MiWi.o ../../../../../Microchip/WirelessProtocols/MiWi/MiWi.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/967918303/MiWiPRO.o: ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  .generated_files/flags/WIRELESS_EVAL_BOARD/56a09239035a21912fcd5779f8bdb6fd75dade5c .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/967918303" 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/967918303/MiWiPRO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/967918303/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/967918303/MiWiPRO.o ../../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/84067474/P2P.o: ../../../../../Microchip/WirelessProtocols/P2P/P2P.c  .generated_files/flags/WIRELESS_EVAL_BOARD/a81be706e76f8935554e5019da32cdee020f3d0e .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/84067474" 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/84067474/P2P.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/84067474/P2P.o.d" -o ${OBJECTDIR}/_ext/84067474/P2P.o ../../../../../Microchip/WirelessProtocols/P2P/P2P.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994828495/Console.o: ../../../../../Microchip/WirelessProtocols/Console.c  .generated_files/flags/WIRELESS_EVAL_BOARD/8538fe7985036bbf414fe7e1d5f30bccfd647eaf .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/Console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1994828495/Console.o.d" -o ${OBJECTDIR}/_ext/1994828495/Console.o ../../../../../Microchip/WirelessProtocols/Console.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994828495/EEPROM.o: ../../../../../Microchip/WirelessProtocols/EEPROM.c  .generated_files/flags/WIRELESS_EVAL_BOARD/228ccbd86662a8285356a423af8257fb7a5338fa .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/EEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1994828495/EEPROM.o.d" -o ${OBJECTDIR}/_ext/1994828495/EEPROM.o ../../../../../Microchip/WirelessProtocols/EEPROM.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994828495/LCDBlocking.o: ../../../../../Microchip/WirelessProtocols/LCDBlocking.c  .generated_files/flags/WIRELESS_EVAL_BOARD/aa51b9d63ed7cfbc38c7ad89e5cc1370db28534f .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1994828495/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1994828495/LCDBlocking.o ../../../../../Microchip/WirelessProtocols/LCDBlocking.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994828495/MSPI.o: ../../../../../Microchip/WirelessProtocols/MSPI.c  .generated_files/flags/WIRELESS_EVAL_BOARD/6d761a556ac5a73bde934cb940e4ca1619c2ced1 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MSPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1994828495/MSPI.o.d" -o ${OBJECTDIR}/_ext/1994828495/MSPI.o ../../../../../Microchip/WirelessProtocols/MSPI.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994828495/NVM.o: ../../../../../Microchip/WirelessProtocols/NVM.c  .generated_files/flags/WIRELESS_EVAL_BOARD/f85130a3d3104eb85ff11c7828596d0280d1194 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/NVM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1994828495/NVM.o.d" -o ${OBJECTDIR}/_ext/1994828495/NVM.o ../../../../../Microchip/WirelessProtocols/NVM.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994828495/SymbolTime.o: ../../../../../Microchip/WirelessProtocols/SymbolTime.c  .generated_files/flags/WIRELESS_EVAL_BOARD/7767e7cad30d6b549723ebbb246c2b9536bc9c4f .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/SymbolTime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1994828495/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/1994828495/SymbolTime.o ../../../../../Microchip/WirelessProtocols/SymbolTime.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994828495/MiWiHelper.o: ../../../../../Microchip/WirelessProtocols/MiWiHelper.c  .generated_files/flags/WIRELESS_EVAL_BOARD/24539defc38fcd684a0b6a3e6be46e322c14877d .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1994828495" 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/1994828495/MiWiHelper.o.d" -o ${OBJECTDIR}/_ext/1994828495/MiWiHelper.o ../../../../../Microchip/WirelessProtocols/MiWiHelper.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2087253717/MRF24J40.o: ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  .generated_files/flags/WIRELESS_EVAL_BOARD/2db080535164a96fd5f282671e5f41c9a224825e .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/2087253717" 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/2087253717/MRF24J40.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/2087253717/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/2087253717/MRF24J40.o ../../../../../Microchip/Transceivers/MRF24J40/MRF24J40.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/486793731/MRF49XA.o: ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  .generated_files/flags/WIRELESS_EVAL_BOARD/d51d45296dc58f1cd49bc5a1bf72fc7f223fd40a .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/486793731" 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486793731/MRF49XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/486793731/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/486793731/MRF49XA.o ../../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/486674567/MRF89XA.o: ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  .generated_files/flags/WIRELESS_EVAL_BOARD/92421f2db57ddb7291d32db1ce91ef003204a68a .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/486674567" 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/486674567/MRF89XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/486674567/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/486674567/MRF89XA.o ../../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/702228253/crc.o: ../../../../../Microchip/Transceivers/crc.c  .generated_files/flags/WIRELESS_EVAL_BOARD/1578fd6a75ec8ae9277aa0cac48725b5ab7921a4 .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/702228253/crc.o.d" -o ${OBJECTDIR}/_ext/702228253/crc.o ../../../../../Microchip/Transceivers/crc.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/702228253/security.o: ../../../../../Microchip/Transceivers/security.c  .generated_files/flags/WIRELESS_EVAL_BOARD/9233d472ef52879080cc9f5ada140ce9e26fa9ce .generated_files/flags/WIRELESS_EVAL_BOARD/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/702228253" 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/702228253/security.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DWIRELESS_EVAL_BOARD -DMIWI_HELPER -I"../" -I"../../../../../Microchip/Include" -I"../../../../../MiWi DE Demo/Basic Demos/Simple Example/Node 1" -MP -MMD -MF "${OBJECTDIR}/_ext/702228253/security.o.d" -o ${OBJECTDIR}/_ext/702228253/security.o ../../../../../Microchip/Transceivers/security.c    -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--defsym=_min_heap_size=2048,--defsym=_min_stack_size=2048,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_WIRELESS_EVAL_BOARD=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2048,--defsym=_min_stack_size=2048,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/WIRELESS_EVAL_BOARD
	${RM} -r dist/WIRELESS_EVAL_BOARD

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
