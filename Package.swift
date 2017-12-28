// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "ctci-swift",
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/ikhsan/DataStructure", .branch("master"))
    ],
    targets: [
        .target(name: "ArrayString"),
        .target(
            name: "LinkedLists",
            dependencies: [ "DataStructure" ]
        ),
        
        .testTarget(
            name: "CrackingTests",
            dependencies: [
                "ArrayString",
                "LinkedLists"
            ]
        )
    ]
)
