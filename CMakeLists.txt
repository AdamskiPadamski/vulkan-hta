cmake_minimum_required(VERSION 3.10)

if (CMAKE_SYSTEM_NAME MATCHES "Linux")
  set(LINUX TRUE)
endif()

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_OSX_DEPLOYMENT_TARGET 13)

project(HelloTriangleApplication)

set(CMAKE_CXX_STANDARD 17)

add_executable(HelloTriangleApplication main.cpp)

find_package(glfw3)
find_package(Vulkan 1.3.236.0)

if (glfw3_FOUND)
  message("Found glfw3")
endif()

if (LINUX)
  target_link_libraries(HelloTriangleApplication glfw Vulkan::Vulkan dl pthread X11
    Xxf86vm Xrandr Xi)
else()
  message("Hello")
  target_link_libraries(HelloTriangleApplication glfw Vulkan::Vulkan)
endif()
