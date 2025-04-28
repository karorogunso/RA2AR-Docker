FROM ghcr.io/parkervcp/steamcmd:proton

LABEL version="1.0" \
      maintainer="Karorogunso" \
      description="Docker image for Apocalypse Rising"

# Init stuffs
USER root     
RUN apt-get update && apt-get install -y git htop nano tmux zip 
# After everything is done. we remove and do only package we need.

WORKDIR /home/ra2ar/
RUN git clone https://gitlab.com/w3dhub/apocalypse-rising-server.git server
WORKDIR /home/ra2ar/server

# Download the update server
# Let's me try local first and see what around.
#CMD [proton run ./w3d_hub_server_patcher.exe -c Config/ar_release_config.json update]