
add_library(inputsystem SHARED
        ${SE_SRC_PATH}/inputsystem/inputsystem.cpp
        ${SE_SRC_PATH}/inputsystem/joystick_sdl.cpp
        ${SE_SRC_PATH}/inputsystem/touch_sdl.cpp
        ${SE_SRC_PATH}/inputsystem/key_translation.cpp
        ${SE_SRC_PATH}/inputsystem/steamcontroller.cpp
        )
if(SE_WIN32)
    target_sources(inputsystem PRIVATE
            ${SE_SRC_PATH}/inputsystem/novint.cpp
            )
endif()
target_include_directories(inputsystem PUBLIC
        ${SE_SRC_PATH}/inputsystem
        ${SE_SRC_PATH}/common
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        )
target_compile_definitions(inputsystem PRIVATE -DVERSION_SAFE_STEAM_API_INTERFACES=1)
target_link_libraries(inputsystem PRIVATE platform_config video_config tier0 tier1 tier2 vstdlib SDL2 steam_api)
install(TARGETS inputsystem DESTINATION "./bin")