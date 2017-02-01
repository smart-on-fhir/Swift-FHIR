//
//  XCTestCase+Local.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 01.02.17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest


extension XCTestCase {
	
	var testResourcesDirectory: String {
		let dir = #file as NSString
		let proj = ((dir.deletingLastPathComponent as NSString).deletingLastPathComponent as NSString).deletingLastPathComponent as NSString
		return proj.appendingPathComponent("TestResources")
	}
}

