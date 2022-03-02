
add_library(particles STATIC
    ${SE_SRC_PATH}/particles/builtin_constraints.cpp
    ${SE_SRC_PATH}/particles/builtin_initializers.cpp
    ${SE_SRC_PATH}/particles/builtin_particle_emitters.cpp
    ${SE_SRC_PATH}/particles/builtin_particle_forces.cpp
    ${SE_SRC_PATH}/particles/addbuiltin_ops.cpp
    ${SE_SRC_PATH}/particles/builtin_particle_ops.cpp
    ${SE_SRC_PATH}/particles/builtin_particle_render_ops.cpp
    ${SE_SRC_PATH}/particles/particle_sort.cpp
    ${SE_SRC_PATH}/particles/particles.cpp
    ${SE_SRC_PATH}/particles/psheet.cpp
    )

target_include_directories(particles PUBLIC
        ${SE_SRC_PATH}/particles
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/common
        )
target_link_libraries(particles PUBLIC platform_config vstdlib)