#!/bin/sh
HOSTNAME=`uname -n`
if [ -f /usr/share/nginx/html/hostname ]; then
  HOSTNAME=`cat /usr/share/nginx/html/hostname`
fi
sed -i "s/!<\/title>/ on $HOSTNAME!<\/title>/g" /usr/share/nginx/html/index.html
sed -i "s/!<\/h1>/ on $HOSTNAME!<\/h1>/g" /usr/share/nginx/html/index.html
env > /usr/share/nginx/html/env.html
