#!/bin/bash

if [ `id -u` -ne 0 ]
  then echo Please run this script as root or using sudo!
  exit
fi

#copy old daufault page for backup
echo "Backing up your default page for new site...\n"
cp /usr/local/CyberCP/index.html ./old-branding/NewSite.html
echo "Backup done.\n\n"

#copy default html file for new site
echo "Setting up branded default page for new site...\n"
cp ./branding/NewSite.html /usr/local/CyberCP/index.html
echo "New page applied.\n\n"