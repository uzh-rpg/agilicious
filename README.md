<div align="center">
  <img src="https://www.seekpng.com/png/full/286-2863187_coming-soon-banner-png.png">
  <br>
  <h1>Agilicious: Open-Source and Open-Hardware Agile Quadrotor for Vision-Based Flight</h1>
  <br>
  <b>Agile flight done right!</b>
  <br>
  <!-- <img src="https://github.com/uzh-rpg/agilicious/workflows/CLANG_CI/badge.svg?branch=master">
  <img src="https://github.com/uzh-rpg/agilicious/workflows/clang_format/badge.svg?branch=master"> -->
  <br>
  <img src="https://user-images.githubusercontent.com/17403970/174497361-aa212d77-7036-4f36-840d-c48cab492ac2.gif" width="700">
  <img src="https://user-images.githubusercontent.com/21340299/174775412-9595e3ed-7ef9-403b-ab08-0dbe4126243f.gif" width="350">
  <img src="https://user-images.githubusercontent.com/21340299/174776470-3a505384-c01e-4759-9173-973aa2bff27f.gif" width="350">
  <img src="https://user-images.githubusercontent.com/21340299/174776626-9c0912ac-ed38-4470-a3cf-d8b80dff4e99.gif" width="350">
  <img src="https://user-images.githubusercontent.com/21340299/174776748-87c4d27c-2dd0-4aec-9b4c-64fdab4d5c14.gif" width="350">
  <br>
  <a href="https://rpg.ifi.uzh.ch/docs/ScienceRobotics22_Foehn.pdf">Read the Paper!</a>
  <br>
  <a href="https://www.youtube.com/watch?v=fNYxPLyJ5YY">Watch the full Video!</a>
</div>

