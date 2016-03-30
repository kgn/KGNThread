# KGNThread

`KGNThread` is a collection of helpful methods that wrap [Grand Central Dispatch](https://en.wikipedia.org/wiki/Grand_Central_Dispatch).

[![iOS 8.0+](http://img.shields.io/badge/iOS-8.0%2B-blue.svg)]()
[![Swift 2.0+](http://img.shields.io/badge/Swift-2.0-blue.svg)]()
[![Release](https://img.shields.io/github/release/kgn/KGNThread.svg)](/releases)
[![Build Status](http://img.shields.io/badge/License-MIT-lightgrey.svg)](/LICENSE)

[![Build Status](https://travis-ci.org/kgn/KGNThread.svg)](https://travis-ci.org/kgn/KGNThread)
[![Test Coverage](http://img.shields.io/badge/Tests-100%25-green.svg)]()
[![Carthage Compatible](https://img.shields.io/badge/Carthage-Compatible-4BC51D.svg)](https://github.com/Carthage/Carthage)
[![CocoaPods Version](https://img.shields.io/cocoapods/v/KGNThread.svg)](https://cocoapods.org/pods/KGNThread)
[![CocoaPods Platforms](https://img.shields.io/cocoapods/p/KGNThread.svg)](https://cocoapods.org/pods/KGNThread)

[![Twitter](https://img.shields.io/badge/Twitter-@iamkgn-55ACEE.svg)](http://twitter.com/iamkgn)
[![Follow](https://img.shields.io/github/followers/kgn.svg?style=social&label=Follow%20%40kgn)](https://github.com/kgn)
[![Star](https://img.shields.io/github/stars/kgn/KGNThread.svg?style=social&label=Star)](https://github.com/kgn/KGNThread)

## Installing

### Carthage
```
github "kgn/KGNThread"
```

### CocoaPods
```
pod 'KGNThread'
```

## Examples

Each method is called with an optional delay, and a block to execute on the thread.

### Main
Dispatch on the main thread, useful for updating the UI from a background thread.
``` Swift
Thread.Main {
	// Do something on the main thread
}

Thread.Main(delay: 2) {
	// Do something on the main thread,
	// after a 2 second delay
}
```

### Disk
Dispatch on a serial queue reserved for disk access.
``` Swift
Thread.Disk {
	// Write to disk...
}
```

### Global
Dispatch on the global threads: `high`, `low`, `default`, `background`.
``` Swift
Thread.High {
	// Do something high priority
}

Thread.Low(delay: 5) {
	// Do something low priority,
	// after a 5 second delay
}
```

## Progress
- [X] Badges
- [X] Tests
- [X] Travis
- [X] Carthage
- [X] CocoaPods
- [X] Description
- [X] Documentation
- [ ] AppleTV
- [X] Prebuilt Frameworks
- [ ] Travis Test Matrix
