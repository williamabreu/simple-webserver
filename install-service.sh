if [ -z $1 ];
then

    echo "Usage: sh install-service.sh <server-working-directory>"

else

    echo "[Unit]
Description=NodeJS Simple Webserver
#Requires=After=mysql.service

[Service]
ExecStart=/usr/bin/node $1/main.js
WorkingDirectory=$1
Restart=always
# Restart service after 10 seconds if node service crashes
RestartSec=10
# Output to syslog
StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=simple-webserver
User=root
Group=root
Environment=NODE_ENV=production PORT=80

[Install]
WantedBy=multi-user.target" >  /etc/systemd/system/simple-webserver.service

fi
