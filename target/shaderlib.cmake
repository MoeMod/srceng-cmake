add_library(shaderlib STATIC
        ${SE_SRC_PATH}/materialsystem/shaderlib/BaseShader.cpp
        ${SE_SRC_PATH}/materialsystem/shaderlib/ShaderDLL.cpp
        ${SE_SRC_PATH}/materialsystem/shaderlib/shaderlib_cvar.cpp
        )
target_include_directories(shaderlib PUBLIC
        ${SE_SRC_PATH}/materialsystem/shaderlib
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        ${SE_SRC_PATH}/materialsystem
        )
target_compile_definitions(shaderlib PRIVATE -DFAST_MATERIALVAR_ACCESS)
target_link_libraries(shaderlib PRIVATE platform_config)