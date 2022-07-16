cmake_minimum_required(VERSION 3.5)

## Set C++ Standard to 11
set(CMAKE_CXX_STANDARD 11)
## Set whether given standard is required
set(CMAKE_CXX_STANDARD_REQUIRED ON)
## Set platform specific extension checking OFF
set(CMAKE_CXX_EXTENSIONS OFF)
## Set warning flags
set(CMAKE_CXX_FLAGS "-Wall -Werror")

## Set build mode
set(CMAKE_BUILD_TYPE Release)

set(DRIVER_NAME stonepair)
set(DRIVER_INCLUDE ${CMAKE_CURRENT_SOURCE_DIR}/include)
set(DRIVER_SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/src)


## Add executable for target
add_library(${DRIVER_NAME} STATIC
    ${DRIVER_SOURCE}/stone_pair.cpp
)

## Target include directories
target_include_directories(${DRIVER_NAME}
    PUBLIC
        $<BUILD_INTERFACE:${DRIVER_INCLUDE}>
        $<INSTALL_INTERFACE:include>
        ${REQUIRED_PROJECT_INCLUDES}
    PRIVATE
        src
)
