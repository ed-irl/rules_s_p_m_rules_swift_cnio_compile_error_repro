// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "irl-llc",
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio", from: "2.65.0")
    ]
)