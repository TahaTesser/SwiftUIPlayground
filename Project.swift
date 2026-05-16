import ProjectDescription

let project = Project(
    name: "SwiftUIPlayground",
    targets: [
        .target(
            name: "SwiftUIPlayground",
            destinations: .iOS,
            product: .app,
            bundleId: "com.tahatesser.SwiftUIPlayground",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": ""
                    ]
                ]
            ),
            buildableFolders: [
                "SwiftUIPlayground/Sources",
                "SwiftUIPlayground/Resources"
            ],
            dependencies: [],
            settings: .settings(
                base: [
                    "ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS": "YES",
                    "SWIFT_VERSION": "6.0"
                ]
            )
        ),
        .target(
            name: "SwiftUIPlaygroundTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.tahatesser.SwiftUIPlaygroundTests",
            infoPlist: .default,
            buildableFolders: [
                "SwiftUIPlayground/Tests"
            ],
            dependencies: [.target(name: "SwiftUIPlayground")],
            settings: .settings(
                base: [
                    "SWIFT_VERSION": "6.0"
                ]
            )
        )
    ]
)
