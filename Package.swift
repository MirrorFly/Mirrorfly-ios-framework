// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MirrorFlySDK",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MirrorFlySDK",
            targets: ["MirrorFlySDK_Github","MirrorFlySDK"]),
    ],
//    targets: [
//        // Targets are the basic building blocks of a package, defining a module or a test suite.
//        // Targets can depend on other targets in this package and products from dependencies.
//        .target(
//            name: "MirrorFlySDK_Github", dependencies: []),
//        .binaryTarget(name: "MirrorFlySDK",
//                              path: "SDK/MirrorFlySDK.xcframework")
//    ]
    //targets: [
            // Targets are the basic building blocks of a package. A target can define a module or a test suite.
            // Targets can depend on other targets in this package, and on products in packages this package depends on.
//            .target(
//                name: "MirrorFlySDK_Github",
//                dependencies: []),
//            .binaryTarget(name: "MirrorFlySDK",
//                          path: "SDK/MirrorFlySDK.xcframework"),
//            .testTarget(
//                name: "MirrorFlySDK_GithubTests",
//                dependencies: ["MirrorFlySDK_Github"]),

        
        //]

    targets: [
            // Targets are the basic building blocks of a package. A target can define a module or a test suite.
            // Targets can depend on other targets in this package, and on products in packages this package depends on.
            .target(
                name: "MirrorFlySDK_Github",
                dependencies: []),
            .binaryTarget(name: "MirrorFlySDK",
                          path: "./SDK/MirrorFlySDK.xcframework"),
            .testTarget(
                name: "MirrorFlySDK_GithubTests",
                dependencies: ["MirrorFlySDK_Github"]),
        ]
)
