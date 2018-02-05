// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "ctci-swift",
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/ikhsan/DataStructure", .branch("master"))
    ],
    targets: [
        .target(name: "ArrayAndStringQuestions"),
        .target(
            name: "LinkedListsQuestions",
            dependencies: [ "DataStructure" ]
        ),
        .target(
            name: "StacksAndQueuesQuestions",
            dependencies: [ "DataStructure" ]
        ),
        .target(
            name: "TreesAndGraphsQuestions",
            dependencies: [ "DataStructure" ]
        ),
        .target(name: "BitManipulationQuestions"),

        .testTarget(
            name: "CrackingTests",
            dependencies: [
                "ArrayAndStringQuestions",
                "LinkedListsQuestions",
                "StacksAndQueuesQuestions",
                "TreesAndGraphsQuestions",
                "BitManipulationQuestions",
            ]
        )
    ]
)
