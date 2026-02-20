// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Srt",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "Srt",
            targets: ["Srt", "libsrt"]),
    ],
    targets: [
        .target(name: "Srt", dependencies: ["libsrt"]),
        .binaryTarget(name: "libsrt",
                      url: "https://github.com/eerimoq/xcframeworks/releases/download/libsrt-0.1.0/libsrt.xcframework.zip",
                      checksum: "0578b194f5781678168e37e4003581362fa1959eb4b5e7f82fba5eb0eb9e03f7")
    ]
)
