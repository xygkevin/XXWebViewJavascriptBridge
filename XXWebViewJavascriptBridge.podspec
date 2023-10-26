Pod::Spec.new do |s|

  s.name         = "XXWebViewJavascriptBridge"
  s.version      = "0.0.2"
  s.summary      = "Simple Design for Objective-C bridge with Javascript. Also can get js console.log."
  s.description  = <<-DESC
                       English:Simple Design for Objective-C bridge with Javascript. Also can get js console.log.
                       Chinese :更简单、更轻、更易使用的Objective-C和 JavaScript交互框架.
                      DESC
  s.homepage     = "https://github.com/xygkevin/XXWebViewJavascriptBridge"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "xuyaguang" => "xu_yaguang@163.com" }
  s.social_media_url   = "https://github.com/xygkevin"

  s.ios.deployment_target = "13.0"
  s.osx.deployment_target = "14.0"
  s.watchos.deployment_target = "10.0"
  
  s.source       = { :git => "https://github.com/xygkevin/XXWebViewJavascriptBridge.git", :tag => "#{spec.version}" }
  s.source_files  = "XXWebViewJavascriptBridge/Source/*.{h,m}"
  s.framework  = "WebKit"
  s.requires_arc = true
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }

end
