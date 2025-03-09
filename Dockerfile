FROM ros:humble

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    g++ \
    python3-colcon-common-extensions \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

RUN source /opt/ros/humble/setup.bash && \
    colcon build --packages-select talker_example_cpp

CMD ["bash", "-c", "source /opt/ros/humble/setup.bash && source install/setup.bash && ros2 launch talker_example_cpp ros2_example.launch.py"]
