add_library(vgui2 SHARED
        ${SE_SRC_PATH}/vgui2/src/Bitmap.cpp
        ${SE_SRC_PATH}/vgui2/src/Border.cpp
        ${SE_SRC_PATH}/vgui2/src/ScalableImageBorder.cpp
        ${SE_SRC_PATH}/vgui2/src/ImageBorder.cpp
        ${SE_SRC_PATH}/vgui2/src/fileimage.cpp
        ${SE_SRC_PATH}/public/filesystem_helpers.cpp
        ${SE_SRC_PATH}/public/filesystem_init.cpp
        ${SE_SRC_PATH}/vgui2/src/InputWin32.cpp
        ${SE_SRC_PATH}/vgui2/src/LocalizedStringTable.cpp
        ${SE_SRC_PATH}/vgui2/src/MemoryBitmap.cpp
        ${SE_SRC_PATH}/vgui2/src/MessageListener.cpp
        ${SE_SRC_PATH}/vgui2/src/Scheme.cpp
        ${SE_SRC_PATH}/public/UnicodeFileHelpers.cpp
        ${SE_SRC_PATH}/vgui2/src/vgui.cpp
        ${SE_SRC_PATH}/vgui2/src/vgui_internal.cpp
        ${SE_SRC_PATH}/vgui2/src/vgui_key_translation.cpp
        ${SE_SRC_PATH}/vgui2/src/VPanel.cpp
        ${SE_SRC_PATH}/vgui2/src/VPanelWrapper.cpp
        ${SE_SRC_PATH}/vgui2/src/keyrepeat.cpp
        )
if(SE_WIN32)
    target_sources(vgui2 PRIVATE
            ${SE_SRC_PATH}/vgui2/src/Surface.cpp
            ${SE_SRC_PATH}/vgui2/src/System.cpp
            )
endif()
if(SE_POSIX)
    target_sources(vgui2 PRIVATE
            ${SE_SRC_PATH}/vgui2/src/system_posix.cpp
            )
endif()
target_compile_definitions(vgui2 PRIVATE -DDONT_PROTECT_FILEIO_FUNCTIONS=1)
target_include_directories(vgui2 PUBLIC
        ${SE_SRC_PATH}/vgui2
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        )
target_link_libraries(vgui2 PRIVATE platform_config video_config tier0 tier1 tier2 tier3 vstdlib SDL2)
install(TARGETS vgui2 DESTINATION "./bin")