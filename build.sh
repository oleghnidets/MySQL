#!/bin/sh

rm -r ./archive/*
rm -r ./derivedData/*

xcodebuild archive -scheme "MySQL-iphoneos" -archivePath ./archive/iphoneos/MySQL.xcarchive -derivedDataPath ./derivedData/iphoneos ENABLE_BITCODE=NO
xcodebuild archive -scheme "MySQL-iphonesimulator" -archivePath ./archive/iphonesimulator/MySQL.xcarchive -derivedDataPath ./derivedData/iphonesimulator ENABLE_BITCODE=NO
xcodebuild archive -scheme "MySQL-macos" -archivePath ./archive/macos/MySQL.xcarchive -derivedDataPath ./derivedData/macos ENABLE_BITCODE=NO
xcodebuild archive -scheme "MySQL-catalyst" -archivePath ./archive/catalyst/MySQL.xcarchive -derivedDataPath ./derivedData/catalyst ENABLE_BITCODE=NO
xcodebuild archive -scheme "MySQL-appletvos" -archivePath ./archive/appletvos/MySQL.xcarchive -derivedDataPath ./derivedData/appletvos ENABLE_BITCODE=NO
xcodebuild archive -scheme "MySQL-appletvsimulator" -archivePath ./archive/appletvsimulator/MySQL.xcarchive -derivedDataPath ./derivedData/appletvsimulator ENABLE_BITCODE=NO
xcodebuild archive -scheme "MySQL-watchos" -archivePath ./archive/watchos/MySQL.xcarchive -derivedDataPath ./derivedData/watchos ENABLE_BITCODE=NO
xcodebuild archive -scheme "MySQL-watchsimulator" -archivePath ./archive/watchsimulator/MySQL.xcarchive -derivedDataPath ./derivedData/watchsimulator ENABLE_BITCODE=NO

sh build_xcframework.sh
