#!/bin/bash

ps -ef | grep postgres | grep -v grep | grep -v psql

echo -e "\n"

echo "select oid,* from pg_database;"
psql -U kevin -d test -h localhost -p 5432 -c "select oid,* from pg_database;"

echo -e "\n"
 
echo "select relname,oid from pg_class where relname in ('company');"
psql -U kevin -d test -h localhost -p 5432 -c "select relname,oid from pg_class where relname in ('company');"

echo -e "\n"

echo "select rolname,oid from pg_authid where rolname in ('kevin','postgres');"
psql -U kevin -d test -h localhost -p 5432 -c "select rolname,oid from pg_authid where rolname in ('kevin','postgres');"

echo -e "\n"
