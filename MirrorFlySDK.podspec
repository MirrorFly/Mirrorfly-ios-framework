
Pod::Spec.new do |s|  
    s.name              = 'MirrorFlySDK'
    s.version           = "3.0.0"
    s.summary           = 'This repo to explore the cocopod and how to upload pod in public accessc'
    s.homepage          = 'https://github.com/MirrorFly/Mirrorfly-ios-framework'

    s.author            = { 'Vishvanath' => 'vishvanatheshwer.v.c@contus.in' }
    s.license      = { :type => 'Commercial', :file => 'LICENSE' }

    s.platform          = :ios, 12.1
    # change the source location
    s.source            = { :git => 'https://github.com/MirrorFly/Mirrorfly-ios-framework.git', :tag => s.version.to_s } 

    s.swift_version = '5.0'
    s.requires_arc = true
    s.static_framework = true
    s.frameworks = 'UIKit'
    s.ios.deployment_target = '12.1'	
    s.ios.vendored_frameworks = 'SDK/MirrorFlySDK.xcframework'
    s.dependency 'libPhoneNumber-iOS', '0.9.15'
    s.dependency 'Alamofire', '5.5.0'
    s.dependency 'SocketRocket', '0.6.0'
    s.dependency 'Socket.IO-Client-Swift', '15.2.0'
    s.dependency 'RealmSwift' , '10.20.1'
    s.dependency 'GoogleWebRTC', '1.1.32000'

 s.subspec "XMPPFramework" do |spec|
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64', 'IPHONEOS_DEPLOYMENT_TARGET' => '12.1',}
 end
s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64', 'IPHONEOS_DEPLOYMENT_TARGET' => '12.1',}
   
end

