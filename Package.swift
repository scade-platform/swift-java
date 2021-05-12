// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Java",
    products: [
        .library(name: "Java", type: .static, targets: ["Java"]),
    ],
    targets: [        
        .target(name: "Java")
    ]
)

