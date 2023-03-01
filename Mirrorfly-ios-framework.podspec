
Pod::Spec.new do |s|  
    s.name              = 'Mirrorfly-ios-framework' # Name for your pod
    s.version           = "0.0.7"
    s.summary           = 'This repo to explore the cocopod and how to upload pod in public accessc'
    s.homepage          = 'https://github.com/MirrorFly/Mirrorfly-ios-framework'

    s.author            = { 'Hariram' => 'hariram.c@contus.in' }
    s.license      = { :type => 'Commercial', :file => 'LICENSE' }

    s.platform          = :ios, 12.1
    # change the source location
    s.source            = { :git => 'https://github.com/MirrorFly/Mirrorfly-ios-framework.git', :tag => s.version.to_s } 

    s.swift_version = '4.0'
    s.requires_arc = true



    s.dependency 'libPhoneNumber-iOS', '0.8'
    s.dependency 'Alamofire'
    s.dependency 'SocketRocket'
    s.dependency 'Socket.IO-Client-Swift', '15.2.0'
    s.dependency 'XMPPFramework/Swift'
    s.dependency 'RealmSwift' , '10.20.1'
    s.dependency 'GoogleWebRTC'

    s.ios.vendored_frameworks = 'FlyCommon.xcframework' , 'FlyCall.xcframework' ,'FlyCore.xcframework', 'FlyXmpp.xcframework', 'FlyDatabase.xcframework', 'FlyNetwork.xcframework', 'FlyTranslate.xcframework'

   
end

