# Base docker image
# RUN popcorntime.sh


FROM ubuntu
MAINTAINER jerivas<jerivas@uaq.edu.mx>

COPY popcorntime.sh config /

RUN \
    dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y \
    libgtk2.0-0:i386 libnss3 libgconf-2-4 libasound2-plugins-extra libnotify4 

RUN \
    apt-get install -y --no-install-recommends \
    ca-certificates \
    gconf-service \
    hicolor-icon-theme \
    libappindicator1 \
    libasound2 \
    libcanberra-gtk-module \
    libcurl3 \
    libexif-dev \
    libgconf-2-4 \
    libgl1-mesa-dri \
    libgl1-mesa-glx \
    libnspr4 \
    libnss3 \
    libpango1.0-0 \
    libv4l-0 \
    libxss1 \
    libxtst6 \
    wget \
    xdg-utils 
    
RUN \
    apt-get install -y --no-install-recommends xz-utils

RUN wget https://get.popcorntime.io/build/Popcorn-Time-0.3.8-0-Linux-64.tar.xz -P /src/

RUN mkdir /opt/popcorntime/ && tar xvf /src/Popcorn-Time-0.3.8-0-Linux-64.tar.xz -C /opt/popcorntime/

# ENTRYPOINT [ "/opt/popcorntime/Popcorn-Time" ]


