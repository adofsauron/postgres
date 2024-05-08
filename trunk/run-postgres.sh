#!/bin/bash

HERE=`pwd`

su kevin

export PGDATA=/home/kevin/postgres/data

pg_ctl  stop

sleep 3s

pg_ctl  start

exit

cd $HERE
