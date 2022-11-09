// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "Shimmer",
    defaultLocalization: "en",
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
            dependencies: [
                "FBShimmering"
            ],
            path: ".",
            sources: ["Framework"],
            publicHeadersPath: "Framework"
        ),
        .target(
            name: "FBShimmering",
            path: ".",
            sources: ["FBShimmering"],
            publicHeadersPath: "FBShimmering",
            cSettings: [
                .headerSearchPath("FBShimmering")
            ]
        )
    ]
)
