add_library(materialsystem SHARED
       ${SE_SRC_PATH}/materialsystem/CColorCorrection.cpp
       ${SE_SRC_PATH}/materialsystem/cmaterial.cpp
       ${SE_SRC_PATH}/materialsystem/cmaterial_queuefriendly.cpp
       ${SE_SRC_PATH}/materialsystem/CMaterialSubRect.cpp
       ${SE_SRC_PATH}/materialsystem/cmaterialvar.cpp
       ${SE_SRC_PATH}/materialsystem/cmatnullrendercontext.cpp
       ${SE_SRC_PATH}/materialsystem/colorspace.cpp
       ${SE_SRC_PATH}/materialsystem/ctexture.cpp
       ${SE_SRC_PATH}/public/filesystem_helpers.cpp
       ${SE_SRC_PATH}/materialsystem/imagepacker.cpp
       ${SE_SRC_PATH}/materialsystem/mat_stub.cpp
       ${SE_SRC_PATH}/materialsystem/materialsystem_global.cpp
       ${SE_SRC_PATH}/materialsystem/morph.cpp
       ${SE_SRC_PATH}/materialsystem/occlusionquerymgr.cpp
       ${SE_SRC_PATH}/materialsystem/shadersystem.cpp
       ${SE_SRC_PATH}/materialsystem/texturemanager.cpp
       ${SE_SRC_PATH}/materialsystem/pch_materialsystem.cpp
       ${SE_SRC_PATH}/materialsystem/cmaterialdict.cpp
       ${SE_SRC_PATH}/materialsystem/cmaterialsystem.cpp
       ${SE_SRC_PATH}/materialsystem/cmatlightmaps.cpp
       ${SE_SRC_PATH}/materialsystem/cmatrendercontext.cpp
       ${SE_SRC_PATH}/materialsystem/cmatqueuedrendercontext.cpp
       ${SE_SRC_PATH}/materialsystem/ctexturecompositor.cpp
        )
target_include_directories(materialsystem PUBLIC
        ${SE_SRC_PATH}/materialsystem
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        )
target_link_libraries(materialsystem PRIVATE platform_config video_config tier0 tier1 vstdlib bitmap shaderlib vtf togl SDL2::SDL2)
install(TARGETS materialsystem DESTINATION "./bin")