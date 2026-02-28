// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Srt",
    platforms: [
        .iOS(.v16),
        .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "Srt",
            targets: ["Srt", "libsrt"]),
    ],
    targets: [
        .target(name: "Srt", dependencies: ["libsrt"]),
        .binaryTarget(name: "libsrt",
                      url: "https://github.com/eerimoq/xcframeworks/releases/download/libsrt-0.1.0-3/libsrt.xcframework.zip",
                      checksum: "d5d330dcc1abafd49383cdb010665199ea30265851d2b97c27646073a5099d0b")
    ]
)
