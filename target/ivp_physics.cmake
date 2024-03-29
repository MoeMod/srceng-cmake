add_library(ivp_physics STATIC
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_3d_solver.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_clustering_longrange.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_clustering_lrange_hash.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_clustering_visual_hash.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_clustering_visualizer.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_coll_del_root_mindist.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_collision_filter.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_compact_ledge.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_compact_ledge_solver.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_i_collision_vhash.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_mindist.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_mindist_debug.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_mindist_event.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_mindist_mcases.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_mindist_minimize.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_mindist_recursive.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_oo_watcher.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_range_manager.cxx
        ${SE_SRC_PATH}/ivp/ivp_collision/ivp_ray_solver.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_actuator.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_actuator_spring.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_buoyancy_solver.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_car_system.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_constraint.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_constraint_car.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_constraint_fixed_keyed.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_constraint_local.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_controller_airboat.cpp
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_controller_buoyancy.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_controller_floating.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_controller_motion.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_controller_raycast_car.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_controller_stiff_spring.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_controller_world_frict.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_forcefield.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_multidimensional_interp.cxx
        ${SE_SRC_PATH}/ivp/ivp_controller/ivp_template_constraint.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_ball.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_calc_next_psi_solver.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_controller_phantom.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_core.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_environment.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_friction.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_friction_gaps.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_great_matrix.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_hull_manager.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_i_friction_hash.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_i_object_vhash.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_impact.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_merge_core.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_mindist_friction.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_object.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_object_attach.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_physic.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_physic_private.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_polygon.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_sim_unit.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_solver_core_reaction.cxx
        ${SE_SRC_PATH}/ivp/ivp_intern/ivp_time.cxx
        ${SE_SRC_PATH}/ivp/ivp_physics/ivp_anomaly_manager.cxx
        ${SE_SRC_PATH}/ivp/ivp_physics/ivp_betterdebugmanager.cxx
        ${SE_SRC_PATH}/ivp/ivp_physics/ivp_betterstatisticsmanager.cxx
        ${SE_SRC_PATH}/ivp/ivp_physics/ivp_cache_object.cxx
        ${SE_SRC_PATH}/ivp/ivp_physics/ivp_liquid_surface_descript.cxx
        ${SE_SRC_PATH}/ivp/ivp_physics/ivp_material.cxx
        ${SE_SRC_PATH}/ivp/ivp_physics/ivp_performancecounter.cxx
        ${SE_SRC_PATH}/ivp/ivp_physics/ivp_stat_manager_cback_con.cxx
        ${SE_SRC_PATH}/ivp/ivp_physics/ivp_surface_manager.cxx
        ${SE_SRC_PATH}/ivp/ivp_physics/ivp_templates.cxx
        ${SE_SRC_PATH}/ivp/ivp_surface_manager/ivp_compact_surface.cxx
        ${SE_SRC_PATH}/ivp/ivp_surface_manager/ivp_gridbuild_array.cxx
        ${SE_SRC_PATH}/ivp/ivp_surface_manager/ivp_surman_grid.cxx
        ${SE_SRC_PATH}/ivp/ivp_surface_manager/ivp_surman_polygon.cxx
        ${SE_SRC_PATH}/ivp/ivp_utility/ivu_active_value.cxx
        ${SE_SRC_PATH}/ivp/ivp_utility/ivu_bigvector.cxx
        ${SE_SRC_PATH}/ivp/ivp_utility/ivu_geometry.cxx
        ${SE_SRC_PATH}/ivp/ivp_utility/ivu_hash.cxx
        ${SE_SRC_PATH}/ivp/ivp_utility/ivu_linear.cxx
        ${SE_SRC_PATH}/ivp/ivp_utility/ivu_memory.cxx
        ${SE_SRC_PATH}/ivp/ivp_utility/ivu_min_hash.cxx
        ${SE_SRC_PATH}/ivp/ivp_utility/ivu_min_list.cxx
        ${SE_SRC_PATH}/ivp/ivp_utility/ivu_os_dep.cxx
        ${SE_SRC_PATH}/ivp/ivp_utility/ivu_quat.cxx
        ${SE_SRC_PATH}/ivp/ivp_utility/ivu_string.cxx
        ${SE_SRC_PATH}/ivp/ivp_utility/ivu_types.cxx
        ${SE_SRC_PATH}/ivp/ivp_utility/ivu_vector.cxx
        ${SE_SRC_PATH}/ivp/ivp_utility/ivu_vhash.cxx
        )
target_include_directories(ivp_physics PRIVATE
        ${SE_SRC_PATH}/ivp/ivp_physics/havok
        ${SE_SRC_PATH}/ivp/ivp_physics
        ${SE_SRC_PATH}/ivp/ivp_utility
        ${SE_SRC_PATH}/ivp/ivp_controller
        ${SE_SRC_PATH}/ivp/ivp_collision
        ${SE_SRC_PATH}/ivp/ivp_surface_manager
        ${SE_SRC_PATH}/ivp/ivp_compact_builder
        ${SE_SRC_PATH}/ivp/ivp_intern
        ${SE_SRC_PATH}/ivp/havana/havok
        )
target_compile_definitions(ivp_physics PUBLIC -DVPHYSICS_EXPORTS -DHAVANA_CONSTRAINTS -DHAVOK_MOPP -DIVP_VERSION_SDK)
target_link_libraries(ivp_physics PRIVATE platform_config)
