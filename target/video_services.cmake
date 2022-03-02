add_library(video_services SHARED
        ${SE_SRC_PATH}/video/videoservices.cpp
        )
target_include_directories(video_services PUBLIC
        ${SE_SRC_PATH}/video
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        )
target_link_libraries(video_services PUBLIC platform_config video_config tier0 tier1 tier2 tier3 vstdlib SDL2)
install(TARGETS video_services DESTINATION "./bin")