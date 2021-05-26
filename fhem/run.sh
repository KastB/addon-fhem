#!/bin/bash

CONFIG_PATH=/data/options.json

declare -x CPAN_PKGS=`jq -r '.cpan_pks' $CONFIG_PATH`
declare -x APT_PKGS=`jq -r '.apt_pks' $CONFIG_PATH`
declare -x PIP_PKGS=`jq -r '.pip_pks' $CONFIG_PATH`
declare -x NPM_PKGS=`jq -r '.npm_pks' $CONFIG_PATH`

mkdir -p /config/fhem
mkdir -p /opt/fhem
mount --bind /config/fhem /opt/fhem
cd /opt/fhem
/entry.sh start
