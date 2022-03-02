add_library(togl SHARED
        ${SE_SRC_PATH}/togl/linuxwin/dx9asmtogl2.cpp
        ${SE_SRC_PATH}/togl/linuxwin/dxabstract.cpp
        ${SE_SRC_PATH}/togl/linuxwin/glentrypoints.cpp
        ${SE_SRC_PATH}/togl/linuxwin/glmgr.cpp
        ${SE_SRC_PATH}/togl/linuxwin/glmgrbasics.cpp
        ${SE_SRC_PATH}/togl/linuxwin/cglmtex.cpp
        ${SE_SRC_PATH}/togl/linuxwin/cglmfbo.cpp
        ${SE_SRC_PATH}/togl/linuxwin/cglmprogram.cpp
        ${SE_SRC_PATH}/togl/linuxwin/cglmbuffer.cpp
        ${SE_SRC_PATH}/togl/linuxwin/cglmquery.cpp
        ${SE_SRC_PATH}/togl/linuxwin/asanstubs.cpp
        )
if(SE_OSX)
    target_sources(togl PRIVATE
            ${SE_SRC_PATH}/togl/linuxwin/glmgrcocoa.mm
            ${SE_SRC_PATH}/togl/linuxwin/intelglmallocworkaround.cpp

            # M1 Mac doesnt support this
            #${SE_SRC_PATH}/togl/linuxwin/mach_override.c
            )
endif()
target_include_directories(togl PUBLIC
        ${SE_SRC_PATH}/togl
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        )
target_compile_definitions(togl PRIVATE -DTOGL_DLL_EXPORT=1)
target_compile_definitions(togl PRIVATE -Dstrncpy=use_Q_strncpy_instead -D_snprintf=use_Q_snprintf_instead)
target_link_libraries(togl PUBLIC platform_config video_config tier0 tier1 tier2 vstdlib mathlib)
if(SE_SDL)
    target_link_libraries(togl PUBLIC SDL2::SDL2)
endif()
if(SE_OSX)
    target_link_libraries(togl PUBLIC "-framework CoreVideo" "-framework OpenGL")
    # MoeMod : why are you still using Carbon???
    target_link_libraries(togl PUBLIC "-framework Carbon")
endif()
install(TARGETS togl DESTINATION "./bin")