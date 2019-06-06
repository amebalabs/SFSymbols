// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SFSymbols",
    platforms: [.iOS(.v10), .watchOS(.v6), .tvOS(.v13)],
    products: [
        .library(name: "SFSymbols",
                 type: .static,
                 targets: ["SFSymbols"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SFSymbols",
            dependencies: []
        ),
        .testTarget(
            name: "SFSymbolsTests",
            dependencies: ["SFSymbols"]
        )
    ]
)
