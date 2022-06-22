Using the file https://github.com/uzh-rpg/agilicious/blob/main/Dockerfile you can run the entire repository detached from the dependencies of your local system, in a docker container. The steps to run it from scratch are:


1. Install docker: https://docs.docker.com/engine/install/ubuntu/
2. Pull ros image to docker: `docker pull ros`
3. Clone agilicious repository to your host machine, and cd to the agilicious root folder. There, you will see a `Dockerfile`. From there, build the docker image using the Dockerfile:
`sudo docker build --tag "ros_agilicious:latest" .` Run this command from dockerfile directory
4. Run the docker with GUI capabilities and with access to our host repository, such that changes in our local repository will have instant effect inside the docker container:
`./scripts/launch_container <your_rpg_folder>`

      where `<your_rpg_folder>` is, in my case, `~/src/rpg`

5. Now you have a terminal inside the container with all the dependencies needed to run the code. Go to `/root/catkin_ws` and run `catkin build`.


For computers with NVIDIA graphic cards, there are some additional steps:
1. Install nvidia-docker2, following this: https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#setting-up-nvidia-container-toolkit
2. Make sure this line https://github.com/uzh-rpg/agilicious/blob/53180d13be1f092357cf120fa43457042dac5a05/launch_container.sh#L10 is uncommented in your docker launch file

