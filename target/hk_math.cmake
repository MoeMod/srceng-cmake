add_library(hk_math STATIC
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/lcp/lcp_solver.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/incr_lu/incr_lu.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/gauss_elimination/gauss_elimination.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/quaternion/quaternion.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/quaternion/quaternion_util.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/vector3/vector3.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/vector3/vector3_util.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/densematrix.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/densematrix_util.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/eulerangles.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/math.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/matrix3.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/odesolve.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/plane.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/rotation.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/spatial_matrix.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/spatial_vector.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math/transform.cpp
        )
target_include_directories(hk_math PRIVATE
        ${SE_SRC_PATH}/ivp/havana/havok/hk_math
        ${SE_SRC_PATH}/ivp/havana/havok
        )
target_compile_definitions(hk_math PRIVATE -DVPHYSICS_EXPORTS -DHAVANA_CONSTRAINTS -DHAVOK_MOPP)
target_link_libraries(hk_math PRIVATE platform_config)

if(CMAKE_BUILD_TYPE MATCHES "Debug")
    target_compile_definitions(hk_math PUBLIC -D_LIB -DHK_DEBUG)
endif()