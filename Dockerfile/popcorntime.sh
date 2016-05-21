#!/bin/bash

docker run -it \
    --net host \
    --memory 512mb \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    --device /dev/snd \
    --device /dev/dri \
    --name popcorntime \
	jerivas/popcorntime \
    /opt/popcorntime/Popcorn-Time

#    -e http_proxy=localhost:3128 \
    
