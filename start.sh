#!/usr/bin/env bash

echo "Starting mini-dinstall..."

mini-dinstall
nginx

chmod 1777 /data/mini-dinstall/incoming

tail -f /data/mini-dinstall/mini-dinstall.log