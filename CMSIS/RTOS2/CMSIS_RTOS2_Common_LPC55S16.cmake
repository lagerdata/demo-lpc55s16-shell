if(NOT CMSIS_RTOS2_COMMON_LPC55S16_INCLUDED)
    
    set(CMSIS_RTOS2_COMMON_LPC55S16_INCLUDED true CACHE BOOL "CMSIS_RTOS2_Common component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/RTX/Source/rtx_lib.c
        ${CMAKE_CURRENT_LIST_DIR}/RTX/Config/RTX_Config.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/RTX/Source
        ${CMAKE_CURRENT_LIST_DIR}/Include
        ${CMAKE_CURRENT_LIST_DIR}/RTX/Include
        ${CMAKE_CURRENT_LIST_DIR}/RTX/Config
    )


endif()
