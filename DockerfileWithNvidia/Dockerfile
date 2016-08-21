FROM jerivas/popcorntime
MAINTAINER jerivas

USER root

RUN apt-get update
RUN apt-get install -y mesa-utils

# install nvidia driver
RUN apt-get install -y binutils module-init-tools libgl1-mesa-dri:i386 pciutils
ADD NVIDIA-DRIVER.run /tmp/NVIDIA-DRIVER.run
RUN sh /tmp/NVIDIA-DRIVER.run -a -N --ui=none --no-kernel-module
RUN rm /tmp/NVIDIA-DRIVER.run

RUN useradd -ms /bin/bash popcorntime
RUN usermod -aG audio popcorntime

USER popcorntime
ENV HOME /home/popcorntime
VOLUME /home/popcorntime
ENV PULSE_SERVER unix:/tmp/pulse


