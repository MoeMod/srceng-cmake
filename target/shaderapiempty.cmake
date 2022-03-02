add_library(shaderapiempty SHARED
        ${SE_SRC_PATH}/materialsystem/shaderapiempty/shaderapiempty.cpp
        )
target_include_directories(shaderapiempty PUBLIC
        ${SE_SRC_PATH}/materialsystem/shaderapiempty
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        ${SE_SRC_PATH}/materialsystem
        )
target_compile_definitions(shaderapiempty PRIVATE -DSHADER_DLL_EXPORT)
target_link_libraries(shaderapiempty PRIVATE tier0 tier1)
install(TARGETS shaderapiempty DESTINATION "./bin")