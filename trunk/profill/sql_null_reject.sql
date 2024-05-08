

create database d1;

\c d1;


create table t1( a int, b int );
create table t2( a int, b int );
 
insert into t1(a,b) values(3,4);
insert into t1(a,b) values(5,6);
 
 
insert into t2(a,b) values(3,1);
insert into t2(a,b) values(7,2);


EXPLAIN ANALYZE VERBOSE    
SELECT * FROM  t1 LEFT JOIN t2 ON t2.a = t1.a WHERE t2.b < 5;

