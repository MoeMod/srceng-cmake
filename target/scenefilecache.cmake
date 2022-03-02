
add_library(scenefilecache SHARED
        ${SE_SRC_PATH}/scenefilecache/SceneFileCache.cpp
        )
target_include_directories(scenefilecache PUBLIC
        ${SE_SRC_PATH}/scenefilecache
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/game/shared
        )
#target_compile_definitions(scenefilecache PRIVATE -D_WINDOWS)  # WTF? this defined in original vpc file
target_link_libraries(scenefilecache PRIVATE platform_config tier0 tier1 vstdlib)
install(TARGETS scenefilecache DESTINATION "./bin")