#!/bin/bash

source ../.env

CMD = $()

nodemon --watch '../hasura' -e '*' --exec "gq http://localhost:8080/v1/graphql \
    -H \"X-Hasura-Admin-Secret: $ADMIN_SECRET\" \
    --introspect | tee ../mobile/lib/schema.graphql ../fns/src/schema.graphql > /dev/null"