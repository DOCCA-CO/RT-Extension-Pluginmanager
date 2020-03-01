#!/bin/sh -x
file="catalogue.json"
url="https://servicedesk-marketplace.com/downloads"
wget -O "/tmp/$file" "$url/$file"
chown www-data:www-data "/tmp/$file"
exit 0