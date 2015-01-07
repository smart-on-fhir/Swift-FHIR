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
	func testNSDate() {
		let d1 = NSDate.dateFromISOString("2013-05-25T19:32:52+01:00")
		XCTAssertNotNil(d1, "Must parse ISO date 1")
		let d1b = NSDate(json: "2013-05-25T19:32:52+01:00")
		XCTAssertNotNil(d1b, "Must parse with convenience initializer")
		XCTAssertEqual(d1!, d1b)
		
		let d2 = NSDate.dateFromISOString("2013-05-25T18:32:52Z")
		XCTAssertNotNil(d2, "Must parse ISO date 2")
		XCTAssertEqual(d1!, d2!)
		
		let dNoTZ = NSDate.dateFromISOString("2013-05-25T18:32:52")
		XCTAssertNotNil(dNoTZ, "Must parse ISO date without timezone")

		let dNoSec = NSDate.dateFromISOString("2013-05-25T18:32")
		XCTAssertNil(dNoSec, "Must not parse ISO date without seconds")
		
		let dDate = NSDate.dateFromISOString("2013-05-25")
		XCTAssertNotNil(dDate, "Must parse ISO date only")

		// FHIR allows many more date formats, we'll need to figure out how to support them. Possibly using Peter's
		// Cocoa ISO Date (un)parser: https://github.com/boredzo/iso-8601-date-formatter (BSD license)
	}
	
	func testNSURL() {
		let url1: NSURL? = NSURL(string: "http://api.io")
		let url2: NSURL? = NSURL(json: "http://api.io")
		XCTAssertNotNil(url1)
		XCTAssertNotNil(url2)
		XCTAssertEqual(url1!, url2!)
		
		let url = NSURL.from([
			"http://api.io",
			"https://smartplatforms.org",
			"not a URL",
			"ftp://plate.org"
		])
		XCTAssertTrue(3 == url.count, "Expecting 3 URLs")
	}
}
