add_library(tier1 STATIC
        ${SE_SRC_PATH}/utils/lzma/C/LzmaDec.c
        ${SE_SRC_PATH}/tier1/bitbuf.cpp
        ${SE_SRC_PATH}/tier1/byteswap.cpp
        ${SE_SRC_PATH}/tier1/characterset.cpp
        ${SE_SRC_PATH}/tier1/checksum_crc.cpp
        ${SE_SRC_PATH}/tier1/checksum_md5.cpp
        ${SE_SRC_PATH}/tier1/checksum_sha1.cpp
        ${SE_SRC_PATH}/tier1/commandbuffer.cpp
        ${SE_SRC_PATH}/tier1/convar.cpp
        ${SE_SRC_PATH}/tier1/datamanager.cpp
        ${SE_SRC_PATH}/tier1/diff.cpp
        ${SE_SRC_PATH}/tier1/generichash.cpp
        ${SE_SRC_PATH}/tier1/ilocalize.cpp
        ${SE_SRC_PATH}/tier1/interface.cpp
        ${SE_SRC_PATH}/tier1/KeyValues.cpp
        ${SE_SRC_PATH}/tier1/keyvaluesjson.cpp
        ${SE_SRC_PATH}/tier1/kvpacker.cpp
        ${SE_SRC_PATH}/tier1/lzmaDecoder.cpp
        ${SE_SRC_PATH}/tier1/lzss.cpp
        ${SE_SRC_PATH}/tier1/mempool.cpp
        ${SE_SRC_PATH}/tier1/memstack.cpp
        ${SE_SRC_PATH}/tier1/NetAdr.cpp
        ${SE_SRC_PATH}/tier1/newbitbuf.cpp
        ${SE_SRC_PATH}/tier1/mempool.cpp
        ${SE_SRC_PATH}/tier1/rangecheckedvar.cpp
        ${SE_SRC_PATH}/tier1/reliabletimer.cpp
        ${SE_SRC_PATH}/tier1/snappy-sinksource.cpp
        ${SE_SRC_PATH}/tier1/snappy-stubs-internal.cpp
        ${SE_SRC_PATH}/tier1/snappy.cpp
        ${SE_SRC_PATH}/tier1/sparsematrix.cpp
        ${SE_SRC_PATH}/tier1/splitstring.cpp
        ${SE_SRC_PATH}/tier1/stringpool.cpp
        ${SE_SRC_PATH}/tier1/strtools.cpp
        ${SE_SRC_PATH}/tier1/strtools_unicode.cpp
        ${SE_SRC_PATH}/tier1/tier1.cpp
        ${SE_SRC_PATH}/tier1/tokenreader.cpp
        ${SE_SRC_PATH}/tier1/uniqueid.cpp
        ${SE_SRC_PATH}/tier1/utlbinaryblock.cpp
        ${SE_SRC_PATH}/tier1/utlbuffer.cpp
        ${SE_SRC_PATH}/tier1/utlbufferutil.cpp
        ${SE_SRC_PATH}/tier1/utlstring.cpp
        ${SE_SRC_PATH}/tier1/utlsymbol.cpp
        )

if(SE_WIN32)
    target_sources(tier1 PRIVATE
            ${SE_SRC_PATH}/tier1/processor_detect.cpp
            )
elseif(SE_POSIX)
    target_sources(tier1 PRIVATE
            ${SE_SRC_PATH}/tier1/processor_detect_linux.cpp
            )
    if(SE_LINUX)
        target_sources(tier1 PRIVATE
                ${SE_SRC_PATH}/tier1/pathmatch.cpp
                ${SE_SRC_PATH}/tier1/qsort_s.cpp
                )
    endif()
endif()
target_link_libraries(tier1 PUBLIC platform_config)
target_include_directories(tier1 PUBLIC
        ${SE_SRC_PATH}/tier1
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/common
        )
target_compile_definitions(tier1 PUBLIC -DTIER1_STATIC_LIB=1)
if(SE_POSIX)
    target_link_libraries(tier1 PUBLIC Iconv::Iconv)
endif()