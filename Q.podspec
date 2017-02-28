Pod::Spec.new do |s|
  s.name                = "Q"
  s.version             = "0.9.0"
  s.summary             = "Asynchronous promises for iOS"
  s.homepage            = "https://github.com/innerfunction/Q-ios"
  s.license             = { :type => "Apache", :file => "LICENSE" }
  s.author              = { "Julian Goacher" => "julian.goacher@innerfunction.com" }
  s.platform            = :ios
  s.source              = { :git => "https://github.com/innerfunction/Q-ios.git", :tag => "0.9.0" }
  s.source_files        = "Classes/Q.{h,m}"
  s.public_header_files = "Classes/Q.h"
end
