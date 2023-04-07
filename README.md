# WithKit

[![Version](https://img.shields.io/cocoapods/v/WithKit.svg?style=flat)](https://cocoapods.org/pods/WithKit)
[![License](https://img.shields.io/cocoapods/l/WithKit.svg?style=flat)](https://cocoapods.org/pods/WithKit)
[![Platform](https://img.shields.io/cocoapods/p/WithKit.svg?style=flat)](https://cocoapods.org/pods/WithKit)
[![Platform](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)](https://www.swift.org/package-manager/)

A Swift library that provides a collection of convenient extension methods for UIKit components, designed to improve code readability and reduce boilerplate. WithKit is available via CocoaPods and Swift Package Manager (SPM) and supports iOS 11 and above.

## Requirements

## Installation
### Swift Package Manager (SPM)

To add WithKit to your project using SPM, add the following line to your Package.swift file:

```swift
dependencies: [
    .package(url: "https://github.com/shles/WithKit.git", .upToNextMajor(from: "1.0.0"))
]
```
And then add WithKit to your target dependencies:

```swift
.target(name: "YourApp", dependencies: ["WithKit"])
```
### Cocoapods
WithKit is available through [CocoaPods](https://cocoapods.org) as well. To install
it, simply add the following line to your Podfile:

```ruby
pod 'WithKit'
```

## Usage 

Import the library in the file where you want to use it:

```swift
import WithKit
```
Then, you can start using the provided extension methods. For example:

```swift
let label = UILabel()
    .with(text: "Hello, World!") 
    .with(textAlignment: .center)
    .with(textColor: .red)
```

## Contributing

We welcome contributions! If you find a bug or have a feature request, please open an issue on GitHub. If you'd like to contribute code, please fork the repository and create a pull request.

## Author

Artemis Shlesberg, temitrix@gmail.com

## License

WithKit is available under the MIT license. See the LICENSE file for more info.
