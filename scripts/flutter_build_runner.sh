#!/bin/bash

trap 'exit 0' INT

while :
do
    cd ../mobile && flutter pub get
    cd ../mobile && flutter pub run build_runner watch --delete-conflicting-outputs
done