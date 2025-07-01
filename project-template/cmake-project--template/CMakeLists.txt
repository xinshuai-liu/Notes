#要求最低cnake的版本
cmake_minimum_required(VERSION 3.10)

#项目名称
project(myproject VERSION 1.0.0)

#设置c++标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

#添加子目录
add_subdirectory(src/module1 lib/module1)
add_subdirectory(src/module2 lib/module2)

#添加可执行文件
add_executable(project main.cpp)

#链接子目录
target_link_libraries(project module1 module2)

# 使用MinGW编译
# cmake .. -G "MinGW Makefiles" -DCMAKE_MAKE_PROGRAM="D:/Qt/Tools/mingw1120_64/bin/mingw32-make.exe"
# cmake --build .


#-----------------------------------------------------------------使用第三方库

# cmake_minimum_required(VERSION 3.10)
# project(MyProject)

# # 添加 Boost
# find_package(Boost 1.70 REQUIRED)

# # 添加子目录   第三方库源代码
# add_subdirectory(third_party/SomeLibrary)

# # 使用 FetchContent 添加另一个库
# include(FetchContent)
# FetchContent_Declare(
#     another_library
#     GIT_REPOSITORY https://github.com/another/repo.git
#     GIT_TAG        main
# )
# FetchContent_MakeAvailable(another_library)

# # 创建可执行文件
# add_executable(MyProject main.cpp)

# # 链接库    库是预编译的（如 .lib、.a、.so 或 .dll 文件），可以直接指定路径
# target_link_libraries(MyProject 
#     Boost::Boost 
#     SomeLibrary 
#     another_library
#     "path/to/library.lib"    
# )
