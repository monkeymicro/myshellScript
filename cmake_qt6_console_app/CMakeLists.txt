cmake_minimum_required(VERSION 3.16)

project(helloworld VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# add extend path
set(CMAKE_PREFIX_PATH /opt/Qt/6.2.4/gcc_64)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Quick)
#find files
find_package(OpenCV REQUIRED)

#添加OpenCV头文件
include_directories(${OpenCV_INCLUDE_DIRS})

#显示OpenCV_INCLUDE_DIRS的值
message(${OpenCV_INCLUDE_DIRS})

# if >=qt6.3
# qt_standard_project_setup()

qt_add_executable(helloworld
    main.cpp
)

# 将库文件链接到可执行程序上
target_link_libraries(helloworld PRIVATE Qt6::Core Qt6::Gui Qt6::Quick ${OpenCV_LIBS})

