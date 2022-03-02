add_library(hk_base STATIC
        ${SE_SRC_PATH}/ivp/havana/havok/hk_base/memory/memory.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_base/memory/memory_util.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_base/array/array.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_base/hash/hash.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_base/stopwatch/stopwatch.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_base/string/string.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_base/id_server/id_server.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_base/base_types.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_base/console.cpp
        )
target_include_directories(hk_base PRIVATE
        ${SE_SRC_PATH}/ivp/havana/havok/hk_base
        ${SE_SRC_PATH}/ivp/havana/havok
        )
target_compile_definitions(hk_base PRIVATE -DVPHYSICS_EXPORTS -DHAVANA_CONSTRAINTS -DHAVOK_MOPP)
target_link_libraries(hk_base PRIVATE platform_config)
