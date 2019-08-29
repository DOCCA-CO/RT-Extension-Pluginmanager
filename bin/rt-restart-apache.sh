#!/bin/bash
echo "stop apache"
service apache2 stop
rm -rf /opt/rt4/var/mason_data/obj/*
sleep 1.5
echo "start apache"
service apache2 start
