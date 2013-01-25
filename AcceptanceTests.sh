#!/bin/bash

#Acceptance Tests
cd /Users/Kelvin/.jenkins/DemoProject/DemoProject
calabash-android run ./bin/MainActivity-debug.apk

exit