#########
The Pilot
#########

The pilot is an :code:`agilib` module implemented by the file :code:`agilib/src/pilot/pilot.cpp`. It serves two main purposes:

- It is the entry point of the program, and therefore it is in charge of coordinating and orquestrating when and how to instantiate and run the :code:`pipeline` module(s).
- It is the main interface point between the :code:`agilib` library and e.g., the :code:`agiros` ROS interface. For example, it takes care of handling the commands that come from ROS and converting them into actual actions that are then processed by the running sampler/estimator/controller.

The pilot contains the main logic needed for flight operation, handling of the individual modules,
and interfaces to manage references and task commands.
In its core, it loads and configures the software modules according to YAML parameter files, runs the control loop, and provides simplified user interfaces to manage flight tasks, such as position and velocity control or trajectory tracking.
For all state descriptions, we use a right-handed coordinate system located in the center of gravity, with the :math:`_Be_z`` pointing in body-relative upward thrust direction, and Bex pointing along with the drone’s forward direction. Motion is represented with respect to an inertial world frame with I ez pointing against the gravity direction, where translational deriva- tives (e.g. velocity) are expressed in the world frame and rotational derivatives (e.g. bodyrate) are expressed in the body frame.


.. doxygenclass:: agi::Pilot
  :members:
