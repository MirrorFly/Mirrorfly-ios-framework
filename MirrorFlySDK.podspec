Pod::Spec.new do |s|
    s.name              = 'MirrorFlySDK'
    s.version           = "5.17.4"
    s.summary           = 'This repo to explore the cocopod and how to upload pod in public accessc'
    s.homepage          = 'https://github.com/MirrorFly/Mirrorfly-ios-framework'
    s.author            = { 'Vishvanath' => 'vishvanatheshwer.v@contus.in','Vanitha' => 'vanitha.g@contus.in', }
    s.license      = { :type => 'Commercial', :file => 'LICENSE' }
    s.platform          = :ios, 13.0
    s.source            = { :git => 'https://github.com/MirrorFly/Mirrorfly-ios-framework.git', :tag => s.version.to_s }
#    s.screenshots       = '','',''
#    s.social_media_url = ''
    s.swift_version = '5.0'
    s.requires_arc = true
    s.ios.deployment_target = '13.0'
    s.ios.vendored_frameworks = 'SDK/MirrorFlySDK.xcframework'
    s.documentation_url = 'https://www.mirrorfly.com/docs/chat/ios/v2/quick-start/'
    s.ios.frameworks = ['UIKit']
    s.dependency 'libPhoneNumber-iOS', '0.9.15'
    s.dependency 'Alamofire', '5.9.1'
    s.dependency 'SocketRocket', '0.6.0'
    s.dependency 'Socket.IO-Client-Swift', '16.0.1'
    s.dependency 'Starscream', '4.0.4'
    s.dependency 'RealmSwift', '~> 10.49.2'
    s.dependency 'GoogleWebRTC', '1.1.31999'
    s.dependency 'CocoaLumberjack', '3.6.2'
    s.dependency 'XMPPFramework/Swift', '4.0.0'
    s.dependency 'IDZSwiftCommonCrypto', '~> 0.16'
    s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64', 'IPHONEOS_DEPLOYMENT_TARGET' => '13.0',}
end

