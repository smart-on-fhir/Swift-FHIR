//
//  Package.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 12/10/15.
//  2015, SMART Platforms.
//

import PackageDescription

let package = Package(
	name: "SwiftFHIR",
	targets: [
		Target(name: "Models"),
		Target(name: "Client", dependencies: [.Target(name: "Models")]),
	]
)
