#!/bin/sh -x
service apache2 stop
sleep 2
killall -QUIT /usr/sbin/apache2
sleep 2
killall -9 /usr/sbin/apache2
sleep 1
ps auxww|grep apache2
rm -rf /opt/rt4/var/mason_data/obj/*
service apache2 start
exit 0