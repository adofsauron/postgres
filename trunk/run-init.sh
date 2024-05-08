#!/bin/bash


HERE=`pwd`

chown -R kevin:kevin  .

mkdir -p /var/run/postgresql
chown -R kevin:kevin /var/run/postgresql

su kevin

export PGDATA=/home/kevin/postgres/data


rm -rf /home/kevin/postgres/data

mkdir -p  /home/kevin/postgres/data

chown -R kevin:kevin /home/kevin/postgres/data

export PGDATA=/home/kevin/postgres/data

pg_ctl  init


exit

cd $HERE

