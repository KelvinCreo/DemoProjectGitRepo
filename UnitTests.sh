#!/bin/bash

#Tell jenkins where the tools are
export PATH=${PATH}:/Users/Kelvin/adt-bundle-mac-x86_64/sdk/tools:/Users/Kelvin/adt-bundle-mac-x86_64/sdk/platform-tools
export ANDROID_HOME=/Users/Kelvin/adt-bundle-mac-x86_64/sdk

#Unit Tests
cd /Users/Kelvin/.jenkins/workspace/DemoProject/DemoProject
adb shell am instrument -w com.example.demoproject.test/android.test.InstrumentationTestRunner

#Remove previous files
rm -f logcat.txt

#Create new ouput file
( exec adb logcat > logcat.txt ) & pid=$! sleep 5 ; kill $pid

#Check file for AssertionFailedError
grep -q "junit.framework.AssertionFailedError" logcat.txt && a="found" || a="missing"

#Figure out the results
if [ $a == "missing" ]
then
    echo "passed"
    echo $a
    exit 0
else
    echo "failed"
    echo $a
    exit -1
fi