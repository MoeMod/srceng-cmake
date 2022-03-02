add_library(ivp_compactbuilder STATIC
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_compact_ledge_gen.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_compact_modify.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_compact_recursive.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_convex_decompositor.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_halfspacesoup.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_i_fpoint_vhash.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_i_point_vhash.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_object_polygon_tetra.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_rot_inertia_solver.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_surbuild_halfspacesoup.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_surbuild_ledge_soup.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_surbuild_pointsoup.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_surbuild_polygon_convex.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_surbuild_polyhdrn_cncv.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_surbuild_q12.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_templates_intern.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivp_tetra_intrude.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/ivv_cluster_min_hash.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/qhull.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/qhull_geom.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/qhull_geom2.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/qhull_global.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/qhull_io.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/qhull_mem.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/qhull_merge.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/qhull_poly.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/qhull_poly2.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/qhull_qset.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/qhull_stat.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/qhull_user.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/geompack_cutfac.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/geompack_cvdec3.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/geompack_drdec3.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/geompack_dsphdc.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/geompack_edght.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/geompack_initcb.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/geompack_insed3.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/geompack_insfac.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/geompack_insvr3.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/geompack_prime.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/geompack_ptpolg.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/geompack_resedg.cxx
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/3dsimport_co.cxx
        )
target_include_directories(ivp_compactbuilder PRIVATE
        ${SE_SRC_PATH}/ivp/ivp_compact_builder
        ${SE_SRC_PATH}/ivp/ivp_compact_builder/havok
        ${SE_SRC_PATH}/ivp/havana/havok
        ${SE_SRC_PATH}/ivp/ivp_physics
        ${SE_SRC_PATH}/ivp/ivp_utility
        ${SE_SRC_PATH}/ivp/ivp_controller
        ${SE_SRC_PATH}/ivp/ivp_surface_manager
        ${SE_SRC_PATH}/ivp/ivp_collision
        )
target_link_libraries(ivp_compactbuilder PRIVATE platform_config)