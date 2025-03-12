#!/bin/bash
set -e

# Source ROS 2
source /opt/ros/humble/setup.bash
source /root/ros2_ws/install/setup.bash

if [ "$#" -eq 0 ]; then
    exec bash
else
    exec "$@"
fi