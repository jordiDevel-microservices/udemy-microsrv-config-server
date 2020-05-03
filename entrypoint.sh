#!/usr/bin/env bash

./wait-for-it.sh -t 0 postgres12:5432 -- echo "postgresql is up"
./wait-for-it.sh -t 0 mysql8:3306 -- echo "mysql is up"
./wait-for-it.sh -t 0 rabbitmq38:5672 -- echo "rabbitmq is up"

java -jar -Dspring.profiles.active=docker config-server.jar
