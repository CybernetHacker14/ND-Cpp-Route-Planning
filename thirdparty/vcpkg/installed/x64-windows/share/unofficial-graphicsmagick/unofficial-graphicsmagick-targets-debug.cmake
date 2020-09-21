#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "unofficial::graphicsmagick::graphicsmagick" for configuration "Debug"
set_property(TARGET unofficial::graphicsmagick::graphicsmagick APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(unofficial::graphicsmagick::graphicsmagick PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/debug/lib/graphicsmagick.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/debug/bin/graphicsmagick.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS unofficial::graphicsmagick::graphicsmagick )
list(APPEND _IMPORT_CHECK_FILES_FOR_unofficial::graphicsmagick::graphicsmagick "${_IMPORT_PREFIX}/debug/lib/graphicsmagick.lib" "${_IMPORT_PREFIX}/debug/bin/graphicsmagick.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
