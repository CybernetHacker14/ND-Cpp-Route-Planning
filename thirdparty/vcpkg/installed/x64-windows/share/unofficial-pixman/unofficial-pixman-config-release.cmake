#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "unofficial::pixman::pixman-1" for configuration "Release"
set_property(TARGET unofficial::pixman::pixman-1 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(unofficial::pixman::pixman-1 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/pixman-1.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS unofficial::pixman::pixman-1 )
list(APPEND _IMPORT_CHECK_FILES_FOR_unofficial::pixman::pixman-1 "${_IMPORT_PREFIX}/lib/pixman-1.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
