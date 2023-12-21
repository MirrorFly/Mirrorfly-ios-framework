// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MirrorFlySDK_Github",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MirrorFlySDK_Github",
            targets: ["MirrorFlySDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "Alamofire", url: "https://github.com/Alamofire/Alamofire.git", .upToNextMinor(from: "5.5.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MirrorFlySDK_Github",
            dependencies: [.product(name: "Alamofire", package: "Alamofire")]),
        .binaryTarget(name: "MirrorFlySDK",
                      path: "SDK/MirrorFlySDK.xcframework"),
        .testTarget(
            name: "MirrorFlySDK_GithubTests",
            dependencies: ["MirrorFlySDK_Github"]),
    ]
)
