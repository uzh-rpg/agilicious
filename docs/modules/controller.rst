###########
Controllers
###########

The :code:`controller` module is implemented in :code:`agilib/src/controller/`. There are different kinds of controllers implemented:

- :code:`MPC`: Model Predictive Controller. It uses `acados` with `HPIPM` solver to build an optimization problem that minimizes the distance between the designed reference and the online prediction.
- :code:`geometric_controller`: It implements a differential flatness based geometric controller.
- :code:`PID`: It implements a classical PID controller.
- :code:`INDI`: Inverse Nonlinear Dynamic Inversion controller. It's primarily used for inner loop control (tracking body rates).
