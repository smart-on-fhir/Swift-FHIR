//
//  SequenceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-08-17.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SequenceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Sequence {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Sequence {
		let instance = SwiftFHIR.Sequence(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSequence1() {
		do {
			let instance = try runSequence1()
			try runSequence1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Sequence successfully, but threw")
		}
	}
	
	@discardableResult
	func runSequence1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Sequence {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.referenceSeq?[0].referenceSeqId?.coding?[0].code, "NC_000007.14")
		XCTAssertEqual(inst.referenceSeq?[0].referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq?[0].windowEnd, 55227980)
		XCTAssertEqual(inst.referenceSeq?[0].windowStart, 55227970)
		XCTAssertEqual(inst.repository?[0].name, "ga4gh")
		XCTAssertEqual(inst.repository?[0].url?.absoluteString, "https://www.googleapis.com/genomics/v1beta2")
		XCTAssertEqual(inst.repository?[0].variantId, "A1A2")
		XCTAssertEqual(inst.species?.coding?[0].code, "337915000")
		XCTAssertEqual(inst.species?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.species?.text, "Homo sapiens")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type, "DNA")
		XCTAssertEqual(inst.variation?.end, 55227977)
		XCTAssertEqual(inst.variation?.observedAllele, "T")
		XCTAssertEqual(inst.variation?.referenceAllele, "A")
		XCTAssertEqual(inst.variation?.start, 55227976)
		
		return inst
	}
}
