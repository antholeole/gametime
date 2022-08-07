#!/bin/bash

# force the other scripts to end
trap 'exit 0' INT

source ./flutter_build_runner.sh & source ./open_hasura_console.sh & source ./watch_schema_changes.sh & wait