// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxTimelane",
    platforms: [
      .macOS(.v10_14),
      .iOS(.v11),
      .tvOS(.v12),
      .watchOS(.v5)
    ],
    products: [
        .library(
            name: "RxTimelane",
            targets: ["RxTimelane"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.1"),
        .package(url: "https://github.com/iamszabo/TimelaneCore", from: "3.0.0")
    ],
    targets: [
        .target(
            name: "RxTimelane",
            dependencies: ["RxSwift", "TimelaneCore"]),
        .testTarget(
            name: "RxTimelaneTests",
            dependencies: ["RxTimelane", "RxSwift", "TimelaneCoreTestUtils"]),
    ],
    swiftLanguageVersions: [.v5]
)
