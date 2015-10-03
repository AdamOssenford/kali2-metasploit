FROM adamoss/kali2-base
MAINTAINER Adam Ossenford <AdamOssenford@gmail.com>

RUN apt-get update -y && apt-get install metasploit-framework -y 
RUN rm /usr/share/metasploit-framework/data/logos/*.txt
COPY seckc-docker.txt /usr/share/metasploit-framework/data/logos/cowsay.txt
RUN service postgresql restart
ENTRYPOINT ["/bin/bash"]
 
