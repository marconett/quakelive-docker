FROM ubuntu:14.04
MAINTAINER Marco Nett <mail@marco-nett.de>

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y libc6:i386 libstdc++6:i386 wget

RUN useradd -m quake

WORKDIR /home/quake

USER quake

RUN wget -q http://media.steampowered.com/installer/steamcmd_linux.tar.gz
RUN tar -xzf steamcmd_linux.tar.gz
RUN rm -f steamcmd_linux.tar.gz

# install the quake live server program
RUN ./steamcmd.sh +login anonymous +force_install_dir ./steamapps/common/qlds/ +app_update 349090 +quit

USER root
COPY *.cfg /home/quake/steamapps/common/qlds/baseq3/
COPY *.txt /home/quake/steamapps/common/qlds/baseq3/
COPY workshop.sh /home/quake/
RUN chown -R quake:quake /home/quake/steamapps/common/qlds/baseq3/*.cfg \
  /home/quake/steamapps/common/qlds/baseq3/*.txt \
  /home/quake/workshop.sh
RUN chmod u+x /home/quake/workshop.sh
USER quake

RUN /home/quake/workshop.sh

# ENTRYPOINT ["/home/quake/steamapps/common/qlds/run_server_x86.sh"]
ENTRYPOINT ["/home/quake/steamapps/common/qlds/run_server_x64.sh"]
