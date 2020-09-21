#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "unofficial::iconv::libcharset" for configuration "Release"
set_property(TARGET unofficial::iconv::libcharset APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(unofficial::iconv::libcharset PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/libcharset.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/libcharset.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS unofficial::iconv::libcharset )
list(APPEND _IMPORT_CHECK_FILES_FOR_unofficial::iconv::libcharset "${_IMPORT_PREFIX}/lib/libcharset.lib" "${_IMPORT_PREFIX}/bin/libcharset.dll" )

# Import target "unofficial::iconv::libiconv" for configuration "Release"
set_property(TARGET unofficial::iconv::libiconv APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(unofficial::iconv::libiconv PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/libiconv.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "unofficial::iconv::libcharset"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/libiconv.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS unofficial::iconv::libiconv )
list(APPEND _IMPORT_CHECK_FILES_FOR_unofficial::iconv::libiconv "${_IMPORT_PREFIX}/lib/libiconv.lib" "${_IMPORT_PREFIX}/bin/libiconv.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
