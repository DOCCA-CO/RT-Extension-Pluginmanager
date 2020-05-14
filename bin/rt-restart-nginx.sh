#!/bin/bash
kill -QUIT `cat /var/run/fcgi.pid`
sleep 2
spawn-fcgi -u www-data -g www-data -P /var/run/fcgi.pid -a 127.0.0.1 -p 9000 -- /opt/rt4/sbin/rt-server.fcgi
exit 0