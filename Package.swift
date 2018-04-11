// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "ctci-swift",
    dependencies: [
        .package(url: "https://github.com/ikhsan/DataStructure", from: "0.0.1")
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
        .target(name: "RecursionAndDynamicProgrammingQuestions"),
        .target(name: "SortingAndSearchingQuestions"),
        .target(name: "ModerateQuestions"),

        .testTarget(
            name: "CrackingTests",
            dependencies: [
                "ArrayAndStringQuestions",
                "LinkedListsQuestions",
                "StacksAndQueuesQuestions",
                "TreesAndGraphsQuestions",
                "BitManipulationQuestions",
                "RecursionAndDynamicProgrammingQuestions",
                "SortingAndSearchingQuestions",
                "ModerateQuestions",
            ]
        )
    ]
)
