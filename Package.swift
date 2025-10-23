// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterUnrealShader",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitterUnrealShader", targets: ["TreeSitterUnrealShader"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(name: "TreeSitterUnrealShader",
                path: ".",
                exclude: [
                    "Cargo.toml",
                    "Makefile",
                    "binding.gyp",
                    "bindings/c",
                    "bindings/go",
                    "bindings/node",
                    "bindings/python",
                    "bindings/rust",
                    "grammar.js",
                    "package.json",
                    "package-lock.json",
                    "pyproject.toml",
                    "setup.py",
                    "test",
                    ".editorconfig",
                    ".github",
                    ".gitignore",
                    ".gitattributes",
                    ".gitmodules",
                ],
                sources: [
                    "src/parser.c",
                    "src/scanner.c",
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")]),
         .testTarget(
                name: "TreeSitterUnrealShaderTests",
                dependencies: [
                    "SwiftTreeSitter",
                    "TreeSitterUnrealShader",
                ],
                path: "bindings/swift/TreeSitterUnrealShaderTests")
    ],
    cLanguageStandard: .c11
)
