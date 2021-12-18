#!/bin/sh

rm -r ./archive/*

xcodebuild archive -scheme "MySQL-iphoneos" -archivePath ./archive/iphoneos/MySQL.xcarchive
xcodebuild archive -scheme "MySQL-iphonesimulator" -archivePath ./archive/iphonesimulator/MySQL.xcarchive
xcodebuild archive -scheme "MySQL-macos" -archivePath ./archive/macos/MySQL.xcarchive
xcodebuild archive -scheme "MySQL-catalyst" -archivePath ./archive/catalyst/MySQL.xcarchive

sh build_xcframework.sh