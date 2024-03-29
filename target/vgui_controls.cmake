add_library(vgui_controls STATIC
    ${SE_SRC_PATH}/vgui2/vgui_controls/AnalogBar.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/AnimatingImagePanel.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/AnimationController.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/BitmapImagePanel.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/BuildFactoryHelper.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/BuildGroup.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/BuildModeDialog.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/Button.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/CheckButton.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/CheckButtonList.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/CircularProgressBar.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/ComboBox.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/consoledialog.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/ControllerMap.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/controls.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/cvartogglecheckbutton.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/DirectorySelectDialog.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/Divider.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/EditablePanel.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/ExpandButton.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/FileOpenDialog.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/FileOpenStateMachine.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/../../public/filesystem_helpers.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/FocusNavGroup.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/Frame.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/GraphPanel.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/HTML.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/Image.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/ImageList.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/ImagePanel.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/InputDialog.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/KeyBindingHelpDialog.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/KeyBoardEditorDialog.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/KeyRepeat.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/Label.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/ListPanel.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/ListViewPanel.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/Menu.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/MenuBar.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/MenuButton.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/MenuItem.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/MessageBox.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/MessageDialog.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/Panel.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/PanelListPanel.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/PerforceFileExplorer.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/PerforceFileList.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/perforcefilelistframe.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/ProgressBar.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/ProgressBox.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/PropertyDialog.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/PropertyPage.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/PropertySheet.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/QueryBox.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/RadioButton.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/RichText.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/RotatingProgressBar.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/savedocumentquery.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/ScalableImagePanel.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/ScrollableEditablePanel.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/ScrollBar.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/ScrollBarSlider.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/SectionedListPanel.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/Slider.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/Splitter.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/subrectimage.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/TextEntry.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/TextImage.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/ToggleButton.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/Tooltip.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/ToolWindow.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/TreeView.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/TreeViewListControl.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/URLLabel.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/WizardPanel.cpp
    ${SE_SRC_PATH}/vgui2/vgui_controls/WizardSubPanel.cpp
    ${SE_SRC_PATH}/vgui2/src/vgui_key_translation.cpp
    )
target_include_directories(vgui_controls PUBLIC
        ${SE_SRC_PATH}/vgui2/vgui_controls
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        )
target_link_libraries(vgui_controls PRIVATE platform_config)
