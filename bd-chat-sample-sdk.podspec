Pod::Spec.new do |s|
  s.name             = "bd-chat-sample-sdk"
  s.version          = "2.0.4"
  s.summary          = "BoldDesk Support SDK"
  s.description      = <<-DESC
                           The BoldDesk Mobile Support SDK enables you to integrate a fully functional help center directly into your mobile application. This allows end-users to access support tickets and Knowledge Base (KB) articles inside the app.
                       DESC
  s.homepage         = "https://github.com/boomibalanB/bd-chat-sdk-ios"
  s.author           = { "BoldDesk" => "support@bolddesk.com" }
  s.readme           = 'README.md'
  s.license          = {
                          :type => 'BoldDesk License',
                          :text => 'The BoldDesk Support SDK is protected by copyright. See https://www.bolddesk.com/legal/terms-of-use'
                        }
  s.platform         = :ios, "14.0"
  s.source           = { :git => "https://github.com/boomibalanB/bd-chat-sdk-ios.git", :tag => s.version}

  s.vendored_frameworks = "BoldDeskChatSDK.xcframework"
  s.swift_version    = "5.3"
  s.dependency 'bd-support-sdk-sample', '~> 4.0.9'
  s.dependency 'Sentry', '~> 8.56'
end
