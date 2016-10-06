Pod::Spec.new do |s|
  s.name                = "Q"
  s.version             = "0.0.3"
  s.summary             = "Asynchronous promise implementation for iOS"
  s.homepage            = "https://github.com/innerfunction/Q-ios"
  s.license             = { :type => "Apache", :file => "LICENSE" }
  s.author              = { "Julian Goacher" => "julian.goacher@innerfunction.com" }
  s.platform            = :ios
  s.source              = { :git => "https://github.com/innerfunction/Q-ios.git", :tag => "0.0.1" }
  s.source_files        = "Classes/*.{h,m}"
  s.public_header_files = "Classes/Q.h"
end
