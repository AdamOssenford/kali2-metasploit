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

the above settings will forward host machine port 2002 to container port 22 along with host machine port 9999 to container port 9999
