if(NOT DRIVER_CMSIS_FLEXCOMM_SPI_LPC55S16_INCLUDED)
    
    set(DRIVER_CMSIS_FLEXCOMM_SPI_LPC55S16_INCLUDED true CACHE BOOL "driver_cmsis_flexcomm_spi component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/fsl_spi_cmsis.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )


    include(driver_flexcomm_spi_dma_LPC55S16)

    include(CMSIS_Driver_Include_SPI_LPC55S16)

endif()
