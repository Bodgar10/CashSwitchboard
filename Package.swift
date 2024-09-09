// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "CashSwitchboard",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CashSwitchboard",
            targets: ["CashSwitchboard"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Bodgar10/DesignSystem.git", .upToNextMajor(from: "1.0.3")),
        .package(url: "https://github.com/Bodgar10/Common.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(
            name: "CashSwitchboard",
            dependencies: [
                .product(name: "DesignSystem", package: "DesignSystem"),
                .product(name: "Common", package: "Common")
            ]
        ),
        .testTarget(
            name: "CashSwitchboardTests",
            dependencies: ["CashSwitchboard"]),
    ],
    swiftLanguageVersions: [.v5]
)
