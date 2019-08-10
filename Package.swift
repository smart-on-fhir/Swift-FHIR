// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
//  Package.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 12/10/15.
//  Modified by Dave Carlson on 8/6/2019.
//

import PackageDescription

let package = Package(
	name: "FHIR",
	platforms: [
		.macOS(.v10_13), .iOS(.v11)
	],
    products: [
        .library(
            name: "FHIR",
            targets: ["FHIR"]),
    ],
    targets: [
		.target(
			name: "FHIR",
			dependencies: ["Models", "Client"]),
		.target(
			name: "Models",
			dependencies: []),
		.target(
			name: "Client",
			dependencies: ["Models"]),
		
		// Test targets not supported until Swift Packages include resource bundles.
    ]
)
