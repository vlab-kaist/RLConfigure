FROM ubuntu:22.04

WORKDIR /app

RUN apt update && apt install -y curl software-properties-common git xvfb scrot vim\
	&& add-apt-repository ppa:deadsnakes/ppa -y && apt update \
	&& DEBIAN_FRONTEND=noninteractive apt install -y python3.11 python3.11-venv python3.11-dev python3-pip wine64
RUN ln -sf /usr/bin/python3.11 /usr/bin/python3

RUN git clone https://github.com/songjoon/rlbot-python-example

RUN cd rlbot-python-example &&python3 -m venv venv && . venv/bin/activate

RUN cd rlbot-python-example && pip install -r requirements.txt
RUN cd rlbot-python-example && curl -L -o RLBotServer https://github.com/RLBot/core/releases/download/v0.4.4/RLBotServer

RUN git clone https://github.com/derrod/legendary.git
RUN cd legendary && pip install . && echo 'export PATH=$PATH:~/.local/bin' >> ~/.profile && . ~/.profile
RUN dpkg --add-architecture i386 && apt-get update && apt-get -y install wine32

#RUN Xvfb :1 -screen 0 1024x768x24 &
#RUN export DISPLAY=:1
RUN apt install -y winbind
CMD ["bash"]

