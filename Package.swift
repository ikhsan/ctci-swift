// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "ctci-swift",
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "ArrayAndString",
            path: "Sources/ArrayAndString"
        ),
        .testTarget(
            name: "ArrayAndStringTests",
            dependencies: ["ArrayAndString"],
            path: "Tests/ArrayAndStringTests"
        ),
    ]
)
