#!/usr/bin/with-contenv bashio
echo "Configurando token"
loclx --version
export ACCESS_TOKEN=$(bashio::config 'token')
echo "Iniciando serviço"
echo "Linha de comando"
echo $(bashio::config 'command')
command=$(bashio::config 'command')
loclx $command