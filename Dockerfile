FROM adamoss/kali2-base
####################################################
# YOU CAN USE officialkali/kali:2.0 if you wish   ##
####################################################
MAINTAINER Adam Ossenford <AdamOssenford@gmail.com>

####################################################
# UPDATE APT AND INSTALL THE METASPLOIT FRAMEWORK
####################################################
RUN apt-get update -y && apt-get install metasploit-framework -y && msfupdate 

####################################################
# CUSTOMIZE METASPLOIT BANNER TO SOMETHING SECKC
####################################################
RUN rm /usr/share/metasploit-framework/data/logos/*.txt
COPY seckc-docker.txt /usr/share/metasploit-framework/data/logos/cowsay.txt

####################################################
# SOMETIMES THE DATABASE SUCKS SO RESTART IT NOW
####################################################
RUN service postgresql restart && sleep 3 && msfdb init && sleep 2 && service postgresql start

####################################################
# WE ENTER AT /bin/bash YOU COULD CHANGE THIS
####################################################
ENTRYPOINT ["/bin/bash"]
 
