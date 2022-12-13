#########
The Pilot
#########


The pilot is an :code:`agilib` module implemented by the file :code:`agilib/src/pilot/pilot.cpp`. It serves two main purposes:

- It is the entry point of the program, and therefore it is in charge of coordinating and orquestrating when and how to instantiate and run the :code:`pipeline` module(s).
- It is the main interface point between the :code:`agilib` library and the :code:`agiros` ROS interface. For example, it takes care of handling the commands that come from ROS and converting them into actual actions that are then processed by the running sampler/estimator/controller.
