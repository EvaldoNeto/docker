#!/usr/bin/env bash

docker run --name useme --rm -d -p 8383:8383 -p 3306:3306 -v /var/lib/mysql:/var/lib/mysql biga8/ubuntu-useme
docker exec useme service mysql start