// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TonAPI",
    products: [
        .library(
            name: "TonAPI",
            targets: ["TonAPI"]),
    ],
    targets: [
        .target(
            name: "TonAPI"),
        .testTarget(
            name: "TonAPITests",
            dependencies: ["TonAPI"]),
    ]
)
