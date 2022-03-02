add_library(appframework STATIC
        ${SE_SRC_PATH}/appframework/AppSystemGroup.cpp
        ${SE_SRC_PATH}/public/filesystem_init.cpp
        )
if(SE_WIN32)
    target_sources(appframework  PRIVATE
            ${SE_SRC_PATH}/appframework/vguimatsysapp.cpp
            ${SE_SRC_PATH}/appframework/winapp.cpp
            )
endif()
if(SE_POSIX)
    target_sources(appframework PRIVATE
            ${SE_SRC_PATH}/appframework/posixapp.cpp
            )
endif()
if(SE_SDL)
    target_sources(appframework PRIVATE
            ${SE_SRC_PATH}/appframework/sdlmgr.cpp
            )
endif()
if(SE_OSX)
    target_sources(appframework PRIVATE
            ${SE_SRC_PATH}/appframework/glmrendererinfo_osx.mm
            )
endif()
target_link_libraries(appframework PUBLIC platform_config video_config)
target_include_directories(appframework PUBLIC
        ${SE_SRC_PATH}/appframework
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        )
if(SE_SDL)
    target_link_libraries(appframework PUBLIC SDL2::SDL2)
endif()
if(SE_GL)
    target_link_libraries(appframework PUBLIC togl)
endif()
if(SE_OSX)
    target_link_libraries(appframework PUBLIC "-framework CoreVideo" "-framework OpenGL" "-framework IOKit")
endif()