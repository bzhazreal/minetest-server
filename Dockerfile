FROM debian:buster-slim AS builder

ARG MINETEST_RELEASE="5.3.0"

RUN apt update && \
    apt install -y  g++\
                    make\
                    libc6-dev\
                    libirrlicht-dev\
                    cmake\
                    libbz2-dev\
                    libpng-dev\
                    libjpeg-dev\
                    libxxf86vm-dev\
                    libgl1-mesa-dev\
                    libsqlite3-dev\
                    libogg-dev\
                    libvorbis-dev\
                    libopenal-dev\
                    libcurl4-gnutls-dev\
                    libfreetype6-dev\
                    zlib1g-dev\
                    libgmp-dev\
                    libjsoncpp-dev\
                    git &&\
                    git clone --depth 1 https://github.com/minetest/minetest.git &&\
                    cd minetest &&\
                    git clone --depth 1 https://github.com/minetest/minetest_game.git games/minetest_game &&\
                    cmake . -DRUN_IN_PLACE=TRUE -DBUILD_SERVER=FALSE -DBUILD_CLIENT=TRUE &&\
                    make -j$(nproc)
