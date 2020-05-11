#!/bin/sh -x
file="catalogue.json"
url="https://servicedesk-marketplace.com/ext/export.php"
wget -O "/tmp/$file" "$url"
chown www-data:www-data "/tmp/$file"
exit 0