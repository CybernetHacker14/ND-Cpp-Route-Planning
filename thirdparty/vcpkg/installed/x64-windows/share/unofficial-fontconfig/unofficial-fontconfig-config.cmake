
include(CMakeFindDependencyMacro)
find_dependency(unofficial-iconv CONFIG)
find_dependency(Freetype)
find_dependency(expat CONFIG)

include(${CMAKE_CURRENT_LIST_DIR}/unofficial-fontconfig-targets.cmake)
