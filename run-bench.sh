#!/bin/bash

su kevin

createdb -U kevin -E utf8  pgbench

pgbench -U kevin -c 1 -t 10000 pgbench


