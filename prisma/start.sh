#!/usr/bin/env bash
# OVERRIDE DEFAULT IMAGE start.sh

set -e
cd /app
echo "Waiting MySQL service (tcp://$MYSQL_HOST:$MYSQL_PORT) to run PRISMA server on http://localhost:${PRISMA_PORT} ..."
dockerize --wait tcp://$MYSQL_HOST:$MYSQL_PORT --timeout 60s ./bin/prisma-local &
dockerize --wait http://localhost:${PRISMA_PORT} --timeout 60s prisma deploy
wait
