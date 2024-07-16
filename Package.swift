// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "usket.NMaps-SPM",
    products: [
        .library(
            name: "usket.NMaps-SPM",
            targets: ["usket.NMaps-SPM"]),
    ],
    targets: [
        .binaryTarget(
            name: "NMapsMap",
            path: "./Frameworks/NMapsMap.xcframework"
        ),
        .binaryTarget(
            name: "NMapsGeometry",
            path: "./Frameworks/NMapsGeometry.xcframework"
        ),
        .target(
            name: "usket.NMaps-SPM",
            dependencies: ["NMapsMap", "NMapsGeometry"]
        )
    ]
)
