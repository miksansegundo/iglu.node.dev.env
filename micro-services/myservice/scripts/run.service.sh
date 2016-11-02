#!/usr/bin/env bash

# Auto reload service in development mode when files change
# Run with a single process manager in production

if [ "${NODE_ENV}" = "development" ]; then
    npm watch.service;
else
    npm run.service;
fi