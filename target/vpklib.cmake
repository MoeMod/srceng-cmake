add_library(vpklib STATIC
        ${SE_SRC_PATH}/vpklib/packedstore.cpp
        ${SE_SRC_PATH}/common/simplebitstring.cpp
        )
target_link_libraries(vpklib PRIVATE platform_config)
target_include_directories(vpklib PUBLIC
        ${SE_SRC_PATH}/vpklib
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        )