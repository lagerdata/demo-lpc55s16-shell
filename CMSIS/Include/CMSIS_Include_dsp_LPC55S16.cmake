if(NOT CMSIS_INCLUDE_DSP_LPC55S16_INCLUDED)
    
    set(CMSIS_INCLUDE_DSP_LPC55S16_INCLUDED true CACHE BOOL "CMSIS_Include_dsp component is included.")


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )

endif()
