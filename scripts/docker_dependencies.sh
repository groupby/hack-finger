#!/usr/bin/env bash
docker rm -f sql
docker pull postgres:9.6
docker run -d --name sql -e POSTGRES_PASSWORD=SOME_PASSWORD -e POSTGRES_USER=FINGER_ADMIN -p 5432:5432 postgres:9.6
docker logs -f sql