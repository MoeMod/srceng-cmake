add_executable(launcher_main
        ${SE_SRC_PATH}/launcher_main/main.cpp
        )
if(SE_WIN32)
    target_sources(launcher_main PRIVATE
            ${SE_SRC_PATH}/launcher_main/launcher_main.rc
            )
endif()
target_include_directories(launcher_main PUBLIC
        ${SE_SRC_PATH}/public
        )
target_link_libraries(launcher_main PRIVATE platform_config video_config)
if(SE_OSX)
    set_target_properties(launcher_main PROPERTIES
            PREFIX "" OUTPUT_NAME "hl2_osx")
elseif(SE_LINUX)
    set_target_properties(launcher_main PROPERTIES
            PREFIX "" OUTPUT_NAME "hl2_linux")
else()
    set_target_properties(launcher_main PROPERTIES
            PREFIX "" OUTPUT_NAME "hl2")
endif()
install(TARGETS launcher_main DESTINATION "./")