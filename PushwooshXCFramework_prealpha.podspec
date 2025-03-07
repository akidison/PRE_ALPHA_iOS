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

    # Dependencies for Core subspec
    core.dependency 'PushwooshCore' # This needs to be a published pod or be included in your podspec
    core.dependency 'PushwooshBridge' # Same here
    core.dependency 'PushwooshLiveActivities' # Same here
  end

  # PushwooshCore Subspec
  s.subspec 'PushwooshCore' do |ss|
    ss.vendored_frameworks = 'XCFramework/PushwooshCore.xcframework'
    # If PushwooshCore is a separate pod, add its source if not published in the central repo
    ss.source = { :git => "https://github.com/akidison/PRE_ALPHA_iOS.git", :tag => '1.0.3' }
  end

  # PushwooshBridge Subspec
  s.subspec 'PushwooshBridge' do |ss|
    ss.vendored_frameworks = 'XCFramework/PushwooshBridge.xcframework'
    # If PushwooshBridge is a separate pod, add its source if not published in the central repo
    ss.source = { :git => "https://github.com/akidison/PRE_ALPHA_iOS.git", :tag => '1.0.3' }
  end

  # PushwooshLiveActivities Subspec
  s.subspec 'PushwooshLiveActivities' do |ss|
    ss.vendored_frameworks = 'XCFramework/PushwooshLiveActivities.xcframework'
    # If PushwooshLiveActivities is a separate pod, add its source if not published in the central repo
    ss.source = { :git => "https://github.com/akidison/PRE_ALPHA_iOS.git", :tag => '1.0.3' }
  end

  # Geozones Subspec
  s.subspec 'Geozones' do |geozones|
    geozones.ios.vendored_frameworks  = 'XCFramework/PushwooshGeozones.xcframework'
    geozones.frameworks  = 'CoreLocation'
    geozones.dependency 'PushwooshXCFramework/Core'
  end
end
