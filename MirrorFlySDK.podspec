Pod::Spec.new do |s|
    s.name              = 'MirrorFlySDK'
    s.version           = "5.9.11"
    s.summary           = 'This repo to explore the cocopod and how to upload pod in public accessc'
    s.homepage          = 'https://github.com/MirrorFly/Mirrorfly-ios-framework'
    s.author            = { 'Vishvanath' => 'vishvanatheshwer.v@contus.in','Vanitha' => 'vanitha.g@contus.in', }
    s.license      = { :type => 'Commercial', :file => 'LICENSE' }
    s.platform          = :ios, 12.1
    s.source            = { :git => 'https://github.com/MirrorFly/Mirrorfly-ios-framework.git', :tag => s.version.to_s }
#    s.screenshots       = '','',''
#    s.social_media_url = ''
    s.swift_version = '5.0'
    s.requires_arc = true
    s.ios.deployment_target = '12.1'
    s.ios.vendored_frameworks = 'SDK/MirrorFlySDK.xcframework'
    s.documentation_url = 'https://www.mirrorfly.com/docs/chat/ios/v2/quick-start/'
    s.ios.frameworks = ['UIKit']
    s.dependency 'libPhoneNumber-iOS', '0.9.15', :inhibit_warnings => true
    s.dependency 'Alamofire', '5.5.0', :inhibit_warnings => true
    s.dependency 'SocketRocket', '0.6.0', :inhibit_warnings => true
    s.dependency 'Socket.IO-Client-Swift', '15.2.0', :inhibit_warnings => true
    s.dependency 'RealmSwift' , '10.20.1', :inhibit_warnings => true
    s.dependency 'GoogleWebRTC', :inhibit_warnings => true
    s.dependency 'CocoaLumberjack', '3.6.2', :inhibit_warnings => true
    s.dependency 'XMPPFramework/Swift', '4.0.0', :inhibit_warnings => true
    s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64', 'IPHONEOS_DEPLOYMENT_TARGET' => '12.1',}
end

