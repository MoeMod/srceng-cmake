add_library(studiorender SHARED
        ${SE_SRC_PATH}/studiorender/studiorender.cpp
        ${SE_SRC_PATH}/studiorender/studiorendercontext.cpp
        ${SE_SRC_PATH}/studiorender/flexrenderdata.cpp
        ${SE_SRC_PATH}/studiorender/r_studio.cpp
        ${SE_SRC_PATH}/studiorender/r_studiodecal.cpp
        ${SE_SRC_PATH}/studiorender/r_studiodraw.cpp
        ${SE_SRC_PATH}/studiorender/r_studiodraw_computeflexedvertex.cpp
        ${SE_SRC_PATH}/studiorender/r_studioflex.cpp
        ${SE_SRC_PATH}/studiorender/r_studiogettriangles.cpp
        ${SE_SRC_PATH}/studiorender/r_studiolight.cpp
        ${SE_SRC_PATH}/studiorender/r_studiostats.cpp
        )
target_include_directories(studiorender PUBLIC
        ${SE_SRC_PATH}/studiorender
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        )
target_link_libraries(studiorender PRIVATE platform_config tier0 tier1 tier2 tier3 vstdlib mathlib bitmap)
install(TARGETS studiorender DESTINATION "./bin")