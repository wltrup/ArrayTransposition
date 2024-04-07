# ArrayTransposition
![](https://img.shields.io/badge/platforms-iOS%2010%20%7C%20tvOS%2010%20%7C%20watchOS%204%20%7C%20macOS%2010.14-red)
[![Xcode](https://img.shields.io/badge/Xcode-11-blueviolet.svg)](https://developer.apple.com/xcode)
[![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://swift.org)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/wltrup/ArrayTransposition)
![GitHub](https://img.shields.io/github/license/wltrup/ArrayTransposition)

## What

**ArrayTransposition** is a Swift Package Manager package for iOS/tvOS (10.0 and above), watchOS (4.0 and above), and macOS (10.14 and above), under Swift 5.0 and above, adding an extension to `Array` to allow the computation of *matrix transpositions*.

Given an array of arrays of an `Element` type, with the internal arrays all of the same length, the package defines a function to transpose the outmost array. For example, if

```swift
let x = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [10, 11, 12]
]
```
then

```swift
let y = transpose(x)
```
will produce the same result as

```swift
let y = [
    [1, 4, 7, 10],
    [2, 5, 8, 11],
    [3, 6, 9, 12]
]
```

Note that the internal arrays need to have the same size. If this condition isn't met, then the result is `nil`.

The API is very simple:

```swift
extension Array {

    public static func transpose(_ a: [[Element]]) -> [[Element]]? 

}
```

Unfortunately, it's not possible to define a non-static `transposed()` function, since it's not possible to statically guarantee that the array instance upon which we'd be calling such a function is an array of arrays. 

## Installation

**ArrayTransposition** is provided only as a Swift Package Manager package, because I'm moving away from CocoaPods and Carthage, and can be easily installed directly from Xcode.

## License

**ArrayTransposition** is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
