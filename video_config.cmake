
option(SE_GL "Use DX2GL Translate" ON)
option(SE_SDL "Use SDL" ON)
option(SE_TOGLES "Use TOGLES" OFF)

add_library(video_config INTERFACE)

if(SE_GL)
    target_compile_definitions(video_config INTERFACE -DDX_TO_GL_ABSTRACTION -DGL_GLEXT_PROTOTYPES -DBINK_VIDEO)
endif()

if(SE_TOGLES)
    target_compile_definitions(video_config INTERFACE -DTOGLES)
endif()

if(SE_SDL)
    target_compile_definitions(video_config INTERFACE -DUSE_SDL)
endif()