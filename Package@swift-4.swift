// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Cairo",
    products: [
        .library(
            name: "Cairo",
            targets: ["Cairo"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/rpinz/CCairo",
            .branch("master")),
        .package(
            url: "https://github.com/rpinz/SwiftGObject",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "Cairo",
            dependencies: ["GLibObject"],
            path: "Sources"),
        .testTarget(
            name: "CairoTests",
            dependencies: ["Cairo"])
    ],
    swiftLanguageVersions: [4]
)
