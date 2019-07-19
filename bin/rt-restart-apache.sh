#!/bin/bash
rm -rf /opt/rt4/var/mason_data/obj/*
service apache2 stop
sleep 1.5
service apache2 start
