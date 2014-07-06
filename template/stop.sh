#!/bin/bash

if [ -z "$(ps -ef | grep repo.jar | grep -v grep)" ]
then
    echo "Application is already stopped"
else
    kill `ps -ef | grep repo.jar | grep -v grep | awk '{ print $2 }'` > /dev/null 2>&1
fi

