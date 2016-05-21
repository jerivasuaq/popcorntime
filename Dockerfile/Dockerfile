# Base docker image
# docker run -ti --rm jerivas/popcorntime /config > popcorntime.sh
# chmod +x popcorntime.sh
# dos2unix popcorntime.sh
# ./popcorntime.sh
# ```
# 
# The next time do:
# 
# ```
# docker start popcorn
# ```
# 
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

RUN wget -O popcorn-time.tar.xz http://popcorntime.ag/download.php?file=popcorn-time-community-v0.4.0-2-l64.tar.xz 

RUN mkdir /opt/popcorntime/ && tar xvf popcorn-time.tar.xz -C /opt/popcorntime/

ENTRYPOINT [ "/opt/popcorntime/Popcorn-Time" ]


