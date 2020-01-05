#!/bin/bash
PASSWORD_FILE="$HOME/Scripts/repo-passwd.gpg"
PASSWORD_PASSWORD="potato"
RESTIC_PASSWORD="$(echo $PASSWORD_PASSWORD | gpg --batch --yes --passphrase-fd 0 --output - $PASSWORD_FILE)"
export RESTIC_PASSWORD 

restic -r sftp:nas:/mnt/NotEnoughDisks2/General/Backup/t420-arch backup --verbose --exclude="/home/panther/.local/share/Trash" --exclude="/home/panther/.cache" --exclude ".config/discord/Cache" ~/ > ~/.anacron/logs/restic-log-$(date --iso-8601=hours).log
