//
//  XCTestCase+Local.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 01.02.17.
//  2017, SMART Health IT.
//

import XCTest


extension XCTestCase {
	
	var testResourcesDirectory: String {
		let dir = #file as NSString
		let proj = ((dir.deletingLastPathComponent as NSString).deletingLastPathComponent as NSString).deletingLastPathComponent as NSString
		return proj.appendingPathComponent("TestResources")
	}
}

