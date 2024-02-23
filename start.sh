#!/bin/bash

DJANGO_PATH="/root/csdc"
PORT="8000"
STATIC_FILES="/root/csdc/static"
LOGGER="$DJANGO_PATH/log/csdc.log"

cd $DJANGO_PATH

uwsgi --http :$PORT --module config.wsgi --static-map /static=$STATIC_FILES --logto $LOGGER