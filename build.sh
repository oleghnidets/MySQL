#!/bin/sh

rm -r ./archive/*
rm -r ./derivedData/*

xcodebuild archive -scheme "MySQL-iphoneos" -archivePath ./archive/iphoneos/MySQL.xcarchive -derivedDataPath ./derivedData/iphoneos ENABLE_BITCODE=NO
xcodebuild archive -scheme "MySQL-iphonesimulator" -archivePath ./archive/iphonesimulator/MySQL.xcarchive -derivedDataPath ./derivedData/iphonesimulator ENABLE_BITCODE=NO
xcodebuild archive -scheme "MySQL-macos" -archivePath ./archive/macos/MySQL.xcarchive -derivedDataPath ./derivedData/macos ENABLE_BITCODE=NO
xcodebuild archive -scheme "MySQL-catalyst" -archivePath ./archive/catalyst/MySQL.xcarchive -derivedDataPath ./derivedData/catalyst ENABLE_BITCODE=NO

sh build_xcframework.sh
