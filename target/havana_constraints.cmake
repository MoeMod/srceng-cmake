add_library(havana_constraints STATIC
        ${SE_SRC_PATH}/ivp/havana/havok/hk_physics/constraint/constraint.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_physics/constraint/ball_socket/ball_socket_constraint.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_physics/constraint/limited_ball_socket/limited_ball_socket_constraint.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_physics/constraint/ragdoll/ragdoll_constraint.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_physics/constraint/ragdoll/ragdoll_constraint_bp_builder.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_physics/constraint/local_constraint_system/local_constraint_system.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_physics/constraint/hinge/hinge_bp_builder.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_physics/constraint/hinge/hinge_constraint.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_physics/constraint/breakable_constraint/breakable_constraint.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_physics/constraint/fixed/fixed_constraint.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_physics/constraint/prismatic/prismatic_constraint.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_physics/constraint/pulley/pulley_constraint.cpp
        ${SE_SRC_PATH}/ivp/havana/havok/hk_physics/constraint/stiff_spring/stiff_spring_constraint.cpp
        ${SE_SRC_PATH}/ivp/ivp_physics/hk_physics/core/rigid_body_core.cpp
        ${SE_SRC_PATH}/ivp/ivp_physics/hk_physics/effector/rigid_body_binary_effector.cpp
        )
target_include_directories(havana_constraints PUBLIC
        ${SE_SRC_PATH}/ivp/havana
        ${SE_SRC_PATH}/ivp/havana/havok
        ${SE_SRC_PATH}/ivp/ivp_physics
        ${SE_SRC_PATH}/ivp/ivp_utility
        ${SE_SRC_PATH}/ivp/ivp_controller
        )
target_compile_definitions(havana_constraints PRIVATE -DVPHYSICS_EXPORTS -DHAVANA_CONSTRAINTS -DHAVOK_MOPP -DIVP_VERSION_SDK)
target_link_libraries(havana_constraints PUBLIC platform_config)