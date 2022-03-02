add_library(vphysics SHARED
        ${SE_SRC_PATH}/vphysics/convert.cpp
        ${SE_SRC_PATH}/public/filesystem_helpers.cpp
        ${SE_SRC_PATH}/vphysics/ledgewriter.cpp
        ${SE_SRC_PATH}/vphysics/main.cpp
        ${SE_SRC_PATH}/vphysics/physics_airboat.cpp
        ${SE_SRC_PATH}/vphysics/physics_collide.cpp
        ${SE_SRC_PATH}/vphysics/physics_constraint.cpp
        ${SE_SRC_PATH}/vphysics/physics_controller_raycast_vehicle.cpp
        ${SE_SRC_PATH}/vphysics/physics_environment.cpp
        ${SE_SRC_PATH}/vphysics/physics_environment.cpp
        ${SE_SRC_PATH}/vphysics/physics_fluid.cpp
        ${SE_SRC_PATH}/vphysics/physics_friction.cpp
        ${SE_SRC_PATH}/vphysics/physics_material.cpp
        ${SE_SRC_PATH}/vphysics/physics_motioncontroller.cpp
        ${SE_SRC_PATH}/vphysics/physics_object.cpp
        ${SE_SRC_PATH}/vphysics/physics_shadow.cpp
        ${SE_SRC_PATH}/vphysics/physics_spring.cpp
        ${SE_SRC_PATH}/vphysics/physics_vehicle.cpp
        ${SE_SRC_PATH}/vphysics/physics_virtualmesh.cpp
        ${SE_SRC_PATH}/vphysics/trace.cpp
        ${SE_SRC_PATH}/vphysics/vcollide_parse.cpp
        ${SE_SRC_PATH}/vphysics/vphysics_saverestore.cpp
        )

target_compile_definitions(vphysics PRIVATE -DVPHYSICS_EXPORTS -DHAVANA_CONSTRAINTS -DHAVOK_MOPP)
target_link_libraries(vphysics PRIVATE platform_config tier0 havana_constraints hk_math hk_base ivp_compactbuilder ivp_physics tier1 tier2 vstdlib mathlib)
target_include_directories(vphysics PUBLIC
        ${SE_SRC_PATH}/vphysics
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/ivp/ivp_intern
        ${SE_SRC_PATH}/ivp/ivp_collision
        ${SE_SRC_PATH}/ivp/ivp_physics
        ${SE_SRC_PATH}/ivp/ivp_surface_manager
        ${SE_SRC_PATH}/ivp/ivp_utility
        ${SE_SRC_PATH}/ivp/ivp_controller
        ${SE_SRC_PATH}/ivp/ivp_compact_builder
        ${SE_SRC_PATH}/ivp/havana/havok
        ${SE_SRC_PATH}/ivp/havana
        )
install(TARGETS vphysics DESTINATION "./bin")