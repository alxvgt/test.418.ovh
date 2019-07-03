#!/bin/bash
rm .env
cp ./docker/env/compose.dev.env .env
set -o allexport
source .env
set +o allexport
sudo docker-compose up -d
