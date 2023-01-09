###############
ROS Integration
###############

Our software is split in two parts, called :code:`agilib` and :code:`agiros`. :code:`agilib` is the implementation of the entire library with all its functionalities, while :code:`agiros` serves as an interface layer between :code:`agilib` and ROS.

The user can be referred to the file :code:`agiros/agiros/ros_pilot.cpp` where the interface for subscription and publication is written.
For example, some of the most representative (but not only) commands are:

- "enable": arms the drone
- "start": commands the drone to take off
- "off": stops and disarms the drone
- "trajectory": sends a trajectory that is followed by the drone
- "pose_estimate": provides the drone with a pose estimate to be fused in the EKF
- "feedthrough_command": directly sends a low level command that bypass all controller logic and directly goes to the actuators


The function of the ROS interface is to take these commands (or any command that might be implemented by the user) and send it downstream to :code:`agilib`.

