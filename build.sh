#!/bin/bash

export CXXFLAGS="-std=c++14"

./build-android.sh \
        "${ANDROID_NDK_ROOT}" \
        --arch=armeabi-v7a,x86,arm64-v8a,x86_64 \
        --with-libraries=thread,filesystem,date_time,system,atomic,regex \
        --boost=1.68.0 \
    | grep -v -F "common.copy"

