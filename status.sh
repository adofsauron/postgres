#!/bin/bash

ps -ef | grep postgres | grep -v grep | grep -v psql

echo -e "\n"

psql -U kevin -d test -h localhost -p 5432 -c "select oid,* from pg_database;"

echo -e "\n"
 
psql -U kevin -d test -h localhost -p 5432 -c "select relname,oid from pg_class where relname in ('company');"

echo -e "\n"