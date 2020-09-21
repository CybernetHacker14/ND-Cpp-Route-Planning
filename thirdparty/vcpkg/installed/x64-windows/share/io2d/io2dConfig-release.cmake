#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "io2d::io2d_core" for configuration "Release"
set_property(TARGET io2d::io2d_core APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(io2d::io2d_core PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/io2d_core.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS io2d::io2d_core )
list(APPEND _IMPORT_CHECK_FILES_FOR_io2d::io2d_core "${_IMPORT_PREFIX}/lib/io2d_core.lib" )

# Import target "io2d::io2d_cairo" for configuration "Release"
set_property(TARGET io2d::io2d_cairo APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(io2d::io2d_cairo PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/io2d_cairo.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS io2d::io2d_cairo )
list(APPEND _IMPORT_CHECK_FILES_FOR_io2d::io2d_cairo "${_IMPORT_PREFIX}/lib/io2d_cairo.lib" )

# Import target "io2d::io2d_cairo_win32" for configuration "Release"
set_property(TARGET io2d::io2d_cairo_win32 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(io2d::io2d_cairo_win32 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/io2d_cairo_win32.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS io2d::io2d_cairo_win32 )
list(APPEND _IMPORT_CHECK_FILES_FOR_io2d::io2d_cairo_win32 "${_IMPORT_PREFIX}/lib/io2d_cairo_win32.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
