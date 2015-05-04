#!/usr/bin/env bash
echo "Starting mini-dinstall..."

if [[ ! -e "/data/mini-dinstall.conf" ]]
then
    cp /etc/mini-dinstall.conf /data/mini-dinstall.conf
fi

nginx

mini-dinstall --config=/data/mini-dinstall.conf

tail -f /data/mini-dinstall/mini-dinstall.log