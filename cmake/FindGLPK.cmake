# Find GLPK-cut-log
# GLPK_FOUND - system has GLPK lib
# GLPK_INCLUDE_DIR - the GLPK include directory
# GLPK_LIBRARIES - Libraries needed to use GLPK

set(GLPK_DEFAULT_HOME ${PROJECT_SOURCE_DIR}/glpk-cut-log)

find_path(GLPK_INCLUDE_DIR
          NAMES glpk.h
          PATHS ${GLPK_DEFAULT_HOME}/include
          NO_DEFAULT_PATH)
find_library(GLPK_LIBRARIES
             NAMES glpk
             PATHS ${GLPK_DEFAULT_HOME}/lib
             NO_DEFAULT_PATH)


# Check if we really have GLPK-cut-log
if(GLPK_INCLUDE_DIR)
  include(CheckSymbolExists)
  set(CMAKE_REQUIRED_INCLUDES ${GLPK_INCLUDE_DIR})
  set(CMAKE_REQUIRED_LIBRARIES ${GLPK_LIBRARIES} m)
  check_symbol_exists(glp_ios_get_cut "glpk.h" HAVE_GLPK_CUT_LOG)
  if(NOT HAVE_GLPK_CUT_LOG)
    message(FATAL_ERROR "Could not link against GLPK-cut-log. "
                        "Did you forget to install GLPK-cut-log?")
  endif()
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(GLPK
  DEFAULT_MSG
  GLPK_INCLUDE_DIR GLPK_LIBRARIES)

mark_as_advanced(GLPK_INCLUDE_DIR GLPK_LIBRARIES)
