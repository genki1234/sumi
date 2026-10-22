// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Sumi",
    platforms: [.macOS(.v14)],
    dependencies: [
        // xterm-compatible terminal emulator for the console (MIT).
        .package(url: "https://github.com/migueldeicaza/SwiftTerm.git", from: "1.20.0"),
        // cmark-gfm, GitHub's CommonMark renderer (tables, task lists, strikethrough, autolinks), for the Markdown preview (BSD-2-Clause).
        .package(url: "https://github.com/swiftlang/swift-cmark.git", from: "0.6.0"),
    ],
    targets: [
        .executableTarget(
            name: "Sumi",
            dependencies: [
                .product(name: "SwiftTerm", package: "SwiftTerm"),
                .product(name: "cmark-gfm", package: "swift-cmark"),
                .product(name: "cmark-gfm-extensions", package: "swift-cmark"),
            ],
            path: "Sources/Sumi"
        )
    ]
)
