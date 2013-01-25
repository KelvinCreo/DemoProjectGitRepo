#!/bin/bash

#Tell jenkins where the tools are
export PATH=${PATH}:/Users/Kelvin/adt-bundle-mac-x86_64/sdk/tools:/Users/Kelvin/adt-bundle-mac-x86_64/sdk/platform-tools
export ANDROID_HOME=/Users/Kelvin/adt-bundle-mac-x86_64/sdk

#Install our sdk file
cd /Users/Kelvin/.jenkins/workspace/DemoProject/DemoProject
ant clean debug install

#Install the tests
cd /Users/Kelvin/.jenkins/workspace/DemoProject/DemoProjectTest
ant clean debug install

exit