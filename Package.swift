// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "CashSwitchboard",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CashSwitchboard",
            targets: ["CashSwitchboard"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CashSwitchboard"),
        .testTarget(
            name: "CashSwitchboardTests",
            dependencies: ["CashSwitchboard"]),
    ],
    swiftLanguageVersions: [.v5]
)