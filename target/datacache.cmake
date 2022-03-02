add_library(datacache SHARED
        ${SE_SRC_PATH}/datacache/datacache.cpp
        ${SE_SRC_PATH}/datacache/mdlcache.cpp
        ${SE_SRC_PATH}/public/studio.cpp
        ${SE_SRC_PATH}/public/studio_virtualmodel.cpp
        ${SE_SRC_PATH}/common/studiobyteswap.cpp
        )
target_include_directories(datacache PUBLIC
        ${SE_SRC_PATH}/datacache
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        )
target_link_libraries(datacache PUBLIC platform_config tier0 tier1 tier2 tier3)
install(TARGETS datacache DESTINATION "./bin")