// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FPBRecognition-SPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FPBRecognition-SPM",
            targets: ["FPBRecognition-SPM","FPBRecognition"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FPBRecognition-SPM",  dependencies: ["FPBRecognition"]),
        .binaryTarget(name: "FPBRecognition",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/FPBRecognition/6.1.3/FPBRecognition.zip",
        checksum: "42aefbfff18b01a4a960bbcc26dcdd68c0184ee4703c230ef23c566f9e74e545")
    ]
)
