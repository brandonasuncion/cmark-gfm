// swift-tools-version:5.0

import PackageDescription


let package = Package(
    name: "libcmark",
    products: [
        .library(
            name: "libcmark",
            type: .static,
            targets: [
                "libcmark",
            ]
        )
    ],
    targets: [
        .target(
            name: "libcmark",
            path: ".",
            exclude: ["src/main.c"]
            , sources: [
                "src",
                "extensions"
            ]
            , publicHeadersPath: "./include/"
            , cSettings: [
                .headerSearchPath("include"),
                .headerSearchPath("src"),
                .headerSearchPath("extensions"),
            ]
        )
    ]
)
