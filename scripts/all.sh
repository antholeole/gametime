#!/bin/bash

source ./flutter_build_runner.sh & \
 source ./open_hasura_console.sh & \
 source ./watch_schema_changes.sh & \
 source ./go_build_runner.sh & \ wait