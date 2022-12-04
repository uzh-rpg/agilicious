Getting Started
===============

If you use ROS, simply clone agilicious into your `catkin` workspace and `catkin build`::

  cd catkin_ws/src # Create new catkin workspace.
  git clone https://github.com/catkin/catkin_simple
  git clone git@github.com:uzh-rpg/agilicious.git
  catkin build


If you want to use the library standalone, you can always

  cd agilib/build
  cmake ..
  make

It is highly recommended to run agilicious inside a docker container, instructions are available in `Dockerized Build`_.

Launch your first simulation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For launching simulations you need ROS. Once your compilation using `catkin build` has been successful,
you can then source your catkin workspace and launch two different types of simulation:
 - | Agisim simulation, by running the command `roslaunch agiros agisim.launch`.
   | This simulation environment has been written by us and supports different levels of complexity.
   | These levels of complexity can be configured in the file `agiros/agiros/parameters/simulation.yaml`, where,
   | for example, if we would comment the lines with "ModelRotorSimple" and uncomment the lines with "ModelRotorBEM",
   | then a BEM simulation will be launched. 
 - Gazebo RotorS simulation, by running the command `roslaunch agiros simulation.launch`

These simulation environments allow the user to test their code by offering a user friendly GUI. The simplest task would be a "Go to pose", which can directly be executed by pressing buttons in the GUI. More complex maneuvers can also be performed, like trajectory tracking. For this, the trajectory can be loaded from a `.csv` file
<div align="center">

.. image:: https://user-images.githubusercontent.com/21340299/174614805-ece87b54-f6a0-460c-8b33-06cb253161aa.png


How do I change the characteristics of my simulation?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Everything is structured in `.yaml` files. The most important of these `.yaml` files is the so-called "Pilot" file.
For example, when launching the Agisim simulation, the `agiros/agiros/parameters/simple_sim_pilot.yaml` file is used.
Here, the user can define which controller to use, which estimator to use, which quadrotor model to use, etc.
If one were to change the mass of the quadrotor, for example, one would in this case need to modify the
`agiros/agiros/parameters/quads/kingfisher.yaml` file.
