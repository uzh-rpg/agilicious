#######
Bridges
#######

The :code:`bridge` is  module implemented in :code:`agilib/src/bridge/`. The bridge class offers an interface between the commands produced by the controller and the hardware. It uses a :code:`thrust map` to convert the commands to low level signals for the designed low level controller. There are different child classes, depending on the hardware. Some of them are:

- :code:`sbus`: Implements an interface through the SBUS interface.
- :code:`ctrl`: Implements an interface to the :code:`AgiNuttx` low level controller.
- :code:`laird`: Implements an interface that uses :code:`LAIRD` RF modules. It's usually used together with the SBUS bridge in order to get commands from an offboard controller and send them through the SBUS to the low level controller.

  

