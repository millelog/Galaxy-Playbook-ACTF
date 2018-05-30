#!/bin/bash

#Kill all instances of old galaxy daemons
pkill -f uwsgi
ps -ef | grep myProcessName | grep -v grep | awk '{print $2}' | xargs -r kill -9

#restart worker daemons and main web process
./run.sh --daemon
./scripts/galaxy-main -c config/galaxy.yml --server-name handler0 --daemonize
./scripts/galaxy-main -c config/galaxy.yml --server-name handler1 --daemonize
./scripts/galaxy-main -c config/galaxy.yml --server-name handler2 --daemonize
