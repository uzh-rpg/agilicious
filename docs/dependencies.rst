Dependencies
============

Strictly necessary dependencies:

* Eigen Library: http://eigen.tuxfamily.org/index.php?title=Main_Page
  This is absolutely necessary for building the core library.

Dependencies to use all provided functionalities (e.g., run MPC controller online, deploy using a motion capture system,...):

* Acados: https://github.com/acados/acados
  Framework for our MPC implementations.
* HPIPM: https://github.com/giaf/hpipm
  High Performance Interior Point Method solver.
* ROS VRPN Client: http://wiki.ros.org/vrpn_client_ros
  This client can be used to fly within motion capture systems.
  Install with `sudo apt install ros-${ROS_DISTRO}-vrpn-client-ros`

Optional dependencies (they allow to run unit tests in your code):

* Google Test: https://github.com/google/googletest
  For unit tests and continuous integration.
* Google Benchmark: https://github.com/google/benchmark
  For optional micro-benchmarking.
