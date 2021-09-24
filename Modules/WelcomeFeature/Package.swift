// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "WelcomeFeature",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "WelcomeFeature",
            targets: ["WelcomeFeature"]),
    ],
    dependencies: [
        .package(path: "../Controls")
    ],
    targets: [
        .target(
            name: "WelcomeFeature",
            dependencies: ["Controls"]),
        .testTarget(
            name: "WelcomeFeatureTests",
            dependencies: ["WelcomeFeature"]),
    ]
)
