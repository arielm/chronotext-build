#!/bin/sh

# OSX

xcrun xcodebuild -project xcode/icu-common.xcodeproj -target icu-common -configuration Release

mkdir -p lib/osx
mv lib/libicu-common.a lib/osx/libicu-common.a

# iOS

xcrun xcodebuild -project xcode/icu-common.xcodeproj -target icu-common_ios -configuration Release
xcrun xcodebuild -project xcode/icu-common.xcodeproj -target icu-common_ios_sim -configuration Release -sdk iphonesimulator

mkdir -p lib/ios
lipo -c lib/libicu-common_ios.a lib/libicu-common_ios_sim.a -o lib/ios/libicu-common.a

rm lib/*.a

# ANDROID

ndk-build -j 4

mkdir -p lib/android/armeabi-v7a
mv obj/local/armeabi-v7a/libicu-common.a lib/android/armeabi-v7a/libicu-common.a
