#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "unofficial::fontconfig::fontconfig" for configuration "Debug"
set_property(TARGET unofficial::fontconfig::fontconfig APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(unofficial::fontconfig::fontconfig PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/debug/lib/fontconfig.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "unofficial::iconv::libiconv;expat::expat"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/debug/bin/fontconfig.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS unofficial::fontconfig::fontconfig )
list(APPEND _IMPORT_CHECK_FILES_FOR_unofficial::fontconfig::fontconfig "${_IMPORT_PREFIX}/debug/lib/fontconfig.lib" "${_IMPORT_PREFIX}/debug/bin/fontconfig.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
