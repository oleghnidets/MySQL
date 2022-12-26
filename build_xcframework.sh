#!/bin/sh

xcodebuild -create-xcframework \
 -framework ./archive/iphoneos/MySQL.xcarchive/Products/Library/Frameworks/MySQL.framework \
 -framework ./archive/iphonesimulator/MySQL.xcarchive/Products/Library/Frameworks/MySQL.framework \
 -framework ./archive/macos/MySQL.xcarchive/Products/Library/Frameworks/MySQL.framework \
 -framework ./archive/catalyst/MySQL.xcarchive/Products/Library/Frameworks/MySQL.framework \
 -framework ./archive/watchos/MySQL.xcarchive/Products/Library/Frameworks/MySQL.framework \
 -framework ./archive/watchsimulator/MySQL.xcarchive/Products/Library/Frameworks/MySQL.framework \
 -framework ./archive/appletvos/MySQL.xcarchive/Products/Library/Frameworks/MySQL.framework \
 -framework ./archive/appletvsimulator/MySQL.xcarchive/Products/Library/Frameworks/MySQL.framework \
 -output ./archive/MySQL.xcframework

