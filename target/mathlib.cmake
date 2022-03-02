add_library(mathlib STATIC
        ${SE_SRC_PATH}/mathlib/color_conversion.cpp
        ${SE_SRC_PATH}/mathlib/halton.cpp
        ${SE_SRC_PATH}/mathlib/lightdesc.cpp
        ${SE_SRC_PATH}/mathlib/mathlib_base.cpp
        ${SE_SRC_PATH}/mathlib/powsse.cpp
        ${SE_SRC_PATH}/mathlib/sparse_convolution_noise.cpp
        ${SE_SRC_PATH}/mathlib/sseconst.cpp
        ${SE_SRC_PATH}/mathlib/sse.cpp
        ${SE_SRC_PATH}/mathlib/ssenoise.cpp
        ${SE_SRC_PATH}/mathlib/anorms.cpp
        ${SE_SRC_PATH}/mathlib/bumpvects.cpp
        ${SE_SRC_PATH}/mathlib/IceKey.cpp
        ${SE_SRC_PATH}/mathlib/imagequant.cpp
        ${SE_SRC_PATH}/mathlib/polyhedron.cpp
        ${SE_SRC_PATH}/mathlib/quantize.cpp
        ${SE_SRC_PATH}/mathlib/randsse.cpp
        ${SE_SRC_PATH}/mathlib/spherical.cpp
        ${SE_SRC_PATH}/mathlib/simdvectormatrix.cpp
        ${SE_SRC_PATH}/mathlib/vector.cpp
        ${SE_SRC_PATH}/mathlib/vmatrix.cpp
        ${SE_SRC_PATH}/mathlib/almostequal.cpp
        )
target_include_directories(mathlib PUBLIC
        ${SE_SRC_PATH}/mathlib
        ${SE_SRC_PATH}/common
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/mathlib
        )
target_link_libraries(mathlib PRIVATE platform_config)
if(SE_WIN32 OR SE_LINUX)
    target_sources(mathlib PRIVATE
            ${SE_SRC_PATH}/mathlib/3dnow.cpp
            )
endif()