// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TonAPI",
    platforms: [
      .macOS(.v12), .iOS(.v13)
    ],
    products: [
        .library(
            name: "TonAPI",
            targets: ["TonAPI"]),
    ],
    targets: [
        .target(
            name: "TonAPI",
            plugins: [.plugin(name: "TonAPIGenerator")]),
        .testTarget(
            name: "TonAPITests",
            dependencies: ["TonAPI"]),
        .binaryTarget(
            name: "create-api",
            url: "https://github.com/CreateAPI/CreateAPI/releases/download/0.2.0/create-api.artifactbundle.zip",
            checksum: "6f8a3ce099f07eb2655ccaf6f66d8c9a09b74bb2307781c4adec36609ddac009"
        ),
        .plugin(
            name: "TonAPIGenerator",
            capability: .buildTool(),
            dependencies: ["create-api"]
        )
    ]
)
