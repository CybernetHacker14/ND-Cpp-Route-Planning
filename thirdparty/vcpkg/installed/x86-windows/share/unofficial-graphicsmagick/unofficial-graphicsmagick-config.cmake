
include(CMakeFindDependencyMacro)
find_dependency(ZLIB)
find_dependency(BZip2)
find_dependency(JPEG)
find_dependency(PNG)
find_dependency(TIFF)
find_dependency(Freetype)

include(${CMAKE_CURRENT_LIST_DIR}/unofficial-graphicsmagick-targets.cmake)
