#!/bin/sh
set -eu

source /gh-toolkit/shell.sh

gh_validate_input "ENVATO_USERNAME" "ENVATO USERNAME is required to upload files to ENVATO FTP"
gh_validate_input "ENVATO_PERSONAL_TOKEN" "ENVATO_PERSONAL_TOKEN is required to upload files to ENVATO FTP"

ENVATO_USERNAME=$(gh_input "ENVATO_USERNAME")
ENVATO_PERSONAL_TOKEN=$(gh_input "ENVATO_PERSONAL_TOKEN")
ENVATO_DIST_DIR=$(gh_input "ENVATO_DIST_DIR" "./dist")

gh_log " "
gh_log "⬆️ Envato Upload Started"

cd $ENVATO_DIST_DIR

gh_log " "
gh_log_group_start  "💿 Files To Be Copied From : ${ENVATO_DIST_DIR}"
tree -a -C -h  --filelimit 100
gh_log_group_end

gh_log " "
gh_log_group_start  "⌛ Copying To FTP"
lftp "ftp.marketplace.envato.com" -u $ENVATO_USERNAME,$ENVATO_PERSONAL_TOKEN -e "set ftp:ssl-allow yes; mirror -R ./ ./; quit"
gh_log_group_end

gh_log " "
gh_log "👌 FTP Upload Complete"
