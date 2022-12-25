cmake_minimum_required(VERSION 3.10)
project(HelloTriangleApplication)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

if (CMAKE_SYSTEM_NAME MATCHES "Linux")
  set(LINUX TRUE)
endif()

set(CMAKE_CXX_STANDARD 17)

add_executable(${PROJECT_NAME} src/main.cpp)

find_package(glfw3 REQUIRED)
find_package(Vulkan 1.3.236.0 REQUIRED)

if (LINUX)
  target_link_libraries(${PROJECT_NAME} glfw Vulkan::Vulkan dl pthread X11 Xxf86vm Xrandr Xi)
else()
  target_link_libraries(${PROJECT_NAME} glfw Vulkan::Vulkan)
endif()
