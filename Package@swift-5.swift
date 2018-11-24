// swift-tools-version:5.0

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
            url: "https://github.com/rpinz/SwiftGObject",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "Cairo",
            dependencies: ["CCairo","GLibObject"],
            path: "Sources"),
        .testTarget(
            name: "CairoTests",
            dependencies: ["Cairo"]),
        .systemLibrary(
            name: "CCairo",
            path: "Library/CCairo",
            pkgConfig: "cairo",
            providers: [
                .brew(["libcairo2"]),
                .apt(["libcairo2-dev"])
            ])
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
