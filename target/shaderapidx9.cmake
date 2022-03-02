add_library(shaderapidx9 SHARED
        ${SE_SRC_PATH}/materialsystem/shaderapidx9/colorformatdx8.cpp
        ${SE_SRC_PATH}/public/filesystem_helpers.cpp
        ${SE_SRC_PATH}/materialsystem/shaderapidx9/hardwareconfig.cpp
        ${SE_SRC_PATH}/materialsystem/shaderapidx9/meshbase.cpp
        ${SE_SRC_PATH}/materialsystem/shaderapidx9/meshdx8.cpp
        ${SE_SRC_PATH}/materialsystem/shaderapidx9/shaderapidx8.cpp
        ${SE_SRC_PATH}/materialsystem/shaderapidx9/shaderdevicebase.cpp
        ${SE_SRC_PATH}/materialsystem/shaderapidx9/shaderapibase.cpp
        ${SE_SRC_PATH}/materialsystem/shaderapidx9/shaderdevicedx8.cpp
        ${SE_SRC_PATH}/materialsystem/shaderapidx9/shadershadowdx8.cpp
        ${SE_SRC_PATH}/materialsystem/shaderapidx9/texturedx8.cpp
        ${SE_SRC_PATH}/materialsystem/shaderapidx9/TransitionTable.cpp
        ${SE_SRC_PATH}/materialsystem/shaderapidx9/cvballoctracker.cpp
        ${SE_SRC_PATH}/materialsystem/shaderapidx9/vertexdecl.cpp
        ${SE_SRC_PATH}/materialsystem/shaderapidx9/vertexshaderdx8.cpp
        ${SE_SRC_PATH}/materialsystem/shaderapidx9/winutils.cpp
        )
if(SE_WIN32 AND NOT SE_GL)
    target_sources(shaderapidx9 PRIVATE
            ${SE_SRC_PATH}/materialsystem/shaderapidx9/recording.cpp
            ${SE_SRC_PATH}/materialsystem/shaderapidx9/wmi.cpp
            )
endif()
if(NOT SE_WIN32)
    target_sources(shaderapidx9 PRIVATE
            ${SE_SRC_PATH}/materialsystem/shaderapidx9/winutils.cpp
            )
endif()
target_include_directories(shaderapidx9 PUBLIC
        ${SE_SRC_PATH}/materialsystem/shaderapidx9
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        ${SE_SRC_PATH}/materialsystem
        )
target_compile_definitions(shaderapidx9 PRIVATE -DSHADERAPIDX9 -DSHADER_DLL_EXPORT -Dstrncpy=use_Q_strncpy_instead -D_snprintf=use_Q_snprintf_instead)
target_link_libraries(shaderapidx9 PRIVATE tier0 tier1 tier2 vstdlib togl bitmap mathlib SDL2::SDL2)
install(TARGETS shaderapidx9 DESTINATION "./bin")