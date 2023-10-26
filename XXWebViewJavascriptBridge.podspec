Pod::Spec.new do |spec|

  spec.name         = "XXWebViewJavascriptBridge"
  spec.version      = "0.0.1"
  spec.summary      = "Simple Design for Objective-C bridge with Javascript. Also can get js console.log."
  spec.description  = <<-DESC
                       English:Simple Design for Objective-C bridge with Javascript. Also can get js console.log.
                       Chinese :更简单、更轻、更易使用的Objective-C和 JavaScript交互框架.
                      DESC
  spec.homepage     = "https://github.com/xygkevin/XXWebViewJavascriptBridge"
  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "xuyaguang" => "xu_yaguang@163.com" }
  spec.social_media_url   = "https://github.com/xygkevin"

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "14.0"
  spec.watchos.deployment_target = "10.0"
  # spec.tvos.deployment_target = "17.0"
  
  spec.source       = { :git => "https://github.com/xygkevin/XXWebViewJavascriptBridge.git", :tag => "#{spec.version}" }
  spec.source_files  = "XXWebViewJavascriptBridge/Classes/*.{h,m}"
  spec.framework  = "WebKit"
  spec.requires_arc = true
  spec.pod_target_xcconfig = { "VALID_ARCHS" => "x86_64 armv7 arm64" }

end
