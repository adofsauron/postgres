#!/bin/bash

ps -ef | grep postgres | grep -v grep | grep -v psql
