
    include(CMakeFindDependencyMacro)
    find_dependency(unofficial-cairo CONFIG)
    find_dependency(unofficial-graphicsmagick CONFIG)

    include(${CMAKE_CURRENT_LIST_DIR}/io2dTargets.cmake)
    