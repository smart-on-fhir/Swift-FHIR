//
//  AdverseReactionTests.swift
//  AdverseReactionTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class AdverseReactionTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> AdverseReaction? {
		let json = readJSONFile(filename)
		let instance = AdverseReaction(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAdverseReaction1() {
		let inst = instantiateFrom("adversereaction-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a AdverseReaction instance")
	
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2012-09-17")!)
		XCTAssertFalse(inst!.didNotOccurFlag!)
		XCTAssertEqual(inst!.exposure![0].date!, NSDate.dateFromISOString("2012-09-17")!)	
		XCTAssertEqual(inst!.exposure![0].substance!.reference!, "Substance/example")	
		XCTAssertEqual(inst!.exposure![0].type!, "coincidental")	
		XCTAssertEqual(inst!.recorder!.reference!, "Practitioner/example")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")	
		XCTAssertEqual(inst!.symptom![0].code!.coding![0].code!, "T78.2")	
		XCTAssertEqual(inst!.symptom![0].code!.coding![0].display!, "Anaphylactic shock, unspecified")
		XCTAssertEqual(inst!.symptom![0].code!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/sid/icd-10")!)	
		XCTAssertEqual(inst!.symptom![0].code!.text!, "Anaphylaxis reaction")	
		XCTAssertEqual(inst!.symptom![0].severity!, "moderate")	
		XCTAssertEqual(inst!.text!.div!, "<div>Anaphylaxis Reaction to a bee sting</div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
