add_library(choreoobjects STATIC
        ${SE_SRC_PATH}/game/shared/choreoactor.cpp
        ${SE_SRC_PATH}/game/shared/choreochannel.cpp
        ${SE_SRC_PATH}/game/shared/choreoevent.cpp
        ${SE_SRC_PATH}/game/shared/choreoscene.cpp
        ${SE_SRC_PATH}/game/shared/sceneimage.cpp
        )
target_include_directories(choreoobjects PUBLIC
        ${SE_SRC_PATH}/choreoobjects
        ${SE_SRC_PATH}/game/shared
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/common
        ${SE_SRC_PATH}/utils/common
        )
target_link_libraries(choreoobjects PUBLIC platform_config)