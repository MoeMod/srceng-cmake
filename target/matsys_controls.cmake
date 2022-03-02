add_library(matsys_controls STATIC
    ${SE_SRC_PATH}/vgui2/matsys_controls/assetpicker.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/baseassetpicker.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/colorpickerpanel.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/curveeditorpanel.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/gamefiletreeview.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/manipulator.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/matsyscontrols.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/mdlpanel.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/mdlpicker.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/mdlsequencepicker.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/picker.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/potterywheelpanel.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/proceduraltexturepanel.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/QCGenerator.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/sequencepicker.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/tgapreviewpanel.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/vmtpicker.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/vmtpreviewpanel.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/vtfpicker.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/vtfpreviewpanel.cpp
    ${SE_SRC_PATH}/vgui2/matsys_controls/vmtpanel.cpp
    )

target_include_directories(matsys_controls PUBLIC
    ${SE_SRC_PATH}/vgui2/matsys_controls
    ${SE_SRC_PATH}/public
    ${SE_SRC_PATH}/public/tier0
    ${SE_SRC_PATH}/public/tier1
    ${SE_SRC_PATH}/common
    )

target_link_libraries(matsys_controls PUBLIC platform_config)