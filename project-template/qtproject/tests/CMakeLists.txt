cmake_minimum_required(VERSION 3.16)
project(qtproject_test)

include(Googletest)

add_executable(${PROJECT_NAME}
    test_main.cpp
)

target_link_libraries(${PROJECT_NAME} PRIVATE
    gtest_main
)

gtest_discover_tests(${PROJECT_NAME})
