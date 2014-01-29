#!/bin/sh

# OSX

xcrun xcodebuild -project xcode/hb.xcodeproj -target hb -configuration Release

mkdir -p lib/osx
mv lib/libhb.a lib/osx/libhb.a

# iOS

xcrun xcodebuild -project xcode/hb.xcodeproj -target hb_ios -configuration Release
xcrun xcodebuild -project xcode/hb.xcodeproj -target hb_ios_sim -configuration Release -sdk iphonesimulator

mkdir -p lib/ios
lipo -c lib/libhb_ios.a lib/libhb_ios_sim.a -o lib/ios/libhb.a

rm lib/*.a

# ANDROID

ndk-build -j 4

mkdir -p lib/android/armeabi-v7a
mv obj/local/armeabi-v7a/libhb.a lib/android/armeabi-v7a/libhb.a
