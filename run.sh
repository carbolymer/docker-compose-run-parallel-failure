#!/bin/bash
for i in `seq 20`
do
    docker-compose run --name stress-$i stress &
done
