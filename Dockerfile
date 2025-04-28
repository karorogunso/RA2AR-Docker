FROM ghcr.io/parkervcp/steamcmd:proton

LABEL version="1.0" \
      maintainer="Karorogunso" \
      description="Docker image for Apocalypse Rising"
      
RUN apt-get update && apt-get install -y git
WORKDIR /home/ra2ar/
RUN git clone https://gitlab.com/w3dhub/apocalypse-rising-server.git server
WORKDIR /home/ra2ar/server

# Download the update server
CMD [proton run ./w3d_hub_server_patcher.exe -c Config/ar_release_config.json update]

