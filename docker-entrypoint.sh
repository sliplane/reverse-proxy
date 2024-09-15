#!/bin/sh

# Use envsubst to replace environment variables in the template file
envsubst '$TARGET_HOST $TARGET_PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start Nginx
nginx -g 'daemon off;'
