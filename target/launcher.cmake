add_library(launcher SHARED
        ${SE_SRC_PATH}/public/filesystem_init.cpp
        ${SE_SRC_PATH}/launcher/launcher.cpp
        ${SE_SRC_PATH}/launcher/reslistgenerator.cpp
        )
if(SE_ANDROID)
    target_sources(launcher PRIVATE
            ${SE_SRC_PATH}/launcher/android.cpp
            )
endif()
target_include_directories(launcher PUBLIC
        ${SE_SRC_PATH}/launcher
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        )
target_link_libraries(launcher PRIVATE platform_config video_config tier0 tier1 tier2 tier3 vstdlib steam_api appframework SDL2 togl)
install(TARGETS launcher DESTINATION "./bin")