#!/usr/bin/with-contenv bashio
echo "Starting"
loclx --version
export ACCESS_TOKEN=$(bashio::config 'token')
echo "Command line"
echo $(bashio::config 'command')
command=$(bashio::config 'command')
loclx $command