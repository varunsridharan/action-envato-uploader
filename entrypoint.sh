#!/bin/sh
set -eu
WDEFAULT_REMOTE_DIR=${REMOTE_DIR:-"./"}
echo "Envato Upload Started"
cd $3;
echo "Copying Files From $3";
lftp "ftp.marketplace.envato.com" -u $1,$2 -e "set ftp:ssl-allow yes; mirror -R ./ $WDEFAULT_REMOTE_DIR; quit"
echo "FTP Deploy Complete"
exit 0