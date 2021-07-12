if(NOT CMSIS_DRIVER_INCLUDE_GPIO_LPC55S16_INCLUDED)
    
    set(CMSIS_DRIVER_INCLUDE_GPIO_LPC55S16_INCLUDED true CACHE BOOL "CMSIS_Driver_Include_GPIO component is included.")


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )

    include(CMSIS_Driver_Include_Common_LPC55S16)

endif()