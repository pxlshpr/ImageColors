// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ImageColors",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ImageColors",
            targets: ["ImageColors"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pxlshpr/ColorSugar", from: "0.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ImageColors",
            dependencies: [
                .product(name: "ColorSugar", package: "colorsugar"),
            ]),
        .testTarget(
            name: "ImageColorsTests",
            dependencies: ["ImageColors"]),
    ]
)
