add_library(steam_api SHARED
        ${SE_SRC_PATH}/thirdparty/StubSteamAPI/steam_api.cpp
        )
target_include_directories(steam_api PUBLIC
        ${SE_SRC_PATH}/thirdparty/StubSteamAPI
        )
install(TARGETS steam_api DESTINATION "./bin")