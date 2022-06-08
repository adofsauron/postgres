#!/bin/bash

psql -U kevin -d test -h localhost -p 5432 -c "DROP TABLE COMPANY;"

echo -e "\n"

psql -U kevin -d test -h localhost -p 5432 -c "CREATE TABLE COMPANY(
   ID INT PRIMARY KEY     NOT NULL,
   NAME           TEXT    NOT NULL,
   AGE            INT     NOT NULL,
   ADDRESS        CHAR(50),
   SALARY         REAL,
   JOIN_DATE      DATE
);"

echo -e "\n"

psql -U kevin -d test -h localhost -p 5432 -c "select count(1) from company;"

echo -e "\n"

for ((i=1; i<=100000; i++))
do

    SQL="INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY,JOIN_DATE) VALUES ($i, 'Paul_$i', $i, 'California_$i', 20000.00,'2001-07-13');"

    echo psql -U kevin -d test -h localhost -p 5432 -c "$SQL"
    psql -U kevin -d test -h localhost -p 5432 -c "$SQL"
done

echo -e "\n"

psql -U kevin -d test -h localhost -p 5432 -c "select count(1) from company;"
