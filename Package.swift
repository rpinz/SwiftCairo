import PackageDescription

let package = Package(
    name: "Cairo",
    dependencies: [
        .Package(url: "https://github.com/rpinz/CCairo", majorVersion: 1),
        .Package(url: "https://github.com/rpinz/SwiftGObject", majorVersion: 2),
    ],
    swiftLanguageVersions: [3, 4]
)
