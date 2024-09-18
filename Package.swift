// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TonAPI",
    platforms: [
      .macOS(.v12), .iOS(.v13)
    ],
    products: [
        .library(name: "TonAPI", targets: ["TonAPI"]),
        .library(name: "TonStreamingAPI", targets: ["TonStreamingAPI"]),
        .library(name: "StreamURLSessionTransport", targets: ["StreamURLSessionTransport"]),
        .library(name: "EventSource", targets: ["EventSource"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-generator", .upToNextMinor(from: "0.3.0")),
        .package(url: "https://github.com/apple/swift-openapi-runtime", .upToNextMinor(from: "0.3.0")),
        .package(url: "https://github.com/Flight-School/AnyCodable", .upToNextMajor(from: "0.6.1"))
    ],
    targets: [
        .target(name: "TonAPI",
                dependencies: [
                  .byName(name: "AnyCodable")
                ],
                path: "Packages/ton-api",
                sources: ["Sources"]
               ),
        .target(name: "TonStreamingAPI",
                dependencies: [
                  .target(name: "StreamURLSessionTransport"),
                  .target(name: "EventSource")
                ],
                path: "Packages/ton-streaming-api",
                sources: ["Sources"]
               ),
        .target(name: "StreamURLSessionTransport",
                dependencies: [
                    .product(
                        name: "OpenAPIRuntime",
                        package: "swift-openapi-runtime"
                    )
                ],
                path: "Packages/StreamURLSessionTransport",
                sources: ["Sources"]
               ),
        .target(name: "EventSource",
                path: "Packages/EventSource",
                sources: ["Sources"]
               )
    ]
)
