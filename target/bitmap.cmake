add_library(bitmap STATIC
        ${SE_SRC_PATH}/bitmap/ImageByteSwap.cpp
        ${SE_SRC_PATH}/bitmap/colorconversion.cpp
        ${SE_SRC_PATH}/bitmap/float_bm.cpp
        ${SE_SRC_PATH}/bitmap/float_bm2.cpp
        ${SE_SRC_PATH}/bitmap/float_bm3.cpp
        ${SE_SRC_PATH}/bitmap/float_bm4.cpp
        ${SE_SRC_PATH}/bitmap/float_bm_bilateral_filter.cpp
        ${SE_SRC_PATH}/bitmap/float_cube.cpp
        ${SE_SRC_PATH}/bitmap/imageformat.cpp
        ${SE_SRC_PATH}/bitmap/psd.cpp
        ${SE_SRC_PATH}/bitmap/resample.cpp
        ${SE_SRC_PATH}/bitmap/tgaloader.cpp
        ${SE_SRC_PATH}/bitmap/tgawriter.cpp
        ${SE_SRC_PATH}/bitmap/bitmap.cpp
        )
target_include_directories(bitmap PUBLIC
        ${SE_SRC_PATH}/bitmap
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        )
target_link_libraries(bitmap PUBLIC platform_config video_config tier0 tier1)
target_include_directories(bitmap PRIVATE ${Stb_INCLUDE_DIRS}/stb)