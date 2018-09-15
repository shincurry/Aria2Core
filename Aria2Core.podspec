Pod::Spec.new do |s|

  s.name         = "Aria2Core"
  s.version      = "1.0.2"
  s.summary      = "aria2/libaria2 wrapper for Objective-C."

  s.homepage     = "https://github.com/shincurry/Aria2Core"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = "ShinCurry"

  s.platform     = :osx, "10.10"
  s.source       = { :git => "https://github.com/ShinCurry/Aria2Core.git", :tag => "#{s.version}" }

  s.source_files  = "Aria2Core/*.{h,mm}"
  s.private_header_files = "Aria2Core/aria2.h"

  s.vendored_libraries  = "Aria2Core/Frameworks/*.dylib"

  s.xcconfig = {
    'LD_RUNPATH_SEARCH_PATHS' => '@executable_path/../Frameworks'
  }

end
