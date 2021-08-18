#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint advanced_platform_detection.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'advanced_platform_detection'
  s.version          = '0.0.1'
  s.summary          = 'A plugin that enables you to retrieve the current platform  (iOS, Android, Windows, ...)+ brower & more'
  s.description      = <<-DESC
A plugin that enables you to retrieve the current platform  (iOS, Android, Windows, ...)+ brower & more
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
