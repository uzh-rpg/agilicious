###########
Controllers
###########

The :code:`controller` module is implemented in :code:`agilib/src/controller/`. There are different kinds of controllers implemented:

- :code:`MPC`: Model Predictive Controller. It uses `acados` with `HPIPM` solver to build an optimization problem that minimizes the distance between the designed reference and the online prediction.
- :code:`Geometric Controller`: It implements a differential flatness based geometric controller.
- :code:`PID`: It implements a classical PID controller.
- :code:`INDI`: Inverse Nonlinear Dynamic Inversion controller. It's primarily used for inner loop control (tracking body rates).

The :code:`ControllerBase` class is the base class for the controller module in Agilicious.
It is derived from the Module class and provides a generic interface for implementing controllers.

You can implement new controllers by following the simple base class API explained below, or checking out the API description of our provided controllers, below:


.. doxygenclass:: agi::ControllerBase
  :members:

.. doxygenstruct:: agi::ParameterBase
  :members:


===========================
Model Predictive Controller
===========================

as described in `Falanga IROS'18 <https://rpg.ifi.uzh.ch/docs/IROS18_Falanga.pdf>`__ and `Sun TRO'22 <https://rpg.ifi.uzh.ch/docs/Arxiv21_MPC_Sun.pdf>`__

.. doxygenclass:: agi::MpcController
  :members:

.. doxygenstruct:: agi::MpcParameters
  :members:

==================================================
Incremental Nonlinear Dynamic Inversion Controller
==================================================

as described in `Sun TRO'20 <https://ieeexplore.ieee.org/document/9160894>`__

.. doxygenclass:: agi::IndiController
  :members:

.. doxygenstruct:: agi::IndiParameters
  :members:

====================
Geometric Controller
====================

as described in `Sun TRO'22 <https://rpg.ifi.uzh.ch/docs/Arxiv21_MPC_Sun.pdf>`__

.. doxygenclass:: agi::GeometricController
  :members:

.. doxygenstruct:: agi::GeometricControllerParams
  :members:

==============
PID Controller
==============

A cascaded PID similar to `Faessler RAL'18 <https://rpg.ifi.uzh.ch/docs/RAL18_Faessler.pdf>`__

.. doxygenclass:: agi::PidController
  :members:

.. doxygenstruct:: agi::PidParameters
  :members:
