#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "unofficial::graphicsmagick::graphicsmagick" for configuration "Release"
set_property(TARGET unofficial::graphicsmagick::graphicsmagick APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(unofficial::graphicsmagick::graphicsmagick PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/graphicsmagick.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/graphicsmagick.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS unofficial::graphicsmagick::graphicsmagick )
list(APPEND _IMPORT_CHECK_FILES_FOR_unofficial::graphicsmagick::graphicsmagick "${_IMPORT_PREFIX}/lib/graphicsmagick.lib" "${_IMPORT_PREFIX}/bin/graphicsmagick.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
