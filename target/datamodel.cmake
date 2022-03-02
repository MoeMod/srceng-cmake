add_library(datamodel STATIC
    ${SE_SRC_PATH}/datamodel/clipboardmanager.cpp
    ${SE_SRC_PATH}/datamodel/datamodel.cpp
    ${SE_SRC_PATH}/datamodel/dependencygraph.cpp
    ${SE_SRC_PATH}/datamodel/dmattribute.cpp
    ${SE_SRC_PATH}/datamodel/dmelement.cpp
    ${SE_SRC_PATH}/datamodel/dmelementdictionary.cpp
    ${SE_SRC_PATH}/datamodel/dmelementfactoryhelper.cpp
    ${SE_SRC_PATH}/datamodel/DmElementFramework.cpp
    ${SE_SRC_PATH}/datamodel/dmserializerbinary.cpp
    ${SE_SRC_PATH}/datamodel/dmserializerkeyvalues.cpp
    ${SE_SRC_PATH}/datamodel/dmserializerkeyvalues2.cpp
    ${SE_SRC_PATH}/datamodel/undomanager.cpp
)
target_include_directories(datamodel PUBLIC
        ${SE_SRC_PATH}/datamodel
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        )
target_link_libraries(datamodel PUBLIC platform_config)