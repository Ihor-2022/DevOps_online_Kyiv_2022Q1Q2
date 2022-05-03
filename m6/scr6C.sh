#!/bin/bash
echo This script will backup your data
echo Pls indicate path to the syncing directory, e.g. /home/user
read source
echo And now indicate path to the directory where backup will be stored
read destination
sudo rsync -arv --delete $source $destination --log-file=/var/log/backup.log
