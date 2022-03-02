add_library(vgui_surfacelib STATIC
        ${SE_SRC_PATH}/vgui2/vgui_surfacelib/BitmapFont.cpp
        ${SE_SRC_PATH}/vgui2/vgui_surfacelib/FontAmalgam.cpp
        ${SE_SRC_PATH}/vgui2/vgui_surfacelib/FontManager.cpp
        ${SE_SRC_PATH}/vgui2/vgui_surfacelib/FontEffects.cpp
        )
if(SE_WIN32)
    target_sources(vgui_surfacelib PRIVATE
            ${SE_SRC_PATH}/vgui2/vgui_surfacelib/Win32Font.cpp
            )
endif()
if(SE_OSX)
    target_sources(vgui_surfacelib PRIVATE
            # MoeMod : We dont use Carbon API any more...
            #${SE_SRC_PATH}/vgui2/vgui_surfacelib/osxfont.cpp
            ${SE_SRC_PATH}/vgui2/vgui_surfacelib/linuxfont.cpp
            )
endif()
if(SE_LINUX)
    target_sources(vgui_surfacelib PRIVATE
            ${SE_SRC_PATH}/vgui2/vgui_surfacelib/linuxfont.cpp
            )
endif()
target_include_directories(vgui_surfacelib PRIVATE
        ${SE_SRC_PATH}/vgui2
        ${SE_SRC_PATH}/common
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        )
target_link_libraries(vgui_surfacelib PUBLIC platform_config video_config FT2 FC)