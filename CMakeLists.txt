cmake_minimum_required(VERSION 3.20)

project(mla_v2013_06_15_index_only C)

set(CMAKE_C_STANDARD 99)

# =========================================================
# Active MPLAB X config:
# XC32_EVAL_BOARD_PROTOCOL_MIWI_PRO
# =========================================================

add_compile_definitions(
        PROTOCOL_MIWI_PRO
        CFG_INCLUDE_PIC32_EVAL_BOARD
        _SUPPRESS_PLIB_WARNING
        MIWI_HELPER
        XPRJ_XC32_EVAL_BOARD_PROTOCOL_MIWI_PRO=XC32_EVAL_BOARD_PROTOCOL_MIWI_PRO
        __PIC32MX__
        __32MX695F512L__
)

# =========================================================
# Include paths copied from MPLAB X build log
# =========================================================

include_directories(
        "Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board"
        "Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board/Configs"
        "Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board/LocalFiles"
        "Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board/MiWiToWiFiGatewayDemo"
        "Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board/MiWiToWiFiGatewayDemo/Helper"

        "Microchip/Include"
        "Microchip/Include/TCPIP Stack"
        "Microchip/Include/WirelessProtocols"
        "Microchip/Include/WirelessProtocols/MiWiPRO"
        "Microchip/Include/Transceivers"

        "TCPIP/WiFi EZConfig"
)

set(APP_DIR
        "Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board"
)

set(PROJ_DIR
        "Combo/MiWi Protocol to WiFi Wireless Demo Kit/Wireless_Eval_Board/MiWiToWiFiGatewayDemo"
)

# =========================================================
# Important application/demo files
# =========================================================

set(APP_SOURCES
        "${APP_DIR}/MainDemoTest.c"
        "${APP_DIR}/DemoOutput.c"
        "${APP_DIR}/BerkeleyTCPClientDemo.c"
        "${APP_DIR}/BerkeleyTCPServerDemo.c"
        "${APP_DIR}/BerkeleyUDPClientDemo.c"
        "${APP_DIR}/GenericTCPClient.c"
        "${APP_DIR}/CustomHTTPApp.c"
        "${APP_DIR}/LCD_ST7032.c"
        "${APP_DIR}/MPFSImg2.c"
        "${APP_DIR}/SelfTestMode.c"
        "${APP_DIR}/Storage.c"
        "${APP_DIR}/UARTConfig.c"
        "${APP_DIR}/WF_Config.c"

        "${APP_DIR}/LocalFiles/MRF24J40.c"
        "${APP_DIR}/LocalFiles/DHCP.c"
        "${APP_DIR}/LocalFiles/DHCPs.c"

        "${PROJ_DIR}/Helper/MyHelper.c"
)

# =========================================================
# MiWi / MiWi PRO stack files
# =========================================================

set(MIWI_SOURCES
        "Microchip/WirelessProtocols/MiWiHelper.c"
        "Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c"
        "Microchip/WirelessProtocols/MiWi/MiWi.c"
        "Microchip/WirelessProtocols/P2P/P2P.c"
        "Microchip/WirelessProtocols/Console.c"
        "Microchip/WirelessProtocols/EEPROM.c"
        "Microchip/WirelessProtocols/MSPI.c"
        "Microchip/WirelessProtocols/NVM.c"
        "Microchip/WirelessProtocols/SymbolTime.c"
)

# =========================================================
# Radio/transceiver support
# =========================================================

set(RADIO_SOURCES
        "Microchip/Transceivers/crc.c"
        "Microchip/Transceivers/security.c"
        "Microchip/Transceivers/MRF49XA/MRF49XA.c"
        "Microchip/Transceivers/MRF89XA/MRF89XA.c"
)

# =========================================================
# Index-only target
# Do not use this as official firmware build.
# Official build is still MPLAB X make via External Tool.
# =========================================================

add_executable(miwi_index_only
        ${APP_SOURCES}
        ${MIWI_SOURCES}
        ${RADIO_SOURCES}
)