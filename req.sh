#!/bin/bash
DOCKER_HOST=`docker-machine ip default`
CONCURRENCY=2

curl -s -w 'req0:%{http_code}\n' -o /dev/null http://${DOCKER_HOST}
sleep 1
seq 1 ${CONCURRENCY} | xargs -P${CONCURRENCY} -I{} curl -s -w 'req{}:%{http_code}\n' -o /dev/null http://${DOCKER_HOST}
