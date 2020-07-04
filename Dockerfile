FROM ubuntu:16.04
LABEL maintainer="Steven Tan <git@sktan.com>"

RUN DEBIAN_FRONTEND=nointeractive dpkg --add-architecture i386 && apt-get update && apt-get install wget libc6:i386 lib32stdc++6 -y
RUN wget -O /tmp/sourcemod.tar.gz 'https://sourcemod.net/latest.php?version=1.10&os=linux' && \
    mkdir -p /var/csgo && tar zxvf /tmp/sourcemod.tar.gz -C /var/csgo && chmod 700 /var/csgo/addons/sourcemod/scripting/compile.sh

RUN chmod 700 /var/csgo/addons/sourcemod/scripting/spcomp

WORKDIR /var/csgo/addons/sourcemod/scripting

ENTRYPOINT ["./spcomp"]
