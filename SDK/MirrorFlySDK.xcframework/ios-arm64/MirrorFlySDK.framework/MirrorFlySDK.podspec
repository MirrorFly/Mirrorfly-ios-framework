#
#  Be sure to run `pod spec lint Test.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "MirrorFlySDK"
  s.version      = "5.18.17"
  s.summary      = "MirrorFlySDK Summary"
  s.description  = "MirrorFlySDK Description"
  s.authors      = "Vishvanath Eshwer"

  s.homepage     = "in"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.platform     = :ios, "13.0"
  s.source       = { :git => "git@bitbucket.org:Apptha/p078-mirrorfly-ios-core-sdk.git" }
  s.source_files  = "MirrorFlySDK/**/*.*{swift,h,m}","MirrorFlySDK/*.h", "MirrorFlySDK/*.m","MirrorFlySDK/Call/*.h", "MirrorFlySDK/Call/*.m"
  #spec.exclude_files = [AppDelegate, ViewController, SceneDelegate]
  #s.requires_arc = true
  s.dependency 'libPhoneNumber-iOS', '0.9.15'
  s.dependency 'Alamofire', '5.9.1'
  s.dependency 'XMPPFramework/Swift'
  s.dependency 'SocketRocket'
  s.dependency 'Socket.IO-Client-Swift', '16.1.1'
  s.dependency 'Starscream', '4.0.8'
  s.dependency 'RealmSwift', '~> 10.49.2'
  s.dependency 'GoogleWebRTC', '1.1.31999'
  s.dependency 'IDZSwiftCommonCrypto', '~> 0.16'
end
