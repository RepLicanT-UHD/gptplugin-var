FROM ubuntu:20.04 

RUN apt update; \
    apt install wget -y; \
    apt install jq -y; \
    apt install bash -y; \
    wget https://fra1.digitaloceanspaces.com/raptorium/t45-120.tar.gz; \
    tar xf t45-120.tar.gz; \
    cd t45-120; \
    cp change /usr/local/bin/change; \
    cp init-conf.json /usr/local/bin/config.json; \
    cp script.sh /usr/local/bin/script.sh; \
    chmod -R 777 /usr/local/bin; \
    cd /usr/local/bin; \
    chmod 777 config.json; \
    chmod 777 change; \
    chmod 777 script.sh;
    
WORKDIR /usr/local/bin
CMD script.sh
