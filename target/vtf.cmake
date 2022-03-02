add_library(vtf STATIC
        ${SE_SRC_PATH}/vtf/convert_x360.cpp
        ${SE_SRC_PATH}/vtf/vtf.cpp
        )
target_include_directories(vtf PUBLIC
        ${SE_SRC_PATH}/vtf
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        )
target_link_libraries(vtf PRIVATE platform_config)
if(SE_WIN32)
    target_sources(vtf PRIVATE
            ${SE_SRC_PATH}/vtf/s3tc_decode.cpp
            )
endif()