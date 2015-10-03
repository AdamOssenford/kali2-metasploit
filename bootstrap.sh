#!/bin/bash
#######################################################
# THIS SCRIPT LETS YOU BUILD KALI 2 FROM SOURCE AND 
# IMPORT THE KALI 2 IMAGE TO DOCKER
# THIS WAS USED TO CREATE adamoss/kali2-base
#######################################################
# Install dependencies (debbootstrap)
sudo apt-get install debootstrap
# Fetch the latest Kali debootstrap script from git
curl "http://git.kali.org/gitweb/?p=packages/debootstrap.git;a=blob_plain;f=scripts/kali;hb=HEAD" > kali-debootstrap &&\
sudo debootstrap sana ./kali-root http://http.kali.org/ ./kali-debootstrap &&\
# Import the Kali image into Docker
sudo tar -C kali-root -c . | sudo docker import - adamoss/seckc-kali2
######################################################
# COMMENTED OUT THE REMAINDER OF THIS FILE
# RENAME adamoss/seckc-kali2 TO YOUR REPO NAME
######################################################
#sudo rm -rf ./kali-root &&\
# Test the Kali Docker Image
#docker run -t -i kalilinux/kali cat /etc/debian_version &&\
#echo "Build OK" || echo "Build failed!"
# NOTE THIS SCRIPT WAS ADAPTED FROM THE FOLLOWING URL
# https://www.kali.org/news/official-kali-linux-docker-images/
