# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\qtproject_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\qtproject_autogen.dir\\ParseCache.txt"
  "qtproject_autogen"
  "tests\\CMakeFiles\\qtproject_test_autogen.dir\\AutogenUsed.txt"
  "tests\\CMakeFiles\\qtproject_test_autogen.dir\\ParseCache.txt"
  "tests\\qtproject_test_autogen"
  "third_party\\googletest\\googlemock\\CMakeFiles\\gmock_autogen.dir\\AutogenUsed.txt"
  "third_party\\googletest\\googlemock\\CMakeFiles\\gmock_autogen.dir\\ParseCache.txt"
  "third_party\\googletest\\googlemock\\CMakeFiles\\gmock_main_autogen.dir\\AutogenUsed.txt"
  "third_party\\googletest\\googlemock\\CMakeFiles\\gmock_main_autogen.dir\\ParseCache.txt"
  "third_party\\googletest\\googlemock\\gmock_autogen"
  "third_party\\googletest\\googlemock\\gmock_main_autogen"
  "third_party\\googletest\\googlemock\\gtest\\CMakeFiles\\gtest_autogen.dir\\AutogenUsed.txt"
  "third_party\\googletest\\googlemock\\gtest\\CMakeFiles\\gtest_autogen.dir\\ParseCache.txt"
  "third_party\\googletest\\googlemock\\gtest\\CMakeFiles\\gtest_main_autogen.dir\\AutogenUsed.txt"
  "third_party\\googletest\\googlemock\\gtest\\CMakeFiles\\gtest_main_autogen.dir\\ParseCache.txt"
  "third_party\\googletest\\googlemock\\gtest\\gtest_autogen"
  "third_party\\googletest\\googlemock\\gtest\\gtest_main_autogen"
  )
endif()
