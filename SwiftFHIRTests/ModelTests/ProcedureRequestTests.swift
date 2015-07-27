//
//  ProcedureRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ProcedureRequestTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> ProcedureRequest {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> ProcedureRequest {
		let instance = ProcedureRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProcedureRequest1() throws {
		let instance = try testProcedureRequest1_impl()
		try testProcedureRequest1_impl(instance.asJSON())
	}
	
	func testProcedureRequest1_impl(json: FHIRJSON? = nil) throws -> ProcedureRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be added</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "323418000")
		XCTAssertEqual(inst.type!.coding![0].display!, "Fix me up")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testProcedureRequest2() throws {
		let instance = try testProcedureRequest2_impl()
		try testProcedureRequest2_impl(instance.asJSON())
	}
	
	func testProcedureRequest2_impl(json: FHIRJSON? = nil) throws -> ProcedureRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-qicore-example.json")
		
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].code!, "66754008")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].display!, "Appendix structure")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/example")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/procedurerequest-authorizedBy")
		XCTAssertEqual(inst.extension_fhir![0].valueReference!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.indication![0].coding![0].code!, "163220003")
		XCTAssertEqual(inst.indication![0].coding![0].display!, "On examination - abdominal pain - right iliac")
		XCTAssertEqual(inst.indication![0].coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.orderedOn!.description, "2013-04-04")
		XCTAssertEqual(inst.priority!, "urgent")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>Request for Routine Appendectomy</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.timingDateTime!.description, "2013-04-05")
		XCTAssertEqual(inst.type!.coding![0].code!, "80146002")
		XCTAssertEqual(inst.type!.coding![0].display!, "Appendectomy (Procedure)")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.type!.text!, "Appendectomy")
		
		return inst
	}
}
