#!/bin/bash

apt-get install -y runit

cd /usr/local/bin && wget https://raw.github.com/tianon/cgroupfs-mount/master/cgroupfs-mount && chmod a+x cgroupfs-mount
cd /etc/sv && git clone https://github.com/yushi/debian-docker-runit && ln -s /etc/sv/debian-docker-runit/docker /etc/service/docker
cd /usr/sbin && curl -L https://github.com/umiddelb/armhf/raw/master/bin/docker-1.5.0> docker && chmod a+x docker

sv start docker
