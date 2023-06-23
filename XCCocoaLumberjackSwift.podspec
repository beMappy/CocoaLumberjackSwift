Pod::Spec.new do |s|

  s.name     = 'XCCocoaLumberjackSwift'
  s.version  = '3.7.4-SPM2'
  s.license  = 'BSD'
  s.summary  = 'A fast & simple, yet powerful & flexible logging framework for macOS, iOS, tvOS and watchOS.'
  s.homepage = 'https://github.com/CocoaLumberjack/CocoaLumberjack'
  s.author   = { 'Robbie Hanson' => 'robbiehanson@deusty.com' }
  s.source   = { :git => 'https://github.com/beMappy/CocoaLumberjackSwift.git',
                 :tag => "#{s.version}" }

  s.description = 'It is similar in concept to other popular logging frameworks such as log4j, '   \
                  'yet is designed specifically for objective-c, and takes advantage of features ' \
                  'such as multi-threading, grand central dispatch (if available), lockless '      \
                  'atomic operations, and the dynamic nature of the objective-c runtime.'

  s.ios.deployment_target     = '9.0'

  s.cocoapods_version = '>= 1.4.0'
  s.requires_arc   = true
  s.swift_version = '5.0'

  s.vendored_frameworks = 'CocoaLumberjackSwift.xcframework'
  s.dependency 'XCCocoaLumberjack', '3.7.4-SPM'
end
