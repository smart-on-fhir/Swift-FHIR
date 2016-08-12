//
//  SequenceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-12.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SequenceTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> Sequence {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Sequence {
		let instance = Sequence(json: json)
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
	
	func runSequence1(json: FHIRJSON? = nil) throws -> Sequence {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-example.json")
		
		XCTAssertEqual(inst.coordinateSystem, 0)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.patient!.reference, "Patient/example")
		XCTAssertEqual(inst.referenceSeq!.referenceSeqId!.coding![0].code, "NC_000007.14")
		XCTAssertEqual(inst.referenceSeq!.referenceSeqId!.coding![0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq!.strand, 1)
		XCTAssertEqual(inst.referenceSeq!.windowEnd, 55227980)
		XCTAssertEqual(inst.referenceSeq!.windowStart, 55227970)
		XCTAssertEqual(inst.repository![0].name, "ga4gh")
		XCTAssertEqual(inst.repository![0].url?.absoluteString, "https://www.googleapis.com/genomics/v1beta2")
		XCTAssertEqual(inst.repository![0].variantId, "A1A2")
		XCTAssertEqual(inst.text!.status, "generated")
		XCTAssertEqual(inst.type, "DNA")
		XCTAssertEqual(inst.variant![0].end, 55227977)
		XCTAssertEqual(inst.variant![0].observedAllele, "T")
		XCTAssertEqual(inst.variant![0].referenceAllele, "A")
		XCTAssertEqual(inst.variant![0].start, 55227976)
		
		return inst
	}
}
