# York-Swift-Try-Catch
[![CI Status](http://img.shields.io/travis/Inácio Ferrarini/York-Swift-Try-Catch.svg?style=flat)](https://travis-ci.org/Inácio Ferrarini/York-Swift-Try-Catch)
[![Version](https://img.shields.io/cocoapods/v/York-Swift-Try-Catch.svg?style=flat)](http://cocoapods.org/pods/York-Swift-Try-Catch)
[![License](https://img.shields.io/cocoapods/l/York-Swift-Try-Catch.svg?style=flat)](http://cocoapods.org/pods/York-Swift-Try-Catch)
[![Platform](https://img.shields.io/cocoapods/p/York-Swift-Try-Catch.svg?style=flat)](http://cocoapods.org/pods/York-Swift-Try-Catch)
[![codecov.io](https://codecov.io/github/inacioferrarini/York-Swift-Try-Catch/coverage.svg?branch=master)](https://codecov.io/github/inacioferrarini/York-Swift-Try-Catch)


### What is it? ###
A simple wrapper for Objective-C and C++ NSExceptions that can be thrown by some Objective-C based APIs. As NSExceptions cannot be captured by Swift (Swift only captures NSError ones), this wrapper was created to allow Exception handling in swift.

## Requirements
* iOS 8.0+ or OS X 10.9+

## Installation

York-Swift-Try-Catch is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "York-Swift-Try-Catch"
```


## Simple Example
```objc
// import the header
import York_Swift_Try_Catch

// Wrap any code that can throw a NSException
TryCatchFinally.handleTryBlock({ () -> Void in
  try! self.fetchedResultsController.performFetch()
  self.tableView.reloadData()
}) { (exception: NSException!) -> Void in
  let error = NSError(domain: "", code: 9999, userInfo: exception.userInfo)
  self.logger.logError(error)
}
```

## Author

Inácio Ferrarini, inacio.ferrarini@gmail.com

## License

The MIT License (MIT)

Copyright (c) 2016 Inácio Ferrarini

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
