#!/bin/bash

HERE=`pwd`

groupadd kevin
adduser kevin

chown -R kevin:kevin  .

mkdir -p /var/run/postgresql
chown -R kevin:kevin /var/run/postgresql

su kevin

export PGDATA=/home/kevin/postgres/data

pg_ctl  stop

sleep 3s

rm -rf /home/kevin/postgres/data

mkdir -p  /home/kevin/postgres/data

chown -R kevin:kevin /home/kevin/postgres/data

export PGDATA=/home/kevin/postgres/data

pg_ctl  init

pg_ctl  start

exit

cd $HERE
