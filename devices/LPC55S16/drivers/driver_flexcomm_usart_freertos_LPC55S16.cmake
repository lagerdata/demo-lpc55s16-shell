if(NOT DRIVER_FLEXCOMM_USART_FREERTOS_LPC55S16_INCLUDED)
    
    set(DRIVER_FLEXCOMM_USART_FREERTOS_LPC55S16_INCLUDED true CACHE BOOL "driver_flexcomm_usart_freertos component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/fsl_usart_freertos.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )


    include(driver_flexcomm_LPC55S16)

    include(driver_flexcomm_usart_LPC55S16)

    include(middleware_freertos-kernel_LPC55S16)

endif()
