##########
Reference Trajectories
##########

The :code:`reference` module is implemented in :code:`agilib/src/references/`. It implements different ways of generating reference trajectories:

- :code:`polynomial_trajectories`: Using the eigen library, it implements a way of generating polynomials of arbitrary high order of magnitude that can be constrained in its different derivatives. A cost function can be minimized when solving for the polynomials, allowing for generation of minimum snap, minimum jerk, or other types of polynomials.
- :code:`sampled_trajectories`: Gets a sequence of previously sampled waypoints and converts it into a trajectory.
