//
//  FHIRModelTestCase.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 8/27/14.
//  2014, SMART Health IT.
//

import XCTest
import SwiftFHIR


/**
 *  Superclass for FHIR model tests providing a `readJSONFile(filename:)` method to read JSON files from disk.
 */
class FHIRModelTestCase: XCTestCase
{
	class var testsDirectory: String {
		let dir = __FILE__
		let proj = dir.fhir_stringByDeletingLastPathComponent.fhir_stringByDeletingLastPathComponent.fhir_stringByDeletingLastPathComponent
		return proj.fhir_stringByAppendingPathComponent("fhir-parser/downloads")
	}
	
	func readJSONFile(filename: String) throws -> FHIRJSON? {
		let dir = self.dynamicType.testsDirectory
		XCTAssertTrue(NSFileManager.defaultManager().fileExistsAtPath(dir), "You must either first download the FHIR spec or manually adjust `FHIRModelTestCase.testsDirectory` to point to your FHIR download directory")
		
		let path = dir.fhir_stringByAppendingPathComponent(filename)
		let data = NSData(contentsOfFile: path)
		XCTAssertNotNil(data, "Unable to read \"\(path)")
		if nil == data { return nil }
		
		let json = try NSJSONSerialization.JSONObjectWithData(data!, options: []) as? FHIRJSON
		XCTAssertNotNil(json, "Unable to decode \"\(path)")
		
		return json
	}
}


extension String
{
	func fhir_stringByAppendingPathComponent(part: String) -> String {
		return (self as NSString).stringByAppendingPathComponent(part)
	}
	
	var fhir_stringByDeletingLastPathComponent: String {
		return (self as NSString).stringByDeletingLastPathComponent
	}
}

