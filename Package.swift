// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "bd-chat-sample-sdk",
    platforms: [
        .iOS(.v15) // must be >= Support SDK's minimum (15)
    ],
    products: [
        .library(
            name: "BoldDeskChatSDK",
            targets: ["BoldDeskChatSDKTargets"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/boomibalanB/bd-support-sdk-sample.git",
            from: "4.0.10"
        )
    ],
    targets: [
        .binaryTarget(
            name: "BoldDeskChatSDKBinary",
            path: "BoldDeskChatSDK.xcframework"
        ),
        .target(
            name: "BoldDeskChatSDKTargets",
            dependencies: [
                "BoldDeskChatSDKBinary",
                .product(name: "BoldDeskSupportSDK", package: "bd-support-sdk-sample")
            ],
            path: "Sources"
        )
    ]
)
