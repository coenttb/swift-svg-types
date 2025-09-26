// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "swift-svg-types",
    platforms: [
        .macOS(.v14),
        .iOS(.v17),
        .tvOS(.v17),
        .watchOS(.v10),
    ],
    products: [
        .library(
            name: "SVGTypes",
            targets: ["SVGTypes"]
        ),
    ],
    targets: [
        .target(
            name: "SVGTypes"
        ),
        .testTarget(
            name: "SVGTypesTests",
            dependencies: ["SVGTypes"]
        ),
    ]
)

let swiftSettings: [SwiftSetting] = [
    .enableUpcomingFeature("MemberImportVisibility"),
    .enableUpcomingFeature("StrictUnsafe"),
    .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
]

for index in package.targets.indices {
    package.targets[index].swiftSettings = (package.targets[index].swiftSettings ?? []) + swiftSettings
}