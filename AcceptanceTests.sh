#!/bin/bash

#Acceptance Tests
cd /Users/Kelvin/.jenkins/workspace/DemoProject/DemoProject
calabash-android run ./bin/MainActivity-debug.apk

exit