cmake_minimum_required(VERSION 3.10)
project(talker_example_cpp)

if(CMAKE_COMPILER_IS_GNUCC OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    add_compile_options(-Wall -Wextra -Wpedantic)
endif() 

find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)

add_executable(talker src/MinimalPublisher.cc)
target_include_directories(talker PUBLIC ${CMAKE_SOURCE_DIR}/include)
ament_target_dependencies(talker rclcpp std_msgs)

install(TARGETS
talker
  DESTINATION lib/${PROJECT_NAME}
)

ament_package()
