
Pod::Spec.new do |s|  
    s.name              = 'Mirrorfly-ios-framework' # Name for your pod
    s.version           = "0.0.14"
    s.summary           = 'This repo to explore the cocopod and how to upload pod in public accessc'
    s.homepage          = 'https://github.com/MirrorFly/Mirrorfly-ios-framework'

    s.author            = { 'Hariram' => 'hariram.c@contus.in' }
    s.license      = { :type => 'Commercial', :file => 'LICENSE' }

    s.platform          = :ios, 12.1
    # change the source location
    s.source            = { :git => 'https://github.com/MirrorFly/Mirrorfly-ios-framework.git', :tag => s.version.to_s } 

    s.swift_version = '4.0'
    s.requires_arc = true



    s.dependency 'libPhoneNumber-iOS'
    s.dependency 'Alamofire'
    s.dependency 'SocketRocket'
    s.dependency 'Socket.IO-Client-Swift'
    s.dependency 'XMPPFramework/Swift'
    s.dependency 'RealmSwift' , '10.20.1'
    s.dependency 'GoogleWebRTC'

    s.ios.vendored_frameworks = 'SDK/FlyCommon.xcframework' , 'SDK/FlyCall.xcframework' ,'SDK/FlyCore.xcframework', 'SDK/FlyXmpp.xcframework', 'SDK/FlyDatabase.xcframework', 'SDK/FlyNetwork.xcframework', 'SDK/FlyTranslate.xcframework'

   
end

