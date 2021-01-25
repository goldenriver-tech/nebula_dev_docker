FROM ubuntu:bionic

ENV DEBIAN_FRONTEND=noninteractive

ARG username
ARG password

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN adduser --disabled-login --gecos '' $username
RUN echo $username:$password | chpasswd
RUN adduser $username sudo
RUN adduser $username plugdev

RUN sed -ri 's/^#?#X11UseLocalhost\s+.*/X11UseLocalhost no/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

#RUN echo <your timezone> > /etc/timezone 

RUN apt-get update && apt-get install -y texinfo libglib2.0-dev liblz4-tool autoconf \
            libtool libsdl-dev build-essential golang git build-essential \
            curl unzip e2tools automake bison flex uml-utilities libcap-dev \
            libattr1-dev ant uml-utilities bc libssl-dev expect gcc-aarch64-linux-gnu \
            cpio g++-aarch64-linux-gnu net-tools dnsmasq iptables \ 
            jq rsync libsdl2-dev sshpass libswitch-perl doxygen graphviz \
            bsdmainutils python3-yaml cmake python3-pip iproute2

RUN apt-get update && apt-get install -y ccache vim tmux sudo bash-completion \
            gnome-terminal dbus-x11 netcat meld tree gitk \
            silversearcher-ag chrpath diffstat gawk locales

RUN pip3 install pipenv

RUN locale-gen en_US.UTF-8

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD    ["/usr/sbin/sshd", "-D"]

