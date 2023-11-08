#!/usr/bin/with-contenv bashio
echo "Starting"
loclx --version
export ACCESS_TOKEN=$(bashio::config 'token')
loclx tunnel config -f /config/local-xpose/config.yaml 