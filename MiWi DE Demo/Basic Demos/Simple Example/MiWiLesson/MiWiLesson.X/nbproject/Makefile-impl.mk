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
PROJECTNAME=MiWiLesson.X

# Active Configuration
DEFAULTCONF=EX16_32MX_COORDINATOR
CONF=${DEFAULTCONF}

# All Configurations
ALLCONFS=PIC18_Explorer PICDEM_Z Eight_bit_Wireless_Development_Kit Explorer_16_-_PIC24_or_dsPIC33 EX16_32MX_COORDINATOR 32MX_WLESS_EVAL_BRD_PAN EX16_32MX_ENDDEVICE MIWI_DEMO_BRD_18F_ENDDEVICE 


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
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=Explorer_16_-_PIC24_or_dsPIC33 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=EX16_32MX_COORDINATOR clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=32MX_WLESS_EVAL_BRD_PAN clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=EX16_32MX_ENDDEVICE clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=MIWI_DEMO_BRD_18F_ENDDEVICE clean



# all
.all-impl: .all-pre .depcheck-impl
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC18_Explorer build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PICDEM_Z build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=Eight_bit_Wireless_Development_Kit build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=Explorer_16_-_PIC24_or_dsPIC33 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=EX16_32MX_COORDINATOR build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=32MX_WLESS_EVAL_BRD_PAN build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=EX16_32MX_ENDDEVICE build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=MIWI_DEMO_BRD_18F_ENDDEVICE build



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
