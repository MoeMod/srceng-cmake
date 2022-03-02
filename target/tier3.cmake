add_library(tier3 STATIC
        ${SE_SRC_PATH}/tier3/tier3.cpp
        ${SE_SRC_PATH}/tier3/mdlutils.cpp
        ${SE_SRC_PATH}/tier3/choreoutils.cpp
        ${SE_SRC_PATH}/tier3/scenetokenprocessor.cpp
        ${SE_SRC_PATH}/tier3/studiohdrstub.cpp
        )
target_link_libraries(tier3 PUBLIC platform_config)
target_include_directories(tier3 PUBLIC
        ${SE_SRC_PATH}/tier2
        ${SE_SRC_PATH}/common
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/public/tier2
        ${SE_SRC_PATH}/public/tier3
        )