// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "CocoaLumberjackSwift",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CocoaLumberjackSwift",
            targets: ["CocoaLumberjackSwiftWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/beMappy/CocoaLumberjack/", exact: "3.7.4-SPM"),
    ],
    targets: [
        .target(
            name: "CocoaLumberjackSwiftWrapper",
            dependencies: [
                .target(name: "CocoaLumberjackSwift"),
                .product(name: "CocoaLumberjack", package: "CocoaLumberjack"),
            ]
        ),
        .binaryTarget(
            name: "CocoaLumberjackSwift",
            path: "./CocoaLumberjackSwift.xcframework"
        ),
    ]
)
