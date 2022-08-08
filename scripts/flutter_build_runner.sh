#!/bin/bash

cd ../mobile && flutter pub get
cd ../mobile && flutter pub run build_runner watch --delete-conflicting-outputs