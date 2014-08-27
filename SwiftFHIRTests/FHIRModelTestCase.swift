//
//  FHIRModelTestCase.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 8/27/14.
//  Copyright (c) 2014 CHIP. All rights reserved.
//

import Cocoa
import XCTest

class FHIRModelTestCase: XCTestCase
{
	func readJSONFile(filename: String) -> NSDictionary? {
		let path = NSBundle(forClass: self.dynamicType).pathForResource(filename.stringByDeletingPathExtension, ofType: "json")
		XCTAssertNotNil(path, "Did not find \"\(filename)")
		if nil == path { return nil }
		let data = NSData.dataWithContentsOfFile(path!, options: nil, error: nil)
		XCTAssertNotNil(data, "Unable to read \"\(path)")
		if nil == data { return nil }
		let json = NSJSONSerialization.JSONObjectWithData(data!, options: nil, error: nil) as? NSDictionary
		XCTAssertNotNil(json, "Unable to decode \"\(path)")
		return json
	}
}
