#!/bin/sh
RPG_HOST_DIR=$1
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
sudo touch $XAUTH
sudo xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

# Comment out if you don't have a nvidia GPU
# More info: http://wiki.ros.org/docker/Tutorials/Hardware%20Acceleration
GPU_OPTIONS="--gpus all --runtime=nvidia"
TMUX_CONF=$HOME/.tmux.conf      # Comment out if you don't have tmux

docker run --privileged --rm -it \
           --volume $RPG_HOST_DIR:/home/agilicious/catkin_ws/src/rpg:rw \
           --volume=$XSOCK:$XSOCK:rw \
           --volume=$XAUTH:$XAUTH:rw \
           --volume=/dev:/dev:rw \
           --volume=/var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket \
           --volume=$TMUX_CONF:/home/agilicious/.tmux.conf:ro \
           ${GPU_OPTIONS} \
           --shm-size=1gb \
           --env="XAUTHORITY=${XAUTH}" \
           --env="DISPLAY=${DISPLAY}" \
           --env=TERM=xterm-256color \
           --env=QT_X11_NO_MITSHM=1 \
           --net=host \
           -u "agilicious"  \
           ros_agilicious:latest \
           bash
