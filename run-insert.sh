#!/bin/bash

psql -U kevin -d test -h localhost -p 5432 -c "select count(1) from company;"

for ((i=1; i<=100000; i++))
do

    SQL="INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY,JOIN_DATE) VALUES ($i, 'Paul_$i', 32, 'California_$i', 20000.00,'2001-07-13');"

    echo psql -U kevin -d test -h localhost -p 5432 -c "$SQL"
    psql -U kevin -d test -h localhost -p 5432 -c "$SQL"
done

psql -U kevin -d test -h localhost -p 5432 -c "select count(1) from company;"
