##########
Simulation
##########

The :code:`simulator` module is implemented in :code:`agilib/src/simulator/`. The simulation consists of two seperate parts, a low-level controller and a physics simulation.

The purpose of the low-level controller is to simulate the behavior of a the controllers typically found onboard a drone: it takes a collective thrust and a bodyrate command and translates this into individual motor commands for the four motors.
Every low-level controller should inherit from the :code:`LowLevelControllerBase` class and implement a :code:`run` function, which has access to the full drone state and the CTBR command and needs to compute desired motor RPMs for each propeller.

The second part is the physics simulation. All such models inherit from :code:`ModelBase` and need to implement a :code:`run` function as well. The function has read-only access to the full state of the drone. It needs to compute the derivative of the state. All models are chained together in a :code:`ModelPipeline` which is then executed by the simulator.
All parameters required by a model are stored in a corresponding :code:`[ModelName]params` class.

Available models include:
  - :code:`ModelBodyDrag` implements quadratic body drag
  - :code:`ModelLinCubDrag` implements linear-cubic body drag (better for MPC applications that also use such a model internally)
  - :code:`ModelMotor` implements a first-order system for the motor dynamics
  - :code:`ModelPropellerBEM` implements a propeller model based on blade-element-momentum theory which models forces and propeller drag accurately
  - :code:`ModelRidgidBody` implements a ridgid body model (required to convert accelerations into velocities and velocities into positions)
  - :code:`ModelThrustTorqueSimple` implements a propeller model based on widely used square law between propeller speed and thrust


