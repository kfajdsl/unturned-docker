FROM cm2network/steamcmd

RUN ./steamcmd.sh +login anonymous +force_install_dir ../unturned +app_update 1110390 +quit

WORKDIR /home/steam/unturned

# Volume /home/steam/unturned/Servers
ENV ServerID Wilder
CMD ./ServerHelper.sh +InternetServer/${ServerID}


