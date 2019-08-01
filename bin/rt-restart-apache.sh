#!/bin/bash
service apache2 stop
rm -rf /opt/rt4/var/mason_data/obj/*
sleep 1.5
service apache2 start
