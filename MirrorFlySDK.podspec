
Pod::Spec.new do |s|  
    s.name              = 'MirrorFlySDK'
    s.version           = "3.1.0"
    s.summary           = 'This repo to explore the cocopod and how to upload pod in public accessc'
    s.homepage          = 'https://github.com/MirrorFly/Mirrorfly-ios-framework'

    s.author            = { 'Vishvanath' => 'vishvanatheshwer.v.c@contus.in' }
    s.license      = { :type => 'Commercial', :file => 'LICENSE' }

    s.platform          = :ios, 12.1
    # change the source location
    s.source            = { :git => 'https://github.com/MirrorFly/Mirrorfly-ios-framework.git', :tag => s.version.to_s } 

    s.swift_version = '4.0'
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
    
    s.default_subspec =  'Swift'

    s.subspec 'XMPPFramework' do |ss|
        ss.source_files = ['xmpp/Core/**/*.{h,m}',
                        'xmpp/Authentication/**/*.{h,m}', 'xmpp/Categories/**/*.{h,m}',
                        'xmpp/Utilities/**/*.{h,m}', 'xmpp/Extensions/**/*.{h,m}']
        ss.ios.exclude_files = 'xmpp/Extensions/SystemInputActivityMonitor/**/*.{h,m}'
        ss.libraries = 'xml2', 'resolv'
        ss.frameworks = 'CoreData', 'SystemConfiguration', 'CoreLocation'
        ss.xcconfig = {
        'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2 $(SDKROOT)/usr/include/libresolv',
        }
        ss.dependency 'CocoaLumberjack' # Skip pinning version because of the awkward 2.x->3.x transition
        ss.dependency 'CocoaAsyncSocket', '~> 7.6'
        ss.dependency 'KissXML', '~> 5.2'
        ss.dependency 'libidn', '~> 1.35'
        ss.ios.deployment_target = '12.1'
    end

    s.subspec 'Swift' do |ss|
        ss.ios.deployment_target = '12.1'
        ss.source_files = 'xmpp/Swift/**/*.swift'
        ss.dependency 'MirrorFlySDK/XMPPFramework'
        ss.dependency 'CocoaLumberjack/Swift'
    end

s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64', 'IPHONEOS_DEPLOYMENT_TARGET' => '12.1',}
   
end

