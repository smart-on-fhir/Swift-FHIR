//
//  ExtensionsTest.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 8/22/14.
//  2014, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ExtensionsTest: XCTestCase
{
	func testURL() {
		let url1 = URL(string: "http://api.io")
		let url2 = URL(json: "http://api.io")
		XCTAssertNotNil(url1)
		XCTAssertNotNil(url2)
		XCTAssertEqual(url1!, url2!)
		
		let url = URL.instantiate(fromArray: [
			"http://api.io",
			"https://smartplatforms.org",
			"not a URL",
			"ftp://plate.org"
		])
		XCTAssertTrue(3 == url.count, "Expecting 3 URLs")
	}
}
