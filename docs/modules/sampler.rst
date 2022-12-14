########
Samplers
########

The :code:`sampler` module is implemented in :code:`agilib/src/sampler/`. It takes care of taking a trajectory and transform it into a sequence of setpoints that can be tracked by a controller. There are two types:

- :code:`time_based`: It tracks a trajectory in the time domain. It uses the time allocation of the original trajectory to extract setpoints.
- :code:`position_based`: From the current state of the drone, it searches the closest point to the trajectory and starts the sampling from there.
