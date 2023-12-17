// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "EPUBKit",
    
    platforms: [
        .macOS(.v11),
        .iOS(.v14),
        .tvOS(.v14)
    ],
    
    products: [
        .library(name: "EPUBKit", targets: ["EPUBKit"]),
    ],
    
    dependencies: [
        .package(
            url: "https://github.com/tadija/AEXML",
            from: "4.6.0"
        ),
        .package(
            url: "https://github.com/marmelroy/Zip",
            from: "2.1.1"
        )
    ],
    
    targets: [
        .target(
            name: "EPUBKit",
            dependencies: ["AEXML", "Zip"]
        ),
        .testTarget(
            name: "EPUBKitTests",
            dependencies: ["EPUBKit"],
            resources: [.copy("Resources")]
        )
    ]
)
