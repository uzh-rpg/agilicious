What's in it for you?
=====================

Agilicious is split in two parts, *agilib* and *agiros*.

*agilib* contains base classes and module implementations providing the base functionality necessary for agile flight.
It contains controllers, estimators, and logic, but with minimal dependencies (mainly [Eigen](http://eigen.tuxfamily.org/index.php?title=Main_Page)).
It allows users to integrate Agilicious into their own infrastructure and can easily be extended with new modules.
Meanwhile, *agiros* provides bindings to common [ROS](https://www.ros.org) interfaces, which make it easy and quick to set up and get flying, both in simulation and real world.

In summary, this library offers the following modules:

* Pipelines
  provide a modular way to combine controllers, estimators, reference trajectories into a complete control system.
  It is posible to create multiple pipelines and switch between them at runtime, allowing rapid prototyping.
* Controllers
  * Model Predictive Control descred in [Falanga IROS'18](https://rpg.ifi.uzh.ch/docs/IROS18_Falanga.pdf) and [Sun TRO'22](https://rpg.ifi.uzh.ch/docs/Arxiv21_MPC_Sun.pdf)
  * Incremental Nonlinear Dynamic Inversion described in [Sun TRO'20](https://ieeexplore.ieee.org/document/9160894)
  * Geometric Control described in [Sun TRO'22](https://rpg.ifi.uzh.ch/docs/Arxiv21_MPC_Sun.pdf)
  * Cascaded PID similar to [Faessler RAL'18](https://rpg.ifi.uzh.ch/docs/RAL18_Faessler.pdf)
* Estimators
  * A standard EKF using a pose estimate and propagating with IMU measurements.
  * An EKF that uses a constant acceleration model and the Pose + IMU measurements.
  * A feedthrough module that provides a simple way to pipe in your own estimate sources.
  * A mock estimator that can corrupt an estimate with noise and bias to simulate real-world properties.
* References
  * Hover
  * Velocity Commands
  * Sampled Trajectories
  * Polynomial Trajectories
* Samplers
  * Time-based sampling along a given reference.
  * Positional sampling along a given reference which allows to robustly handle large disturbances.
* Bridges
  * [RotorS](https://github.com/ethz-asl/rotors_simulator) interface
  * Serial bridge to interface with our own flight control software
  * Serial bridge to interface through [LAIRD](https://www.lairdconnect.com) wireless modules.
  * Serial bridge to interface with [BetaFlight controllers](https://betaflight.com).
* Pilot
  which handles all logic and interfacing.
* Guard
  A safety guard implementation that can use a secondary estimate (e.g. motion capture) and take over if some criteria are invalidated.
  The guard can use a secondary pipeline configuration without relying on the user-defined modules.
  This allows for rapid prototyping with a virtual "safety net".
* Simulator
  A sophisticated and configurable simulation that runs magnitudes faster than real time and optionally provides aerodynamic BEM models as described in [Bauersfeld RSS'21](https://rpg.ifi.uzh.ch/docs/RSS21_Bauersfeld.pdf).
