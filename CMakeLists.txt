project(srceng)
cmake_minimum_required(VERSION  3.10.2)

set(SE_SRC_PATH "${CMAKE_SOURCE_DIR}/source-engine" CACHE PATH "Path to source-engine")

set(CMAKE_CXX_STANDARD 17)
if(MSVC)
    add_compile_options(/wd4091 /wd4819 /wd4828 /wd5033)
endif()

include(thirdparty.cmake)
include(platform_config.cmake)
include(video_config.cmake)

include(target/tier0.cmake)
include(target/tier1.cmake)
include(target/tier2.cmake)
include(target/tier3.cmake)
include(target/vstdlib.cmake)
include(target/mathlib.cmake)

include(target/appframework.cmake)
include(target/bitmap.cmake)
include(target/choreoobjects.cmake)
include(target/datacache.cmake)
include(target/datamodel.cmake)
include(target/dmxloader.cmake)
include(target/filesystem_stdio.cmake)
include(target/particles.cmake)
include(target/togl.cmake)
include(target/scenefilecache.cmake)
include(target/soundemittersystem.cmake)
include(target/steam_api.cmake)
include(target/studiorender.cmake)
include(target/vpklib.cmake)
include(target/vtf.cmake)
include(target/video_services.cmake)

include(target/materialsystem.cmake)
include(target/shaderapiempty.cmake)
include(target/shaderapidx9.cmake)
include(target/shaderlib.cmake)
include(target/stdshader_dx9.cmake)

include(target/havana_constraints.cmake)
include(target/hk_math.cmake)
include(target/hk_base.cmake)
include(target/vphysics.cmake)
include(target/ivp_compactbuilder.cmake)
include(target/ivp_physics.cmake)

include(target/vgui2.cmake)
include(target/vgui_controls.cmake)
include(target/vgui_surfacelib.cmake)
include(target/matsys_controls.cmake)
include(target/vguimatsurface.cmake)
include(target/inputsystem.cmake)

include(target/engine.cmake)
include(target/GameUI.cmake)
include(target/ServerBrowser.cmake)
include(target/launcher.cmake)
include(target/launcher_main.cmake)

include(game_base.cmake)
include(game/cstrike.cmake)