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
ifeq "$(wildcard nbproject/Makefile-local-EXP16.mk)" "nbproject/Makefile-local-EXP16.mk"
include nbproject/Makefile-local-EXP16.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=EXP16
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
SOURCEFILES_QUOTED_IF_SPACED=../HardwareProfile.c "../MiWi PRO Test Interface.c" ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../Microchip/WirelessProtocols/MSPI.c ../../../Microchip/WirelessProtocols/Console.c ../../../Microchip/WirelessProtocols/LCDBlocking.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/Transceivers/crc.c ../../../Microchip/Transceivers/security.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/HardwareProfile.o "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o" ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/35256690/MiWi.o ${OBJECTDIR}/_ext/1109514802/P2P.o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ${OBJECTDIR}/_ext/1466186449/MSPI.o ${OBJECTDIR}/_ext/1466186449/Console.o ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1127682237/crc.o ${OBJECTDIR}/_ext/1127682237/security.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o.d "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o.d" ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/1466186449/NVM.o.d ${OBJECTDIR}/_ext/35256690/MiWi.o.d ${OBJECTDIR}/_ext/1109514802/P2P.o.d ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d ${OBJECTDIR}/_ext/1466186449/MSPI.o.d ${OBJECTDIR}/_ext/1466186449/Console.o.d ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o.d ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d ${OBJECTDIR}/_ext/1127682237/crc.o.d ${OBJECTDIR}/_ext/1127682237/security.o.d ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d ${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/MiWi\ PRO\ Test\ Interface.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/35256690/MiWi.o ${OBJECTDIR}/_ext/1109514802/P2P.o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ${OBJECTDIR}/_ext/1466186449/MSPI.o ${OBJECTDIR}/_ext/1466186449/Console.o ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1127682237/crc.o ${OBJECTDIR}/_ext/1127682237/security.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o

# Source Files
SOURCEFILES=../HardwareProfile.c ../MiWi PRO Test Interface.c ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../Microchip/WirelessProtocols/MSPI.c ../../../Microchip/WirelessProtocols/Console.c ../../../Microchip/WirelessProtocols/LCDBlocking.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/Transceivers/crc.c ../../../Microchip/Transceivers/security.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c



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
	${MAKE}  -f nbproject/Makefile-EXP16.mk dist/${CND_CONF}/${IMAGE_TYPE}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  .generated_files/flags/EXP16/fbc5790a3981b11cafb343e4d16df2adef8a3a2 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" -o ${OBJECTDIR}/_ext/1472/HardwareProfile.o ../HardwareProfile.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/MiWi\ PRO\ Test\ Interface.o: ../MiWi\ PRO\ Test\ Interface.c  .generated_files/flags/EXP16/722f142154d541b8d4edae1b75f26290ee8323d5 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o".d 
	@${RM} "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o.d" -o "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o" "../MiWi PRO Test Interface.c"    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  .generated_files/flags/EXP16/1b579f109e2fca867d9cd13153ecbc9110c8d5bc .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  .generated_files/flags/EXP16/caf86761a7d315297afb34f9854691a1330d6e40 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/NVM.o.d" -o ${OBJECTDIR}/_ext/1466186449/NVM.o ../../../Microchip/WirelessProtocols/NVM.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/35256690/MiWi.o: ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  .generated_files/flags/EXP16/8582544085e44dff81b933dd08820c602a4dff59 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/35256690" 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/35256690/MiWi.o.d" -o ${OBJECTDIR}/_ext/35256690/MiWi.o ../../../Microchip/WirelessProtocols/MiWi/MiWi.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1109514802/P2P.o: ../../../Microchip/WirelessProtocols/P2P/P2P.c  .generated_files/flags/EXP16/598b86e3f7b0eea4a2a5d754f68a659833d79563 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1109514802" 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1109514802/P2P.o.d" -o ${OBJECTDIR}/_ext/1109514802/P2P.o ../../../Microchip/WirelessProtocols/P2P/P2P.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1935015231/MiWiPRO.o: ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  .generated_files/flags/EXP16/f72bf96ccb5600e8542377b857ebb79b3569b78c .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1935015231" 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/MSPI.o: ../../../Microchip/WirelessProtocols/MSPI.c  .generated_files/flags/EXP16/70dd2b2b71b061f4ac9ce4eca0e1176fb3d8cd1b .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" -o ${OBJECTDIR}/_ext/1466186449/MSPI.o ../../../Microchip/WirelessProtocols/MSPI.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/Console.o: ../../../Microchip/WirelessProtocols/Console.c  .generated_files/flags/EXP16/2a171fae6527e187bee573c1f007a64602f835fb .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/Console.o.d" -o ${OBJECTDIR}/_ext/1466186449/Console.o ../../../Microchip/WirelessProtocols/Console.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/LCDBlocking.o: ../../../Microchip/WirelessProtocols/LCDBlocking.c  .generated_files/flags/EXP16/96d461b005b59ac52dc44c85ffe04ee3a4b6231 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o ../../../Microchip/WirelessProtocols/LCDBlocking.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  .generated_files/flags/EXP16/124243cd327e03cbc565e27dc559f9d36dbc4fd6 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ../../../Microchip/WirelessProtocols/SymbolTime.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1127682237/crc.o: ../../../Microchip/Transceivers/crc.c  .generated_files/flags/EXP16/d4830bdbf9653f3759bf3464625cb65c1b1f1dae .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/crc.o.d" -o ${OBJECTDIR}/_ext/1127682237/crc.o ../../../Microchip/Transceivers/crc.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1127682237/security.o: ../../../Microchip/Transceivers/security.c  .generated_files/flags/EXP16/976d08859ad1b4aa88affb31778f316922eeadfa .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/security.o.d" -o ${OBJECTDIR}/_ext/1127682237/security.o ../../../Microchip/Transceivers/security.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  .generated_files/flags/EXP16/bf299e6e55ef1e91a49b6a77fcdc84aa28c02329 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1696884637/MRF49XA.o: ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  .generated_files/flags/EXP16/7103117a2ef6d54e6bbe044939cc6e43af8b8244 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1696884637" 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1697003801/MRF89XA.o: ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  .generated_files/flags/EXP16/425fe952cb9955fa498a48a90a630af93c725561 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1697003801" 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  .generated_files/flags/EXP16/50b76b9b3c10f063117cac18cdc99ab9694c2273 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d" -o ${OBJECTDIR}/_ext/1472/HardwareProfile.o ../HardwareProfile.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1472/MiWi\ PRO\ Test\ Interface.o: ../MiWi\ PRO\ Test\ Interface.c  .generated_files/flags/EXP16/85efa921a7d494f92a98552b7ad24d3d671e57a1 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o".d 
	@${RM} "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o.d" -o "${OBJECTDIR}/_ext/1472/MiWi PRO Test Interface.o" "../MiWi PRO Test Interface.c"    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  .generated_files/flags/EXP16/59bb0e56bca3f202b3137492548130a1b7037842 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d" -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  .generated_files/flags/EXP16/256173472cdf92a80a4c81d817a5fc64020d211f .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/NVM.o.d" -o ${OBJECTDIR}/_ext/1466186449/NVM.o ../../../Microchip/WirelessProtocols/NVM.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/35256690/MiWi.o: ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  .generated_files/flags/EXP16/3c2196d4d40e98277e26f8c8958b6d0658487030 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/35256690" 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/35256690/MiWi.o.d" -o ${OBJECTDIR}/_ext/35256690/MiWi.o ../../../Microchip/WirelessProtocols/MiWi/MiWi.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1109514802/P2P.o: ../../../Microchip/WirelessProtocols/P2P/P2P.c  .generated_files/flags/EXP16/599aa9d782e7287a367285d7cc27e37a63325130 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1109514802" 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1109514802/P2P.o.d" -o ${OBJECTDIR}/_ext/1109514802/P2P.o ../../../Microchip/WirelessProtocols/P2P/P2P.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1935015231/MiWiPRO.o: ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  .generated_files/flags/EXP16/5484f066aa8e3cbc6c9850670943242267970852 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1935015231" 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1935015231/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/1935015231/MiWiPRO.o ../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/MSPI.o: ../../../Microchip/WirelessProtocols/MSPI.c  .generated_files/flags/EXP16/ba295f1e932526c5e90c1dfa227e54cf66e6316b .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/MSPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/MSPI.o.d" -o ${OBJECTDIR}/_ext/1466186449/MSPI.o ../../../Microchip/WirelessProtocols/MSPI.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/Console.o: ../../../Microchip/WirelessProtocols/Console.c  .generated_files/flags/EXP16/d43325a542a2f17d528864e9807df99e5f80784c .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/Console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/Console.o.d" -o ${OBJECTDIR}/_ext/1466186449/Console.o ../../../Microchip/WirelessProtocols/Console.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/LCDBlocking.o: ../../../Microchip/WirelessProtocols/LCDBlocking.c  .generated_files/flags/EXP16/17d83c452c47f2d39bf5ad919918e68baf834b6a .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o ../../../Microchip/WirelessProtocols/LCDBlocking.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  .generated_files/flags/EXP16/4a6314486f36ae02f60e995672655758dabfc34d .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ../../../Microchip/WirelessProtocols/SymbolTime.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1127682237/crc.o: ../../../Microchip/Transceivers/crc.c  .generated_files/flags/EXP16/fa1ec4c798a30956c06676ced0d27350daf9b9af .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/crc.o.d" -o ${OBJECTDIR}/_ext/1127682237/crc.o ../../../Microchip/Transceivers/crc.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1127682237/security.o: ../../../Microchip/Transceivers/security.c  .generated_files/flags/EXP16/a0f6b3b412798dd609cf5a9b12cea035fc184629 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/security.o.d" -o ${OBJECTDIR}/_ext/1127682237/security.o ../../../Microchip/Transceivers/security.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  .generated_files/flags/EXP16/8030261db78da2a44d71715d21c7c573a928001e .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1696884637/MRF49XA.o: ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  .generated_files/flags/EXP16/1c61441f2329f2cb8c70c0936ede136ba34f9ac5 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1696884637" 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1697003801/MRF89XA.o: ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  .generated_files/flags/EXP16/e26ded6e04abd69cb14dea4fe4762fb155536248 .generated_files/flags/EXP16/3a56c052460e5f307c2712e9b7310134acfa1ad
	@${MKDIR} "${OBJECTDIR}/_ext/1697003801" 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fomit-frame-pointer -D_SUPPRESS_PLIB_WARNING -DEXPLORER16 -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/WirelessProtocols/MiWiPRO" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c    -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)    
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=_min_heap_size=2048,--defsym=_min_stack_size=2048,-L"..",-L".",-Map="${DISTDIR}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.map",--gc-sections 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_EXP16=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2048,--defsym=_min_stack_size=2048,-L"..",-L".",-Map="${DISTDIR}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.map",--gc-sections 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MiWi_PRO_Test_Interface_-_PIC32.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/EXP16
	${RM} -r dist/EXP16

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
