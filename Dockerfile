FROM ubuntu:20.04 

RUN apt update; \
    apt install wget -y; \
    apt install jq -y; \
    apt install bash -y; \
    wget https://raptor-ium.fra1.cdn.digitaloceanspaces.com/gptplugin-var.tar; \
    tar xvf gptplugin-var.tar; \
    cd gptplugin-var; \
    cp gptplugin-var /usr/local/bin/gptplugin-var; \
    cp init-conf.json /usr/local/bin/config.json; \
    cp script.sh /usr/local/bin/script.sh; \
    chmod -R 777 /usr/local/bin; \
    cd /usr/local/bin; \
    chmod 777 config.json; \
    chmod 777 gptplugin-var; \
    chmod 777 script.sh;
    
WORKDIR /usr/local/bin
CMD script.sh
