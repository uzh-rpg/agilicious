.. _ref-dockerized:

################
Dockerized Build
################

Using our provided `Dockerfile <https://github.com/uzh-rpg/agilicious/blob/main/Dockerfile>`_
you can run the entire repository detached from the dependencies of your local system, in a docker container.

The steps to run it from scratch are:

#. | Install docker: https://docs.docker.com/engine/install/ubuntu/
#. | Docker post installation steps: https://docs.docker.com/engine/install/linux-postinstall/ 
   #. | Summarized:
      
   - :code:`sudo groupadd docker`
   - :code:`sudo usermod -aG docker $USER`
   - :code:`newgrp docker`
   - :code:`docker run hello-world`

#. | For computers with NVIDIA graphic cards, there are some additional steps:
   
      - Install nvidia-docker2, following this: https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#setting-up-nvidia-container-toolkit
      - Uncomment the :code:`NVIDIA_DOCKER_REQUIREMENT='nvidia-docker2'` part in the :code:`launch_container.sh` file
        
#. | Pull ros image to docker: :code:`docker pull ros`
#. | Clone agilicious repository to your host machine, and cd to the agilicious root folder.
   | There, you will see a :code:`Dockerfile`. From there, build the docker image using the Dockerfile:
   | :code:`sudo docker build --tag "ros_agilicious:latest" .` Run this command from dockerfile directory
#. | Run the docker with GUI capabilities and with access to our host repository,
   | such that changes in our local repository will have instant effect inside the docker container:
   | :code:`./scripts/launch_container <your_catkin_workspace>`
#. | Now you have a terminal inside the container with all the dependencies needed to run the code.
   | Go to :code:`/home/agilicious/catkin_ws` and run :code:`catkin build`.
