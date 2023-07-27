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
            url: "https://github.com/grishamsc/CreateAPI/releases/download/0.2.0-anyjsonnull/create-api.artifactbundle.zip",
            checksum: "811d94826d11b8bc8bb98f240632f22582aab128ad775044bb54a9b3391e9d9b"
        ),
        .plugin(
            name: "TonAPIGenerator",
            capability: .buildTool(),
            dependencies: ["create-api"]
        )
    ]
)
