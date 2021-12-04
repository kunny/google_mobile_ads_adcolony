#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint google_mobile_ads_adcolony.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'google_mobile_ads_adcolony'
  s.version          = '0.0.1'
  s.summary          = 'Google Mobile Ads mediation plugin for AdColony.'
  s.description      = <<-DESC
Google Mobile Ads mediation plugin for AdColony.
                       DESC
  s.homepage         = 'https://github.com/kunny/google_mobile_ads_adcolony'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Taeho Kim' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'GoogleMobileAdsMediationAdColony', '4.7.2.0'
  s.ios.deployment_target = '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
