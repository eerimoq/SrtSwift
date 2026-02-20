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
                      url: "https://github.com/eerimoq/xcframeworks/releases/download/libsrt-0.1.0-2/libsrt.xcframework.zip",
                      checksum: "cc08d393aeebd072ab15aacc348b60363fc26b95b09ce00388cc6913bb381c0d")
    ]
)
