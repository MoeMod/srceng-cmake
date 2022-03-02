add_library(dmxloader STATIC
        ${SE_SRC_PATH}/dmxloader/dmxattribute.cpp
        ${SE_SRC_PATH}/dmxloader/dmxelement.cpp
        ${SE_SRC_PATH}/dmxloader/dmxloader.cpp
        ${SE_SRC_PATH}/dmxloader/dmxloadertext.cpp
        ${SE_SRC_PATH}/dmxloader/dmxserializationdictionary.cpp
        )
target_include_directories(dmxloader PUBLIC
        ${SE_SRC_PATH}/dmxloader
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        )
target_compile_definitions(dmxloader PRIVATE -DDMXLOADER_LIB=1)
target_link_libraries(dmxloader PRIVATE platform_config)