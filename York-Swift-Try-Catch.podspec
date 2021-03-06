#
# Be sure to run `pod lib lint York-Swift-Try-Catch.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "York-Swift-Try-Catch"
  s.version          = "0.1.2"
  s.summary          = "Objective-C-based try-catch implementation for usage in Swift."
  s.homepage         = "https://github.com/inacioferrarini/York-Swift-Try-Catch"

  s.license      = {
  :type => 'MIT',
  :text => <<-LICENSE
Copyright (c) 2016 Inácio Ferrarini
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
    LICENSE
}
  s.author           = { "Inácio Ferrarini" => "inacio.ferrarini@gmail.com" }
  s.source           = { :git => "https://github.com/inacioferrarini/York-Swift-Try-Catch.git", :tag => s.version.to_s }

  s.source_files = 'York-Swift-Try-Catch/Classes/**/*'
  s.frameworks = 'UIKit'
  s.requires_arc = true
  s.ios.deployment_target = '8.0'
  
end
