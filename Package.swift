// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Aether-example",
    products: [
        .executable(name: "Aether-example",targets: ["Aether-example"])
    ],
    dependencies: [
        .package(url: "https://github.com/aestesis/Aether.git", from:"0.0.4")
    ],
    targets: [
        .target(name: "Aether-example",dependencies: ["Aether"]),
    ]
)
