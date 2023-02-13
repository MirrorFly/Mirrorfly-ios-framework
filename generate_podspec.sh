#!/bin/bash

VERSION=''
SHA1=''

while getopts v:s: flag
do
    case "${flag}" in
        v) VERSION=${OPTARG};;
        s) SHA1=${OPTARG};;
        *) error "Unexpected option ${flag}";;
    esac
done

echo $VERSION
if [ -z $VERSION ]; then
    echo 'Version is required'
fi

echo $SHA1
if [ -z $SHA1 ]; then
    echo 'shasum is required'
fi

TEMPLATE="
Pod::Spec.new do |s|
  s.name         = 'Mirrorfly-ios-framework'
  s.version      = \"$VERSION\"
  s.summary      = ‘MirrorFly Chat iOS Framework'
  s.description  = 'Messaging and Chat API for Mobile Apps'
  s.homepage     = 'https://mirrorfly.com’
  s.license      = { :type => 'Commercial', :file => ‘MirrorFlyChatSDK/LICENSE.md' }
  s.authors      = {
    ‘Hariram => ‘hariram.c@contus.in
  }
  s.source            = { :https => 'https://github.com/MirrorFly/Mirrorfly-ios-framework' }
  s.requires_arc = true
  s.swift_version = '4.0'
  s.platform = :ios, '9.0'
  s.documentation_url = 'https://sendbird.com/docs/chat'
  s.dependency 'libPhoneNumber-iOS', '0.8'
  s.dependency 'Alamofire'
  s.dependency 'SocketRocket'
  s.dependency 'Socket.IO-Client-Swift', '15.2.0'
  s.dependency 'XMPPFramework/Swift'
  s.dependency 'RealmSwift' , '10.20.1'
  s.dependency 'GoogleWebRTC'

 s.ios.vendored_frameworks = 'Source/FlyCommon.xcframework' , 'Source/FlyCall.xcframework' ,'Source/FlyCore.xcframework', 'Source/FlyXmpp.xcframework', 'Source/FlyDatabase.xcframework', 'Source/FlyNetwork.xcframework', 'Source/FlyTranslate.xcframework'
end
"

echo -e "$TEMPLATE" > Mirrorfly-ios-frameworks.podspec

