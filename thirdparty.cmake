
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")


find_package(Iconv REQUIRED) # Iconv::Iconv


#find_package(Stb REQUIRED) # Stb_FOUND Stb_INCLUDE_DIRS
set(Stb_INCLUDE_DIRS "${SE_SRC_PATH}/thirdparty")

# OSX : brew install sdl2
find_package(SDL2 REQUIRED)
if(SDL2_FOUND)
    add_library(SDL2 INTERFACE)
    target_link_libraries(SDL2 INTERFACE ${SDL2_LIBRARY})
    target_include_directories(SDL2 INTERFACE ${SDL2_INCLUDE_DIR})
    if(MSVC)
        string(REGEX REPLACE "lib$" "dll" SDL2_DLL "${SDL2_LIBRARY}")
        install(FILES ${SDL2_LIBRARY} DESTINATION "." OPTIONAL)
    endif()
    add_library(SDL2::SDL2 ALIAS SDL2)
endif()

# OSX : brew install bzip2
find_package(BZip2 REQUIRED)
if(BZIP2_FOUND)
    add_library(BZ2 ALIAS BZip2::BZip2)
endif()

# OSX : brew install jpeg
find_package(JPEG REQUIRED)
if(JPEG_FOUND)
    add_library(JPEG ALIAS JPEG::JPEG)
endif()

# OSX : comes with Xcode
find_package(ZLIB REQUIRED)
if(ZLIB_FOUND)
    add_library(ZLIB ALIAS ZLIB::ZLIB)
endif()

# OSX : comes with Xcode
find_package(OpenAL REQUIRED)
if(OPENAL_FOUND)
    add_library(OPENAL INTERFACE)
    target_link_libraries(OPENAL INTERFACE ${OPENAL_LIBRARY})
    target_include_directories(OPENAL INTERFACE ${OPENAL_INCLUDE_DIR})
endif()

# OSX : brew install freetype
find_package(Freetype REQUIRED)
if(FREETYPE_FOUND)
    add_library(FT2 ALIAS Freetype::Freetype)
endif()

# OSX : brew install fontconfig
find_package(Fontconfig REQUIRED)
if(Fontconfig_FOUND)
    add_library(FC ALIAS Fontconfig::Fontconfig)
endif()

# OSX : brew install libpng
find_package(PNG REQUIRED)
if(PNG_FOUND)
    add_library(PNG ALIAS PNG::PNG)
endif()