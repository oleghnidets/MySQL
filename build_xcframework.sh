#!/bin/sh

xcodebuild -create-xcframework \
 -framework ./archive/iphoneos/MySQL.xcarchive/Products/Library/Frameworks/MySQL.framework \
 -framework ./archive/iphonesimulator/MySQL.xcarchive/Products/Library/Frameworks/MySQL.framework \
 -framework ./archive/macos/MySQL.xcarchive/Products/Library/Frameworks/MySQL.framework \
 -framework ./archive/catalyst/MySQL.xcarchive/Products/Library/Frameworks/MySQL.framework \
 -output ./archive/MySQL.xcframework