#!/bin/bash

#Tell jenkins where the tools are
export PATH=${PATH}:/Users/Kelvin/adt-bundle-mac-x86_64/sdk/tools:/Users/Kelvin/adt-bundle-mac-x86_64/platform-tools
export ANDROID_HOME=/Users/Kelvin/adt-bundle-mac-x86_64/sdk

#Repeat the unlock sequence
sleep 10
exec adb shell input keyevent 82
exec adb shell input keyevent 4