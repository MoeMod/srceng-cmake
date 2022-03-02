
add_library(ServerBrowser SHARED
        ${SE_SRC_PATH}/ServerBrowser/BaseGamesPage.cpp
        ${SE_SRC_PATH}/ServerBrowser/BlacklistedServers.cpp
        ${SE_SRC_PATH}/ServerBrowser/CustomGames.cpp
        ${SE_SRC_PATH}/ServerBrowser/DialogAddServer.cpp
        ${SE_SRC_PATH}/ServerBrowser/DialogGameInfo.cpp
        ${SE_SRC_PATH}/ServerBrowser/DialogServerPassword.cpp
        ${SE_SRC_PATH}/ServerBrowser/FavoriteGames.cpp
        ${SE_SRC_PATH}/ServerBrowser/FriendsGames.cpp
        ${SE_SRC_PATH}/ServerBrowser/HistoryGames.cpp
        ${SE_SRC_PATH}/ServerBrowser/InternetGames.cpp
        ${SE_SRC_PATH}/ServerBrowser/LanGames.cpp
        ${SE_SRC_PATH}/ServerBrowser/ModList.cpp
        ${SE_SRC_PATH}/ServerBrowser/ServerBrowser.cpp
        ${SE_SRC_PATH}/ServerBrowser/ServerBrowserDialog.cpp
        ${SE_SRC_PATH}/ServerBrowser/ServerContextMenu.cpp
        ${SE_SRC_PATH}/ServerBrowser/ServerListCompare.cpp
        ${SE_SRC_PATH}/ServerBrowser/SpectateGames.cpp
        ${SE_SRC_PATH}/ServerBrowser/VACBannedConnRefusedDialog.cpp
        ${SE_SRC_PATH}/ServerBrowser/QuickListPanel.cpp
        ${SE_SRC_PATH}/public/vgui_controls/vgui_controls.cpp
        ${SE_SRC_PATH}/common/ServerBrowser/blacklisted_server_manager.cpp
        )
target_include_directories(ServerBrowser PUBLIC
        ${SE_SRC_PATH}/ServerBrowser
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        )
target_compile_definitions(ServerBrowser PRIVATE -DGAMEUI_EXPORTS=1 -DNO_STEAM=1 -DVERSION_SAFE_STEAM_API_INTERFACES=1)
target_link_libraries(ServerBrowser PRIVATE platform_config video_config tier0 vgui_controls tier1 tier2 tier3 vstdlib mathlib steam_api)
install(TARGETS ServerBrowser DESTINATION "./bin")