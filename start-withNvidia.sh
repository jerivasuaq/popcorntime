#!/bin/bash

if [ $# -gt 0 ]; then
    ENTRYPOINT="--entrypoint $@"
fi

SND="--group-add audio --device /dev/snd "
DBUS="-v /run/dbus/:/run/dbus/ -v /dev/shm:/dev/shm"
xhost + # allow connections to X server

docker run \
    -it --rm \
    --net host \
    --memory 1024mb \
	--privileged \
    -e DISPLAY=unix$DISPLAY \
	-v="/tmp/.X11-unix:/tmp/.X11-unix:rw"  \
	$SND \
	$DBUS \
    --name popcorntime \
    $ENTRYPOINT \
	jerivas/popcorntime_nvidia
    

#    -e http_proxy=localhost:3128 \
    
