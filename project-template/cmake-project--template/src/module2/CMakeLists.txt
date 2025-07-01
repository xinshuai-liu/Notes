
# 查找源文件
# file(GLOB_RECURSE MODULE1_SOURCES "module1/*.cpp")
# file(GLOB_RECURSE MODULE2_SOURCES "module2/*.cpp")
# -----------------------------------------------------------
# 手动列出源文件
set(SOURCES
    test2.cpp
)
# -----------------------------------------------------------
# 只在当前目录查找源文件
# file(GLOB SOURCES "*.cpp")

#添加库
add_library(module2 ${SOURCES})

#添加指定目录（头文件）
target_include_directories(module2 PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../../include/module2)