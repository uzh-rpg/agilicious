####################
The Pipeline Concept
####################

The Pipeline is implemented by :code:`agilib/base/pipeline.cpp`.
Its main purpose is to sequentially execute the different components that form a typical control pipeline. It runs at a fixed rate (100 Hz by default) and executes, most typically,

- First, it takes care of getting the latest valid state estimate from the :code:`estimator`
- Then, it takes the active reference trajectory and uses the :code:`sampler` to create a sequence of setpoints to be tracked by the controller.
- Then the :code:`controller` (inner and possibly outer loops) are run. Different types of controllers can be selected, mainly MPC, Geometric Controller or INDI. The controller outputs a low level command.
- Finally, a :code:`bridge` translates the control commands to actual actuator inputs.

