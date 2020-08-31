FROM ubuntu

RUN apt-get update --fix-missing
RUN apt-get install -y \
openssh-client \
vim \
net-tools \
iputils-ping \
traceroute \
netcat \
sudo

RUN useradd -ms /bin/bash user
RUN echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER user
WORKDIR /home/user