**Agilicious** is a co-designed hardware and software framework tailored to autonomous, agile quadrotor flight, which has been developed and used since 2016 at the [Robotics and Perception Group (RPG)](http://rpg.ifi.uzh.ch/) of the University of Zurich. Agilicious is described in this [Science Robotics 2022 paper](https://rpg.ifi.uzh.ch/docs/ScienceRobotics22_Foehn.pdf).
It is completely open-source and open-hardware and supports both model-based and neural-network-based controllers. 
Also, it provides high thrust-to-weight and torque-to-inertia ratios for agility, onboard vision sensors, GPU-accelerated compute hardware for real-time perception and neural-network inference, a real-time flight controller, and a versatile software stack.
In contrast to existing frameworks, Agilicious offers a unique combination of flexible software and high-performance hardware.
Agilicious has been used in over 30 scientific papers at our lab, including trajectory tracking for drone racing scenarios at up to 5g and 70km/h ([SciRob21_Foehn](https://rpg.ifi.uzh.ch/docs/ScienceRobotics21_Foehn.pdf), [Video](https://youtu.be/ZPI8U1uSJUs)), vision-based acrobatic flight ([RSS20 Kaufmann](https://rpg.ifi.uzh.ch/docs/RSS20_Kaufmann.pdf), [Video](https://youtu.be/2N_wKXQ6MXA)), obstacle avoidance in both structured and unstructured environments using solely onboard perception ([SciRob21_Loquercio](https://rpg.ifi.uzh.ch/docs/Loquercio21_Science.pdf), [Video](https://www.youtube.com/watch?v=m89bNn6RFoQ)), and hardware-in-the-loop simulation in virtual-reality environments.
Thanks to its versatility, we believe that Agilicious supports the next generation of scientific and industrial quadrotor research.
The full list of publications using Agilicious can be found [here](https://rpg.ifi.uzh.ch/aggressive_flight.html).

# Credits

If you use the code in the academic context, please cite:

* Philipp Foehn, Elia Kaufmann, Angel Romero, Robert Penicka, Sihao Sun, Leonard Bauersfeld, Thomas Laengle, Giovanni Cioffi, Yunlong Song, Antonio Loquercio, Davide Scaramuzza, ["Agilicious: Open-Source and Open-Hardware Agile Quadrotor for Vision-Based Flight"](https://rpg.ifi.uzh.ch/docs/ScienceRobotics22_Foehn.pdf), AAAS Science Robotics, 2022, [Video](https://www.youtube.com/watch?v=fNYxPLyJ5YY), [Bibtex](miscellaneous/references/Foehn2022science.bib)

Additionally, please cite the following papers for the specific extensions you make use of:

* Sihao Sun, Angel Romero, Philipp Foehn, Elia Kaufmann, Davide Scaramuzza, ["A Comparative Study of Nonlinear MPC and Differential-Flatness-based Control for Quadrotor Agile Flight"](https://rpg.ifi.uzh.ch/docs/Arxiv21_MPC_Sun.pdf), IEEE Transactions on Robotics, 2022, [Video](https://www.youtube.com/watch?v=XpuRpKHp_Bk), [Bibtex](miscellaneous/references/Sun2022tro.bib)
* Philipp Foehn, Angel Romero, Davide Scaramuzza, ["Time-Optimal Planning for Quadrotor Waypoint Flight"](https://rpg.ifi.uzh.ch/docs/ScienceRobotics21_Foehn.pdf), Science Robotics, 2021, [Video](https://youtu.be/ZPI8U1uSJUs), [Bibtex](miscellaneous/references/Foehn2021Science.bib)
* Antonio Loquercio, Elia Kaufmann, Rene Ranftl, Mark Müller, Vladlen Koltun, Davide Scaramuzza, ["Learning High-Speed Flight in the Wild"](https://rpg.ifi.uzh.ch/docs/Loquercio21_Science.pdf), Science Robotics, 2021, [Video](https://www.youtube.com/watch?v=m89bNn6RFoQ), [Bibtex](miscellaneous/references/Loquercio2021Science.bib)
* Leonard Bauersfeld, Elia Kaufmann, Philipp Foehn, Sihao Sun, Davide Scaramuzza, ["NeuroBEM: Hybrid Aerodynamic Quadrotor Model"](https://rpg.ifi.uzh.ch/docs/RSS21_Bauersfeld.pdf), RSS: Robotics, Science, and Systems, 2021, [Video](https://youtu.be/Nze1wlfmzTQ), [Bibtex](miscellaneous/references/Bauersfeld2021rss.bib)
* Elia Kaufmann, Antonio Loquercio, Rene Ranftl, Mark Müller, Vladlen Koltun, Davide Scaramuzza, ["Deep Drone Acrobatics"](https://rpg.ifi.uzh.ch/docs/RSS20_Kaufmann.pdf), RSS: Robotics, Science, and Systems, 2020, [Video](https://youtu.be/2N_wKXQ6MXA),  [Bibtex](miscellaneous/references/Kaufmann2020rss.bib)
* Matthias Faessler, Antonio Franchi, Davide Scaramuzza, ["Differential Flatness of Quadrotor Dynamics Subject to Rotor Drag for Accurate Tracking of High-Speed Trajectories"](https://rpg.ifi.uzh.ch/docs/RAL18_Faessler.pdf), IEEE Robotics and Automation Letters, 2018, [Video](https://youtu.be/VIQILwcM5PA), [Bibtex](miscellaneous/references/Faessler18ral.bib)

# What's in it for you?

Agilicious is split in two parts, *agilib* and *agiros*.

*agilib* contains base classes and module implementations providing the base functionality necessary for agile flight.
It contains controllers, estimators, and logic, but with minimal dependencies (mainly [Eigen](http://eigen.tuxfamily.org/index.php?title=Main_Page)).
It allows users to integrate Agilicious into their own infrastructure and can easily be extended with new modules.
Meanwhile, *agiros* provides bindings to common [ROS](https://www.ros.org) interfaces, which make it easy and quick to set up and get flying, both in simulation and real world.

In summary, this library offers the following modules:

* Pipelines
  provide a modular way to combine controllers, estimators, reference trajectories into a complete control system.
  It is possible to create multiple pipelines and switch between them at runtime, allowing rapid prototyping.
* Controllers
  * Model Predictive Control descred in [Falanga IROS'18](https://rpg.ifi.uzh.ch/docs/IROS18_Falanga.pdf) and [Sun TRO'22](https://rpg.ifi.uzh.ch/docs/Arxiv21_MPC_Sun.pdf)
  * Incremental Nonlinear Dynamic Inversion described in [Sun TRO'20](https://ieeexplore.ieee.org/document/9160894)
  * Geometric Control described in [Sun TRO'22](https://rpg.ifi.uzh.ch/docs/Arxiv21_MPC_Sun.pdf)
  * Cascaded PID similar to [Faessler RAL'18](https://rpg.ifi.uzh.ch/docs/RAL18_Faessler.pdf)
* Estimators
  * A standard EKF using a pose estimate and propagating with IMU measurements.
  * An EKF that uses a constant acceleration model and the Pose + IMU measurements.
  * A feedthrough module that provides a simple way to pipe in your own estimate sources.
  * A mock estimator that can corrupt an estimate with noise and bias to simulate real-world properties.
* References
  * Hover
  * Velocity Commands
  * Sampled Trajectories
  * Polynomial Trajectories
* Samplers
  * Time-based sampling along a given reference.
  * Positional sampling along a given reference which allows to robustly handle large disturbances.
* Bridges
  * [RotorS](https://github.com/ethz-asl/rotors_simulator) interface
  * Serial bridge to interface with our own flight control software
  * Serial bridge to interface through [LAIRD](https://www.lairdconnect.com) wireless modules.
  * Serial bridge to interface with [BetaFlight controllers](https://betaflight.com).
* Pilot
  which handles all logic and interfacing.
* Guard
  A safety guard implementation that can use a secondary estimate (e.g. motion capture) and take over if some criteria are invalidated.
  The guard can use a secondary pipeline configuration without relying on the user-defined modules.
  This allows for rapid prototyping with a virtual "safety net".
* Simulator
  A sophisticated and configurable simulation that runs magnitudes faster than real time and optionally provides aerodynamic BEM models as described in [Bauersfeld RSS'21](https://rpg.ifi.uzh.ch/docs/RSS21_Bauersfeld.pdf).


# License
The official license file can be found [here](https://rpg.ifi.uzh.ch/docs/Agilicious_LICENSE_AGREEMENT_ACADEMIC_USE.pdf).

To request access for collaboration, please go [here](https://agilicious.readthedocs.io/en/latest/index.html)
