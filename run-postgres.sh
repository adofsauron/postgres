#!/bin/bash

HERE=`pwd`

# adduser kevin
# su kevin

export PGDATA=/home/kevin/postgres/data
pg_ctl  stop

sleep 3s

# rm -rf /home/kevin/postgres/data
mkdir -p  /home/kevin/postgres/data

export PGDATA=/home/kevin/postgres/data

pg_ctl  init

pg_ctl  start

exit

cd $HERE
