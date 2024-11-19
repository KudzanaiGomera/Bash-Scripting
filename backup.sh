#!/bin/bash

# Script to back up the contents of "/Confidential" to a "/Backups/<date>" where date is the current date of the backup

# Storing the current date

date=$(date +%F)
echo "Current date read as: $date"

if [ ! -d "/Backups/$date" ]
then
  echo "/Backups/$date doesn't exist, creating directory"
  #making directory for the current date inside Backups
  mkdir "/Backups/$date"
else
  echo "Warning: /Backups/$date already exist, backup will override"
fi
#copying confidential dir into backup dir
cp -r /Confidential/* /Backups/$date/
