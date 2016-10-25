#!/usr/bin/env bash

# Auto reload service in development mode when files change

if [ "${NODE_ENV}" = "development" ]; then
    nodemon index.js
else
    dumb-init node index.js;
fi