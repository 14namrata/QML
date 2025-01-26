# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appRegistrationForm_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appRegistrationForm_autogen.dir\\ParseCache.txt"
  "appRegistrationForm_autogen"
  )
endif()
