//
//  FHIRSearchTests.swift
//  SMART-on-FHIR
//
//  Created by Pascal Pfiffner on 7/11/14.
//  2014, SMART Platforms.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
import Client
#else
import SwiftFHIR
#endif


class FHIRSearchTests: XCTestCase {
	
    func testConstruction() {
		let base = "https://fhir.me/"
		
		var srch = Patient.search([])
		XCTAssertEqual("Patient", srch.construct())
		
		srch = Patient.search(["name": ["$exact": "Alex"]])
		XCTAssertEqual("Patient?name:exact=Alex", srch.construct())
		
		srch = Patient.search(["name": "Alex", "birthdate": "1982-10-15"])
		var url = base + srch.construct()
		var pairs = URL(string: url)!.queryPairs()
		XCTAssertTrue(pairs.contains("name=Alex"))
		XCTAssertTrue(pairs.contains("birthdate=1982-10-15"))
		
		srch = Patient.search(["name": "Alex", "birthdate": ["$null": false]])
		url = base + srch.construct()
		pairs = URL(string: url)!.queryPairs()
		XCTAssertTrue(pairs.contains("name=Alex"), "The query should contain \"name=Alex\" but doesn't: \(pairs)")
		XCTAssertTrue(pairs.contains("birthdate:missing=false"), "The query should contain \"birthdate:missing=false\" but doesn't: \(pairs)")
		
		srch = Patient.search(["name": "Alex", "birthdate": ["$missing": false]])
		url = base + srch.construct()
		pairs = URL(string: url)!.queryPairs()
		XCTAssertTrue(pairs.contains("name=Alex"), "The query should contain \"name=Alex\" but doesn't: \(pairs)")
		XCTAssertTrue(pairs.contains("birthdate:missing=false"), "The query should contain \"birthdate:missing=false\" but doesn't: \(pairs)")
		
		srch = Patient.search(["name": "Alex", "birthdate": ["$missing": false], "gender": ["$text": "male"]])
		url = base + srch.construct()
		pairs = URL(string: url)!.queryPairs()
		XCTAssertTrue(pairs.contains("name=Alex"), "The query should contain \"name=Alex\" but doesn't: \(pairs)")
		XCTAssertTrue(pairs.contains("birthdate:missing=false"), "The query should contain \"birthdate:missing=false\" but doesn't: \(pairs)")
		XCTAssertTrue(pairs.contains("gender:text=male"), "The query should contain \"gender:text=male\" but doesn't: \(pairs)")
		
		srch = FHIRSearch(query: ["subject": ["$type": "Patient", "name": "maud", "birthDate": ["$gt": "1970"]]])
		url = base + srch.construct()
		pairs = URL(string: url)!.queryPairs()
		XCTAssertTrue(pairs.contains("subject:Patient.name=maud"), "The query should contain \"subject:Patient.name=maud\" but doesn't: \(pairs)")
		XCTAssertTrue(pairs.contains("subject:Patient.birthDate=gt1970"), "The query should contain \"subject:Patient.birthDate=gt1970\" but doesn't: \(pairs)")
    }
}


extension URL
{
	func queryPairs() -> [String] {
		if let comp = URLComponents(url: self, resolvingAgainstBaseURL: false) {
			if let qry = comp.query {
				return qry.split() {$0 == "&"}.map { String($0) }
			}
		}
		return []
	}
}

