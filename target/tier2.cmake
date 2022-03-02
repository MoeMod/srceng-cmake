add_library(tier2 STATIC
        ${SE_SRC_PATH}/tier2/beamsegdraw.cpp
        ${SE_SRC_PATH}/tier2/defaultfilesystem.cpp
        ${SE_SRC_PATH}/tier2/dmconnect.cpp
        ${SE_SRC_PATH}/tier2/fileutils.cpp
        ${SE_SRC_PATH}/tier2/keybindings.cpp
        ${SE_SRC_PATH}/public/map_utils.cpp
        ${SE_SRC_PATH}/public/materialsystem/MaterialSystemUtil.cpp
        ${SE_SRC_PATH}/tier2/camerautils.cpp
        ${SE_SRC_PATH}/tier2/meshutils.cpp
        ${SE_SRC_PATH}/tier2/p4helpers.cpp
        ${SE_SRC_PATH}/tier2/renderutils.cpp
        ${SE_SRC_PATH}/tier2/riff.cpp
        ${SE_SRC_PATH}/tier2/soundutils.cpp
        ${SE_SRC_PATH}/tier2/tier2.cpp
        ${SE_SRC_PATH}/tier2/util_init.cpp
        ${SE_SRC_PATH}/tier2/utlstreambuffer.cpp
        ${SE_SRC_PATH}/tier2/vconfig.cpp
        ${SE_SRC_PATH}/tier2/keyvaluesmacros.cpp
        )
target_link_libraries(tier2 PUBLIC platform_config)
target_include_directories(tier2 PUBLIC
        ${SE_SRC_PATH}/tier2
        ${SE_SRC_PATH}/common
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/public/tier2
        )