#!/bin/bash

if [ `id -u` -ne 0 ]
  then echo Please run this script as root or using sudo!
  exit
fi

#copy default html file for new site
cp ./branding/NewSite.html /usr/local/CyberCP/index.html