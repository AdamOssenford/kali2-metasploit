#!/bin/bash
# start database
/etc/init.d/postgresql restart
# wait
echo "STARTING DATABASE" && sleep 15
# wait a bit longer
echo "PREPARING DATABASE CONNECTIONS" && sleep 10
# troll to wait for postgres
echo "LOADING TABLES" && sleep 10
# launch msfconsole
/usr/bin/msfconsole
