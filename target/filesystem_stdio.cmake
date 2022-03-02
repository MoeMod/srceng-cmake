
add_library(filesystem_stdio SHARED
        ${SE_SRC_PATH}/filesystem/basefilesystem.cpp
        ${SE_SRC_PATH}/filesystem/packfile.cpp
        ${SE_SRC_PATH}/filesystem/filetracker.cpp
        ${SE_SRC_PATH}/filesystem/filesystem_async.cpp
        ${SE_SRC_PATH}/filesystem/filesystem_stdio.cpp
        ${SE_SRC_PATH}/filesystem/../public/kevvaluescompiler.cpp
        ${SE_SRC_PATH}/filesystem/../public/zip_utils.cpp
        ${SE_SRC_PATH}/filesystem/QueuedLoader.cpp
        ${SE_SRC_PATH}/public/tier0/memoverride.cpp
        )
if(SE_LINUX OR SE_OSX)
    target_sources(filesystem_stdio PRIVATE
            ${SE_SRC_PATH}/filesystem/linux_support.cpp
            )
endif()
target_include_directories(filesystem_stdio PUBLIC
        ${SE_SRC_PATH}/filesystem
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        )
target_compile_definitions(filesystem_stdio PRIVATE -DFILESYSTEM_STDIO_EXPORTS=1 -DDONT_PROTECT_FILEIO_FUNCTIONS=1 -D_USE_32BIT_TIME_T=1 -DSUPPORT_PACKED_STORE=1)
target_link_libraries(filesystem_stdio PRIVATE platform_config video_config tier0 tier1 tier2 vstdlib vpklib)
install(TARGETS filesystem_stdio DESTINATION "./bin")