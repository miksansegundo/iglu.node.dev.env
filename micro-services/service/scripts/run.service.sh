#!/usr/bin/env bash

# Auto reload service in development mode when files change
# Run with a single process manager in production

if [ "${NODE_ENV}" = "development" ]; then
    npm watch.service;
elsenpm
    npm run.service;
fi