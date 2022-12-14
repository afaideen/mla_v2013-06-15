#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a pre- and a post- target defined where you can add customization code.
#
# This makefile implements macros and targets common to all configurations.
#
# NOCDDL


# Building and Cleaning subprojects are done by default, but can be controlled with the SUB
# macro. If SUB=no, subprojects will not be built or cleaned. The following macro
# statements set BUILD_SUB-CONF and CLEAN_SUB-CONF to .build-reqprojects-conf
# and .clean-reqprojects-conf unless SUB has the value 'no'
SUB_no=NO
SUBPROJECTS=${SUB_${SUB}}
BUILD_SUBPROJECTS_=.build-subprojects
BUILD_SUBPROJECTS_NO=
BUILD_SUBPROJECTS=${BUILD_SUBPROJECTS_${SUBPROJECTS}}
CLEAN_SUBPROJECTS_=.clean-subprojects
CLEAN_SUBPROJECTS_NO=
CLEAN_SUBPROJECTS=${CLEAN_SUBPROJECTS_${SUBPROJECTS}}


# Project Name
PROJECTNAME=MPLAB.X

# Active Configuration
DEFAULTCONF=Explorer_16_-_PIC32
CONF=${DEFAULTCONF}

# All Configurations
ALLCONFS=PIC18_Explorer PICDEM_Z Eight_bit_Wireless_Development_Kit Eight_bit_Wireless_Development_Kit_TEST Explorer_16_-_PIC24_or_dsPIC33 Explorer_16_-_PIC32 Explorer_16___PIC32_TEST MIWI_DEMO_KIT WIRELESS_EVAL_BOARD 


# build
.build-impl: .build-pre
	${MAKE} -f nbproject/Makefile-${CONF}.mk SUBPROJECTS=${SUBPROJECTS} .build-conf


# clean
.clean-impl: .clean-pre
	${MAKE} -f nbproject/Makefile-${CONF}.mk SUBPROJECTS=${SUBPROJECTS} .clean-conf

# clobber
.clobber-impl: .clobber-pre .depcheck-impl
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC18_Explorer clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PICDEM_Z clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=Eight_bit_Wireless_Development_Kit clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=Eight_bit_Wireless_Development_Kit_TEST clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=Explorer_16_-_PIC24_or_dsPIC33 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=Explorer_16_-_PIC32 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=Explorer_16___PIC32_TEST clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=MIWI_DEMO_KIT clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=WIRELESS_EVAL_BOARD clean



# all
.all-impl: .all-pre .depcheck-impl
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC18_Explorer build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PICDEM_Z build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=Eight_bit_Wireless_Development_Kit build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=Eight_bit_Wireless_Development_Kit_TEST build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=Explorer_16_-_PIC24_or_dsPIC33 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=Explorer_16_-_PIC32 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=Explorer_16___PIC32_TEST build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=MIWI_DEMO_KIT build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=WIRELESS_EVAL_BOARD build



# dependency checking support
.depcheck-impl:
#	@echo "# This code depends on make tool being used" >.dep.inc
#	@if [ -n "${MAKE_VERSION}" ]; then \
#	    echo "DEPFILES=\$$(wildcard \$$(addsuffix .d, \$${OBJECTFILES}))" >>.dep.inc; \
#	    echo "ifneq (\$${DEPFILES},)" >>.dep.inc; \
#	    echo "include \$${DEPFILES}" >>.dep.inc; \
#	    echo "endif" >>.dep.inc; \
#	else \
#	    echo ".KEEP_STATE:" >>.dep.inc; \
#	    echo ".KEEP_STATE_FILE:.make.state.\$${CONF}" >>.dep.inc; \
#	fi
