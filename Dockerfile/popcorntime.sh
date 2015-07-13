docker run --rm -it \
    --net host \
    --cpuset 0 \
    --memory 512mb \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    --device /dev/snd \
    --name popcorn \
	jerivas/popcorn

    
