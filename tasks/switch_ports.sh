# NGINX Ports
# Several Synology services use port 80 and 443 via Nginx. This conflicts with NPM. 
# This script reconfigures Nginx to use 82 and 445 instead, leaving ports 80 and 446 free for NPM to use.
HTTP_PORT=84
HTTPS_PORT=446
sed -i "s/^\( *listen .*\)80/\1$HTTP_PORT/" /usr/syno/share/nginx/*.mustache || { echo "Switching HTTP port to 84 failed." ; exit 1; }
sed -i "s/^\( *listen .*\)443/\1$HTTPS_PORT/" /usr/syno/share/nginx/*.mustache || { echo "Switching HTTPS port to 446 failed." ; exit 1; }

synosystemctl restart nginx

