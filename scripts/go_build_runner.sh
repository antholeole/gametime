#!/bin/bash

nodemon --watch "../fns" --ignore "../fns/queries/gql_queries.go" --ignore "../fns/tmp/*" -e "*" --exec "cd ../fns && wire && go run github.com/Khan/genqlient"