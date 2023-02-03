#
#  Be sure to run `pod spec lint Test.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "FlyCommon"
  s.version      = "4.3.0"
  s.summary      = "FlyCommon Summary"
  s.description  = "FlyCommon Description"
  s.authors      = "Vanitha"

  s.homepage     = "in"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.platform     = :ios, "12.1"
  s.source       = { :http => "git@bitbucket.org:Apptha/flycommon.git" }
  s.source_files  = "FlyCommon/**/*.*{swift, h, m}","FlyCommon/**/*.xib"
  s.resources = "FlyCommon/*.xcassets"
  #spec.exclude_files = [AppDelegate, ViewController, SceneDelegate]
  #s.requires_arc = true
  s.dependency 'libPhoneNumber-iOS'
  s.dependency 'Alamofire'

end
