#!/bin/bash

export CXXFLAGS="-std=c++11"

./build-android.sh $ANDROID_NDK_ROOT --with-libraries=thread,filesystem,date_time,system,atomic | grep -v -F "common.copy"

