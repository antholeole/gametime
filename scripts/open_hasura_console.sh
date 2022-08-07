#!/bin/bash

source ../.env

cd ../hasura && hasura console --admin-secret $ADMIN_SECRET --endpoint http://localhost:8080
