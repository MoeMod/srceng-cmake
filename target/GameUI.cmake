
add_library(GameUI SHARED
        ${SE_SRC_PATH}/GameUI/BackgroundMenuButton.cpp
        ${SE_SRC_PATH}/GameUI/BasePanel.cpp
        ${SE_SRC_PATH}/GameUI/GameConsole.cpp
        ${SE_SRC_PATH}/GameUI/GameUI_Interface.cpp
        ${SE_SRC_PATH}/GameUI/ModInfo.cpp
        ${SE_SRC_PATH}/GameUI/MouseMessageForwardingPanel.cpp
        ${SE_SRC_PATH}/common/GameUI/ObjectList.cpp
        ${SE_SRC_PATH}/GameUI/PanelListPanel.cpp
        ${SE_SRC_PATH}/GameUI/RunGameEngine.cpp
        ${SE_SRC_PATH}/common/GameUI/scriptobject.cpp
        ${SE_SRC_PATH}/GameUI/Sys_Utils.cpp
        ${SE_SRC_PATH}/GameUI/TextEntryBox.cpp
        ${SE_SRC_PATH}/GameUI/TGAImagePanel.cpp
        ${SE_SRC_PATH}/public/vgui_controls/vgui_controls.cpp
        ${SE_SRC_PATH}/GameUI/VGuiSystemModuleLoader.cpp
        ${SE_SRC_PATH}/GameUI/BonusMapsDatabase.cpp
        ${SE_SRC_PATH}/common/language.cpp
        ${SE_SRC_PATH}/common/imageutils.cpp
        ${SE_SRC_PATH}/GameUI/SaveGameBrowserDialog.cpp
        ${SE_SRC_PATH}/GameUI/GameUI_util.cpp
        ${SE_SRC_PATH}/GameUI/BitmapImagePanel.cpp
        ${SE_SRC_PATH}/GameUI/CommandCheckButton.cpp
        ${SE_SRC_PATH}/GameUI/CvarNegateCheckButton.cpp
        ${SE_SRC_PATH}/common/GameUI/cvarslider.cpp
        ${SE_SRC_PATH}/GameUI/CvarTextEntry.cpp
        ${SE_SRC_PATH}/GameUI/CvarToggleCheckButton.cpp
        ${SE_SRC_PATH}/GameUI/HapticControlBox.cpp
        ${SE_SRC_PATH}/GameUI/KeyToggleCheckButton.cpp
        ${SE_SRC_PATH}/GameUI/LabeledCommandComboBox.cpp
        ${SE_SRC_PATH}/GameUI/URLButton.cpp
        ${SE_SRC_PATH}/GameUI/vcontrolslistpanel.cpp
        ${SE_SRC_PATH}/GameUI/BenchmarkDialog.cpp
        ${SE_SRC_PATH}/GameUI/BonusMapsDialog.cpp
        ${SE_SRC_PATH}/GameUI/CommentaryDialog.cpp
        ${SE_SRC_PATH}/GameUI/CommentaryExplanationDialog.cpp
        ${SE_SRC_PATH}/GameUI/ContentControlDialog.cpp
        ${SE_SRC_PATH}/GameUI/CustomTabExplanationDialog.cpp
        ${SE_SRC_PATH}/GameUI/GameConsoleDialog.cpp
        ${SE_SRC_PATH}/GameUI/LoadGameDialog_Xbox.cpp
        ${SE_SRC_PATH}/GameUI/LoadGameDialog.cpp
        ${SE_SRC_PATH}/GameUI/MultiplayerAdvancedDialog.cpp
        ${SE_SRC_PATH}/GameUI/NewGameDialog.cpp
        ${SE_SRC_PATH}/GameUI/PlayerListDialog.cpp
        ${SE_SRC_PATH}/GameUI/SaveGameDialog_Xbox.cpp
        ${SE_SRC_PATH}/GameUI/SaveGameDialog.cpp
        ${SE_SRC_PATH}/GameUI/LoadCommentaryDialog.cpp
        ${SE_SRC_PATH}/GameUI/LoadingDialog.cpp
        ${SE_SRC_PATH}/GameUI/BaseSaveGameDialog.cpp
        ${SE_SRC_PATH}/GameUI/CreateMultiplayerGameBotPage.cpp
        ${SE_SRC_PATH}/GameUI/CreateMultiplayerGameDialog.cpp
        ${SE_SRC_PATH}/GameUI/CreateMultiplayerGameGameplayPage.cpp
        ${SE_SRC_PATH}/GameUI/CreateMultiplayerGameServerPage.cpp
        ${SE_SRC_PATH}/GameUI/OptionsDialog_Xbox.cpp
        ${SE_SRC_PATH}/GameUI/ControllerDialog.cpp
        ${SE_SRC_PATH}/GameUI/matchmaking/achievementsdialog.cpp
        ${SE_SRC_PATH}/GameUI/matchmaking/basedialog.cpp
        ${SE_SRC_PATH}/GameUI/matchmaking/dialogmenu.cpp
        ${SE_SRC_PATH}/GameUI/matchmaking/leaderboarddialog.cpp
        ${SE_SRC_PATH}/GameUI/matchmaking/matchmakingbasepanel.cpp
        ${SE_SRC_PATH}/GameUI/matchmaking/pausedialog.cpp
        ${SE_SRC_PATH}/GameUI/matchmaking/sessionlobbydialog.cpp
        ${SE_SRC_PATH}/GameUI/matchmaking/sessionoptionsdialog.cpp
        ${SE_SRC_PATH}/GameUI/matchmaking/sessionbrowserdialog.cpp
        ${SE_SRC_PATH}/GameUI/matchmaking/welcomedialog.cpp
        ${SE_SRC_PATH}/GameUI/OptionsDialog.cpp
        ${SE_SRC_PATH}/GameUI/OptionsSubAudio.cpp
        ${SE_SRC_PATH}/GameUI/OptionsSubDifficulty.cpp
        ${SE_SRC_PATH}/GameUI/OptionsSubGame.cpp
        ${SE_SRC_PATH}/GameUI/OptionsSubKeyboard.cpp
        ${SE_SRC_PATH}/GameUI/OptionsSubMouse.cpp
        ${SE_SRC_PATH}/GameUI/OptionsSubMultiplayer.cpp
        ${SE_SRC_PATH}/GameUI/OptionsSubPortal.cpp
        ${SE_SRC_PATH}/GameUI/OptionsSubVideo.cpp
        ${SE_SRC_PATH}/GameUI/OptionsSubVoice.cpp
        )
if(SE_WIN32)
    target_sources(GameUI PRIVATE
            ${SE_SRC_PATH}/GameUI/LogoFile.cpp
            ${SE_SRC_PATH}/GameUI/ChangeGameDialog.cpp
            ${SE_SRC_PATH}/GameUI/OptionsSubHaptics.cpp
            )
endif()
target_include_directories(GameUI PUBLIC
        ${SE_SRC_PATH}/GameUI
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        ${SE_SRC_PATH}/common/GameUI
        )
target_compile_definitions(GameUI PRIVATE -DGAMEUI_EXPORTS=1 -DNO_STEAM=1 -DVERSION_SAFE_STEAM_API_INTERFACES=1)
target_link_libraries(GameUI PRIVATE platform_config video_config tier0 vgui_controls tier1 tier2 tier3 vstdlib vtf bitmap mathlib SDL2 steam_api matsys_controls JPEG PNG ZLIB)
install(TARGETS GameUI DESTINATION "./bin")