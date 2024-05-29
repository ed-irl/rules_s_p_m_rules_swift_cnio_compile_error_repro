load("@gazelle//:def.bzl", "gazelle", "gazelle_binary")
load("@rules_swift_package_manager//swiftpkg:defs.bzl", "swift_update_packages")
load("@rules_swift//swift:swift.bzl", "swift_library")


swift_library(
    name = "main",
    srcs = ["main.swift"],
    deps = [
        "@swiftpkg_swift_nio//:NIO"
    ]
)
gazelle(
    name = "gazelle",
)

gazelle_binary(
    name = "swift_gazelle_bin",
    languages = [
        "@gazelle//language/go",
        "@rules_swift_package_manager//gazelle",
    ],
)

# This macro defines two targets: `swift_update_pkgs` and
# `swift_update_pkgs_to_latest`.
#
# The `swift_update_pkgs` target should be run whenever the list of external
# dependencies is updated in the `Package.swift`. Running this target will
# populate the `swift_deps.bzl` with `swift_package` declarations for all of
# the direct and transitive Swift packages that your project uses.
#
# The `swift_update_pkgs_to_latest` target should be run when you want to
# update your Swift dependencies to their latest eligible version.
swift_update_packages(
    name = "swift_update_pkgs",
    gazelle = ":swift_gazelle_bin",
    generate_swift_deps_for_workspace = False,
    update_bzlmod_stanzas = True,
)
