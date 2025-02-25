Pod::Spec.new do |s|
    s.name         = "RAnalytics"
    s.version      = "8.0.1"
    s.authors      = "Rakuten Ecosystem Mobile"
    s.summary      = "Records user activity and automatically sends tracking events to an analytics cloud service."
    s.homepage     = "https://github.com/rakutentech"
    s.license      = { :type => 'Proprietary', :text => '© Rakuten Group, Inc.' }
    s.source       = { :http => "https://github.com/rakutentech/ios-analytics-framework/releases/download/#{s.version.to_s}/RAnalyticsRelease-v#{s.version.to_s}.zip" }
    s.vendored_frameworks = "RAnalytics.framework"
    s.platform     = :ios, "11.0"
    s.documentation_url = "https://github.com/rakutentech/ios-analytics-framework"
    options = {
      'CLANG_ENABLE_MODULES'    => 'YES',
      'CLANG_MODULES_AUTOLINK'  => 'YES',
      'GCC_C_LANGUAGE_STANDARD' => 'gnu99',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'OTHER_CFLAGS'            => "'-DRMSDK_ANALYTICS_VERSION=#{s.version.to_s}'",
      # FIXME: `pod lib lint` attempts to build all available archs so we need to exclude Apple Silicon arm64 from simulator builds. 
      # See https://github.com/CocoaPods/CocoaPods/issues/10065#issuecomment-694266259
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    s.pod_target_xcconfig  = options
    s.user_target_xcconfig = options
    s.weak_frameworks = [
        'Foundation',
        'UIKit',
        'CoreGraphics',
        'CoreLocation',
        'AdSupport'
      ]
    s.libraries = 'sqlite3', 'z'
end
