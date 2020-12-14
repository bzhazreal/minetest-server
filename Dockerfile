FROM debian:buster-slim

LABEL maintainer="stanislas DAVID <stanislas.david@protonmail.com>"

###
#
# Install required packages.
#
###
RUN echo "deb http://deb.debian.org/debian buster-backports main contrib non-free" >> /etc/apt/sources.list &&\
    apt-get update &&\
    apt-get install -t buster-backports minetest -y &&\
    PATH=/usr/games/:$PATH &&\
    apt-get clean autoclean &&\
    apt-get autoremove --yes &&\
    rm -rfv /var/lib/{apt,dpkg,cache,log}

WORKDIR /minetest

VOLUME /minetest/minetest.conf
VOLUME /minetest/mods
VOLUME /minetest/games
VOLUME /minetest/worlds

EXPOSE 30000/udp

ENTRYPOINT [ "/usr/games/minetest" ]
CMD [ "" ]