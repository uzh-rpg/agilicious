Dependencies
============

Strictly necessary dependencies:

* Eigen Library: http://eigen.tuxfamily.org/index.php?title=Main_Page
  This is absolutely necessary for building the core library.

Dependencies to use all provides functionalities:

* Acado: https://acado.github.io
  Framework for our MPC implementations.
* qpOASES: https://github.com/coin-or/qpOASES
  Solver used by Acado.
* ROS VRPN Client: http://wiki.ros.org/vrpn_client_ros
  This client can be used to fly within motion capture systems.
  Install with `sudo apt install ros-${ROS_DISTRO}-vrpn-client-ros`

Optional dependencies:

* Google Test: https://github.com/google/googletest
  For unit tests and continuous integration.
* Google Benchmark: https://github.com/google/benchmark
  For optional micro-benchmarking.
