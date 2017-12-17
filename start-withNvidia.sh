#!/bin/bash

if [ $# -gt 0 ]; then
    ENTRYPOINT="--entrypoint $@"
fi

SND="--device /dev/snd 
	-e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native 
	-v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native 
	-v $HOME/.config/pulse/cookie:/root/.config/pulse/cookie 
	--group-add $(getent group audio | cut -d: -f3) 
	"

	
VIDEO="
    -v /tmp/.X11-unix:/tmp/.X11-unix 
    -e DISPLAY=unix$DISPLAY 
    --device /dev/dri 
	"



DBUS="-v /run/dbus/:/run/dbus/ -v /dev/shm:/dev/shm"
xhost + # allow connections to X server

docker run \
    -it --rm \
    --net host \
    --memory 1024mb \
	--privileged \
	$SND \
	$VIDEO \
	$DBUS \
    --name popcorntime \
    $ENTRYPOINT \
	jerivas/popcorntime_nvidia
    

#    -e http_proxy=localhost:3128 \
    
