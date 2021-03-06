Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "CCBotManager"
s.summary = "CCBotManager"
s.requires_arc = true

# 2
s.version = "1.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "KevinLo" => "kevin.lo@udngroup.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/IssueLo/CCBotManager.git"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/IssueLo/CCBotManager.git",
             :tag => "#{s.version}" }

# 7
s.framework = "UIKit", "WebKit"
s.dependency 'SDWebImage'

# 8
s.source_files = "CCBotManager/**/*.{swift,h}"

# 9
# s.resources = "CCBotManager/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"
# s.resource_bundles = { 'CCBotManager' => ['CCBotManager/*.xcassets'] }

# 10
s.swift_version = "5.0"

end
