#!/bin/sh
set -eu
echo "Envato Upload Started"
#cd $3;
echo "Copying Files From $3";
lftp "ftp.marketplace.envato.com" -u $1,$2 -e "set ftp:ssl-allow yes; mirror -R $3 ./; quit"
echo "FTP Deploy Complete"
exit 0