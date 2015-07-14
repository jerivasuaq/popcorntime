docker run -it \
    --net host \
    --cpuset 0 \
    --memory 512mb \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    --device /dev/snd \
    --device /dev/dri \
    --name popcorn \
	jerivas/popcorn \
    /opt/popcorntime/Popcorn-Time

    
