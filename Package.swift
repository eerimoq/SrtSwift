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
                      url: "https://github.com/eerimoq/xcframeworks/releases/download/libsrt-0.1.0-4/libsrt.xcframework.zip",
                      checksum: "cacd881c7ce8d0ad4fabb3a55118e55f1d0ad46a344c683e0d290a2f6aefd97a")
    ]
)
