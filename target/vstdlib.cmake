add_library(vstdlib SHARED
        ${SE_SRC_PATH}/vstdlib/coroutine.cpp
        ${SE_SRC_PATH}/vstdlib/cvar.cpp
        ${SE_SRC_PATH}/vstdlib/jobthread.cpp
        ${SE_SRC_PATH}/vstdlib/KeyValuesSystem.cpp
        ${SE_SRC_PATH}/vstdlib/osversion.cpp
        ${SE_SRC_PATH}/vstdlib/random.cpp
        ${SE_SRC_PATH}/vstdlib/vcover.cpp
        ${SE_SRC_PATH}/public/tier0/memoverride.cpp
        )
if(WIN32)
    target_sources(vstdlib PRIVATE
            ${SE_SRC_PATH}/vstdlib/processutils.cpp
            )
endif()
target_link_libraries(vstdlib PRIVATE tier0 tier1)
target_compile_definitions(vstdlib PRIVATE -DVSTDLIB_DLL_EXPORT=1)
if(SE_OSX)
    # fix for Gestalt
    target_link_libraries(vstdlib PRIVATE "-framework CoreServices")
endif()
install(TARGETS vstdlib DESTINATION "./bin")