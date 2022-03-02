add_library(soundemittersystem SHARED
        ${SE_SRC_PATH}/game/shared/interval.cpp
        ${SE_SRC_PATH}/soundemittersystem/soundemittersystembase.cpp
        ${SE_SRC_PATH}/public/SoundParametersInternal.cpp
        )
target_include_directories(soundemittersystem PUBLIC
        ${SE_SRC_PATH}/soundemittersystem
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/game/shared
        )
target_compile_definitions(soundemittersystem PRIVATE -DSOUNDEMITTERSYSTEM_EXPORTS=1)
target_link_libraries(soundemittersystem PRIVATE tier0 tier1 vstdlib)
install(TARGETS soundemittersystem DESTINATION "./bin")