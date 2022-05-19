#!/bin/bash

ps -aux | grep postgres | grep -v grep | grep -v psql
