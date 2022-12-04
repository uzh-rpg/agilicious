Dockerized Build
================

Using our provided `Dockerfile <https://github.com/uzh-rpg/agilicious/blob/main/Dockerfile>`__
you can run the entire repository detached from the dependencies of your local system, in a docker container.

The steps to run it from scratch are:

#. | Install docker: https://docs.docker.com/engine/install/ubuntu/
#. | Pull ros image to docker: `docker pull ros`
#. | Clone agilicious repository to your host machine, and cd to the agilicious root folder.
   | There, you will see a `Dockerfile`. From there, build the docker image using the Dockerfile:
   | `sudo docker build --tag "ros_agilicious:latest" .` Run this command from dockerfile directory
#. | Run the docker with GUI capabilities and with access to our host repository,
   | such that changes in our local repository will have instant effect inside the docker container:
   | `./scripts/launch_container <your_catkin_workspace>`
#. | Now you have a terminal inside the container with all the dependencies needed to run the code.
   | Go to `/root/catkin_ws` and run `catkin build`.

For computers with NVIDIA graphic cards, there are some additional steps:
1. Install nvidia-docker2, following this: https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#setting-up-nvidia-container-toolkit
2. Make sure `this line <https://github.com/uzh-rpg/agilicious/blob/main/launch_container.sh#L10>`__ is uncommented in your docker launch file

