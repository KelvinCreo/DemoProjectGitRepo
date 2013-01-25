#!/bin/bash

#Tell jenkins where the tools are
export PATH=${PATH}:/Users/Kelvin/adt-bundle-mac-x86_64/sdk/tools:/Users/Kelvin/adt-bundle-mac-x86_64/sdk/platform-tools
export ANDROID_HOME=/Users/Kelvin/adt-bundle-mac-x86_64/sdk

#Build my app
cd /Users/Kelvin/.jenkins/workspace/DemoProject/DemoProject
rm -f build.xml
android update project -p . -t android-17 -s

#Update the tests
cd /Users/Kelvin/.jenkins/workspace/DemoProject/DemoProjectTest
android update test-project -p . -m ../DemoProject

exit