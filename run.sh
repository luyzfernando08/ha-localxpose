#!/usr/bin/with-contenv bashio
echo "Starting"
loclx --version
export ACCESS_TOKEN=$(bashio::config 'token')
export HTTP_LISTEN_ADDRESS=0.0.0.0:54537
loclx tunnel config -f /config/config.yaml -gui