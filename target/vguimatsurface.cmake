add_library(vguimatsurface SHARED
        ${SE_SRC_PATH}/vguimatsurface/Clip2D.cpp
        ${SE_SRC_PATH}/vguimatsurface/Cursor.cpp
        ${SE_SRC_PATH}/vguimatsurface/../public/filesystem_helpers.cpp
        ${SE_SRC_PATH}/vguimatsurface/FontTextureCache.cpp
        ${SE_SRC_PATH}/vguimatsurface/Input.cpp
        ${SE_SRC_PATH}/vguimatsurface/MatSystemSurface.cpp
        ${SE_SRC_PATH}/vguimatsurface/asanstubs.cpp
        ${SE_SRC_PATH}/vguimatsurface/TextureDictionary.cpp
        ${SE_SRC_PATH}/vgui2/src/vgui_key_translation.cpp
        ${SE_SRC_PATH}/public/vgui_controls/vgui_controls.cpp
        )
if(SE_WIN32)
    target_sources(vguimatsurface PRIVATE
            ${SE_SRC_PATH}/vguimatsurface/memorybitmap.cpp
            )
endif()
target_include_directories(vguimatsurface PUBLIC
        ${SE_SRC_PATH}/vguimatsurface
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        )
target_link_libraries(vguimatsurface PRIVATE platform_config video_config tier0 tier1 tier2 tier3 vstdlib mathlib bitmap vgui_surfacelib vgui_controls SDL2)
install(TARGETS vguimatsurface DESTINATION "./bin")