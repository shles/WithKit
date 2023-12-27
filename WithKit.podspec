#
# Be sure to run `pod lib lint WithKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WithKit'
  s.version          = '1.0.0'
  s.summary          = 'Swift framework for easy UI elements configuration'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A Swift library that provides a collection of convenient extension methods for UIKit components, designed to improve code readability and reduce boilerplate. WithKit is available via CocoaPods and Swift Package Manager (SPM) and supports iOS 11 and above.
                       DESC

  s.homepage         = 'https://github.com/shles/WithKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Artemiy Shlesberg' => 'temitrix@gmail.com' }
  s.source           = { :git => 'https://github.com/shles/WithKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'Sources/**/*.swift'
  s.swift_version = '4.2'  

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
end
