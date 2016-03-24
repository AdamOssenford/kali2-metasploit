# kali2-metasploit
Repository for adamoss/kali2-metasploit autobuild

for additional information on how to use this please visit dockerhub
https://hub.docker.com/r/adamoss/kali2-metasploit/

USAGE
========
```
docker run -it -p 2002:22 -p 9999:9999 adamoss/kali2-metasploit
```
Adjust the -p port settings as needed

Use host net
```
docker run -it --net=host adamoss/kali2-metasploit
```
