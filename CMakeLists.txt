project(qmlail)

cmake_minimum_required(VERSION 2.8)


if(CMAKE_COMPILER_IS_GNUCXX)

    execute_process(COMMAND ${CMAKE_C_COMPILER} -dumpversion OUTPUT_VARIABLE GCC_VERSION)
    if(GCC_VERSION VERSION_GREATER 4.7 OR GCC_VERSION VERSION_EQUAL 4.7)
    else()
        message(FATAL_ERROR "GCC version is lower than 4.7. Bummer")
    endif()
    add_definitions(-std=c++11)
endif()

add_subdirectory(cutelogger)

add_subdirectory(qmlailib)
add_subdirectory(client)
