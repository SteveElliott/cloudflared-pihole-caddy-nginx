#! /usr/bin/env bash

source .env

: ${NETSHOOT_TAG:=latest}

: ${NET:="${1}"}
: ${NET:=host}

#version: '3'

#networks:
#  srvr:
#    name: srvr 
#    external: true

#services:
#  netshoot:
#    image: nicolaka/netshoot:v0.7
#    stdin_open : true
#    tty: true
#    container_name: netshoot
#    volumes:
#      - /etc/localtime:/etc/localtime:ro
#    networks:
#      - srvr

docker run --rm -d --name netshoot"${NET}" -it --network "${NET}" nicolaka/netshoot:${NETSHOOT_TAG}
