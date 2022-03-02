add_library(tier0 SHARED
        ${SE_SRC_PATH}/tier0/assert_dialog.cpp
        ${SE_SRC_PATH}/tier0/commandline.cpp
        ${SE_SRC_PATH}/tier0/cpu.cpp
        ${SE_SRC_PATH}/tier0/cpumonitoring.cpp
        ${SE_SRC_PATH}/tier0/cpu_usage.cpp
        ${SE_SRC_PATH}/tier0/dbg.cpp
        ${SE_SRC_PATH}/tier0/dynfunction.cpp
        ${SE_SRC_PATH}/tier0/fasttimer.cpp
        ${SE_SRC_PATH}/tier0/mem.cpp
        ${SE_SRC_PATH}/tier0/mem_helpers.cpp
        ${SE_SRC_PATH}/tier0/memdbg.cpp
        ${SE_SRC_PATH}/tier0/memstd.cpp
        ${SE_SRC_PATH}/tier0/memvalidate.cpp
        ${SE_SRC_PATH}/tier0/minidump.cpp
        ${SE_SRC_PATH}/tier0/pch_tier0.cpp
        ${SE_SRC_PATH}/tier0/PMELib.cpp
        ${SE_SRC_PATH}/tier0/progressbar.cpp
        ${SE_SRC_PATH}/tier0/security.cpp
        ${SE_SRC_PATH}/tier0/systeminformation.cpp
        ${SE_SRC_PATH}/tier0/stacktools.cpp
        ${SE_SRC_PATH}/tier0/thread.cpp
        ${SE_SRC_PATH}/tier0/threadtools.cpp
        ${SE_SRC_PATH}/tier0/tier0_strtools.cpp
        ${SE_SRC_PATH}/tier0/tslist.cpp
        ${SE_SRC_PATH}/tier0/vprof.cpp
        )
if(SE_WIN32)
    target_sources(tier0 PRIVATE
            ${SE_SRC_PATH}/tier0/assert_dialog.rc
            ${SE_SRC_PATH}/tier0/etwprof.cpp
            ${SE_SRC_PATH}/tier0/platform.cpp
            ${SE_SRC_PATH}/tier0/pme.cpp
            ${SE_SRC_PATH}/tier0/vcrmode.cpp
            ${SE_SRC_PATH}/tier0/win32consoleio.cpp
            )
    if(SE_64BIT)
        target_sources(tier0 PRIVATE
                ${SE_SRC_PATH}/tier0/InterlockedCompareExchange128.masm
                )

    endif()
elseif(SE_POSIX)
    target_sources(tier0 PRIVATE
            ${SE_SRC_PATH}/tier0/cpu_posix.cpp
            ${SE_SRC_PATH}/tier0/platform_posix.cpp
            ${SE_SRC_PATH}/tier0/pme_posix.cpp
            ${SE_SRC_PATH}/tier0/vcrmode_posix.cpp
            )
    if(SE_LINUX)
        target_sources(tier1 PRIVATE
                ${SE_SRC_PATH}/tier1/pathmatch.cpp
                )
    endif()
endif()
target_link_libraries(tier0 PUBLIC platform_config video_config)
target_include_directories(tier0 PUBLIC
        ${SE_SRC_PATH}/tier0
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        )
target_compile_definitions(tier0 PRIVATE -DTIER0_DLL_EXPORT)
if(SE_SDL)
    target_link_libraries(tier0 PUBLIC SDL2)
endif()
install(TARGETS tier0 DESTINATION "./bin")