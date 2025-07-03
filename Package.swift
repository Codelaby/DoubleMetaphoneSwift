// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DoubleMetaphoneSwift",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "DoubleMetaphoneSwift",
            targets: ["DoubleMetaphoneSwift"]
        )
    ],
    targets: [
        .target(
            name: "DoubleMetaphoneC",
            path: "Sources/DoubleMetaphoneC",
            publicHeadersPath: "."
        ),
        .target(
            name: "DoubleMetaphoneSwift",
            dependencies: ["DoubleMetaphoneC"],
            path: "Sources/DoubleMetaphoneSwift"
        ),
        .testTarget(
            name: "DoubleMetaphoneSwiftTests",
            dependencies: ["DoubleMetaphoneSwift"],
            path: "DoubleMetaphoneSwiftTests"
        )
    ]
)
