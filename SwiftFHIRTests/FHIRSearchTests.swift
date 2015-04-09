//
//  FHIRSearchTests.swift
//  SMART-on-FHIR
//
//  Created by Pascal Pfiffner on 7/11/14.
//  2014, SMART Platforms.
//

import XCTest
import SwiftFHIR


class FHIRSearchTests: XCTestCase
{
    func testConstruction() {
		let base = "https://fhir.me/"
		
		var srch = Patient.search([])
		XCTAssertEqual("Patient", srch.construct())
		
		srch = Patient.search(["name": ["$exact": "Alex"]])
		XCTAssertEqual("Patient?name:exact=Alex", srch.construct())
		
		srch = Patient.search(["name": "Alex", "birthdate": "1982-10-15"])
		var url = base + srch.construct()
		var pairs = NSURL(string: url)!.queryPairs()
		XCTAssertTrue(contains(pairs, "name=Alex"))
		XCTAssertTrue(contains(pairs, "birthdate=1982-10-15"))
		
		srch = Patient.search(["name": "Alex", "birthdate": ["$null": false]])
		url = base + srch.construct()
		pairs = NSURL(string: url)!.queryPairs()
		XCTAssertTrue(contains(pairs, "name=Alex"), "The query should contain \"name=Alex\" but doesn't: \(pairs)")
		XCTAssertTrue(contains(pairs, "birthdate:missing=false"), "The query should contain \"birthdate:missing=false\" but doesn't: \(pairs)")
		
		srch = Patient.search(["name": "Alex", "birthdate": ["$missing": false]])
		url = base + srch.construct()
		pairs = NSURL(string: url)!.queryPairs()
		XCTAssertTrue(contains(pairs, "name=Alex"), "The query should contain \"name=Alex\" but doesn't: \(pairs)")
		XCTAssertTrue(contains(pairs, "birthdate:missing=false"), "The query should contain \"birthdate:missing=false\" but doesn't: \(pairs)")
		
		srch = Patient.search(["name": "Alex", "birthdate": ["$missing": false], "gender": ["$text": "male"]])
		url = base + srch.construct()
		pairs = NSURL(string: url)!.queryPairs()
		XCTAssertTrue(contains(pairs, "name=Alex"), "The query should contain \"name=Alex\" but doesn't: \(pairs)")
		XCTAssertTrue(contains(pairs, "birthdate:missing=false"), "The query should contain \"birthdate:missing=false\" but doesn't: \(pairs)")
		XCTAssertTrue(contains(pairs, "gender:text=male"), "The query should contain \"gender:text=male\" but doesn't: \(pairs)")
		
		srch = FHIRSearch(query: ["subject": ["$type": "Patient", "name": "maud", "birthDate": ["$gt": "1970"]]])
		url = base + srch.construct()
		pairs = NSURL(string: url)!.queryPairs()
		XCTAssertTrue(contains(pairs, "subject:Patient.name=maud"), "The query should contain \"subject:Patient.name=maud\" but doesn't: \(pairs)")
		XCTAssertTrue(contains(pairs, "subject:Patient.birthDate=>1970"), "The query should contain \"subject:Patient.birthDate=>1970\" but doesn't: \(pairs)")
    }
}


extension NSURL
{
	func queryPairs() -> [String] {
		if let comp = NSURLComponents(URL: self, resolvingAgainstBaseURL: false) {
			if let qry = comp.query {
				return split(qry) {$0 == "&"}
			}
		}
		return []
	}
}

