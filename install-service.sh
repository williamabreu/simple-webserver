if [ -z $1 ];
then

    echo "Usage: sh install-service.sh <server-working-directory>"

else

    sudo echo "[Unit]
Description=NodeJS Simple Webserver

[Service]
ExecStart=$1/main.js
Restart=always
User=nobody
# Note Debian/Ubuntu uses 'nogroup', RHEL/Fedora uses 'nobody'
Group=nogroup
Environment=PATH=/usr/bin:/usr/local/bin
Environment=NODE_ENV=production
WorkingDirectory=$1

[Install]
WantedBy=multi-user.target" >  /etc/systemd/system/simple-webserver.service

fi
