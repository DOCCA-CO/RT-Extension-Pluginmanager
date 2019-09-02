#!/bin/bash
echo "stop apache"
/etc/init.d/apache2 stop
rm -rf /opt/rt4/var/mason_data/obj/*
sleep 1.5
echo "start apache"
/etc/init.d/apache2 start
