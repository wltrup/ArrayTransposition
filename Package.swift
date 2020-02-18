// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ArrayTransposition",
    products: [
        .library(
            name: "ArrayTransposition",
            targets: ["ArrayTransposition"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ArrayTransposition",
            dependencies: []),
        .testTarget(
            name: "ArrayTranspositionTests",
            dependencies: ["ArrayTransposition"]),
    ]
)
