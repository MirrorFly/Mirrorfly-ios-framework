Pod::Spec.new do |s|
    s.name              = 'MirrorFlySDK'
    s.version           = "2.0.6"
    s.summary           = 'This repo to explore the cocopod and how to upload pod in public accessc'
    s.homepage          = 'https://github.com/MirrorFly/Mirrorfly-ios-framework'

    s.author            = { 'Vishvanath' => 'vishvanatheshwer.v.c@contus.in' }
    s.license      = { :type => 'Commercial', :file => 'LICENSE' }

    s.platform          = :ios, 8.0
    # change the source location
    s.source            = { :git => 'https://github.com/MirrorFly/Mirrorfly-ios-framework.git', :tag => s.version.to_s } 

    s.swift_version = '5.0'
    s.requires_arc = true
    s.dependency 'libPhoneNumber-iOS', '0.9.15'
    s.dependency 'Alamofire', '5.5'
    s.dependency 'SocketRocket'
    s.dependency 'Socket.IO-Client-Swift', '15.2.0'
    s.dependency 'XMPPFramework/Swift'
    s.dependency 'RealmSwift' , '10.20.1'
    s.dependency 'GoogleWebRTC'
    s.xcconfig = {'IPHONEOS_DEPLOYMENT_TARGET' => '8.0', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig = {'IPHONEOS_DEPLOYMENT_TARGET' => '8.0', 'ENABLE_BITCODE' => 'NO', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'  }
    s.user_target_xcconfig = { 'IPHONEOS_DEPLOYMENT_TARGET' => '8.0', 'ENABLE_BITCODE' => 'NO', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.ios.vendored_frameworks = 'SDK/MirrorFlySDK.xcframework'

    
    
end

