#!/bin/bash

#Acceptance Tests
cd /Users/Kelvin/.jenkins/DemoProject/DemoProject
calabash-android run /Users/Kelvin/.jenkins/DemoProject/DemoProject/bin/MainActivity-debug.apk

exit