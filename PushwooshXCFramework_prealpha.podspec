#
#  Be sure to run `pod spec lint Pushwoosh.podspec' to ensure this is a
#

Pod::Spec.new do |s|
  s.name         = "PushwooshXCFramework_prealpha"
  s.version      = "1.0.3"
  s.summary      = "Push notifications library by Pushwoosh."
  s.platform     = :ios

  s.description  = "Push notifications iOS library by Pushwoosh - cross platform push notifications service. " \
                   "http://www.pushwoosh.com "

  s.homepage     = "http://www.pushwoosh.com"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = { "Andrew Kis" => "akiselev@pushwoosh.com" }
  s.source       = { :git => "https://github.com/akidison/PRE_ALPHA_iOS.git", :tag => s.version }

  s.requires_arc = true
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
  s.default_subspec = 'Core'
  s.ios.deployment_target = "11.0"

  # Core Subspec
  s.subspec 'Core' do |core|
    core.ios.vendored_frameworks  = 'XCFramework/PushwooshFramework.xcframework'
    core.library  = 'c++', 'z'
    core.frameworks  = 'Security', 'StoreKit'

    # Adding dependencies for Core subspec
    core.dependency 'PushwooshCore'
    core.dependency 'PushwooshBridge'
    core.dependency 'PushwooshLiveActivities'
  end

  # PushwooshCore Subspec
  s.subspec 'PushwooshCore' do |ss|
    ss.vendored_frameworks = 'XCFramework/PushwooshCore.xcframework'
  end

  # PushwooshBridge Subspec
  s.subspec 'PushwooshBridge' do |ss|
    ss.vendored_frameworks = 'XCFramework/PushwooshBridge.xcframework'
  end

  # PushwooshLiveActivities Subspec
  s.subspec 'PushwooshLiveActivities' do |ss|
    ss.vendored_frameworks = 'XCFramework/PushwooshLiveActivities.xcframework'
  end

  # Geozones Subspec
  s.subspec 'Geozones' do |geozones|
    geozones.ios.vendored_frameworks  = 'XCFramework/PushwooshGeozones.xcframework'
    geozones.frameworks  = 'CoreLocation'
    geozones.dependency 'PushwooshXCFramework/Core'
  end
end

