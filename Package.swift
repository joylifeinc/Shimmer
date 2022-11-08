// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "Shimmer",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "Shimmer",
            targets: ["Shimmer"]
        )
    ],
    targets: [
        .target(
            name: "Shimmer",
            path: "FBShimmering"
        )
    ]
)