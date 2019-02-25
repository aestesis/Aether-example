// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Aether-example",
    products: [
        .executable(name: "Aether-example",targets: ["Aether-example"])
    ],
    dependencies: [
        .package(url: "https://github.com/aestesis/Aether.git", .branch("master"))
    ],
    targets: [
        .target(name: "Aether-example",dependencies: ["Aether"]),
    ]
)
