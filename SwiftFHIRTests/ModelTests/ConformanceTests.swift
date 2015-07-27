//
//  ConformanceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ConformanceTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Conformance {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Conformance {
		let instance = Conformance(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testConformance1() throws {
		let instance = try testConformance1_impl()
		try testConformance1_impl(instance.asJSON())
	}
	
	func testConformance1_impl(json: FHIRJSON? = nil) throws -> Conformance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "conformance-example.json")
		
		XCTAssertTrue(inst.acceptUnknown!)
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "email")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "wile@acme.org")
		XCTAssertEqual(inst.date!.description, "2012-01-04")
		XCTAssertEqual(inst.description_fhir!, "This is the FHIR conformance statement for the main EHR at ACME for the private interface - it does not describe the public interface")
		XCTAssertEqual(inst.document![0].documentation!, "Basic rules for all documents in the EHR system")
		XCTAssertEqual(inst.document![0].mode!, "consumer")
		XCTAssertEqual(inst.document![0].profile!.reference!, "http://fhir.hl7.org/base/Profilebc054d23-75e1-4dc6-aca5-838b6b1ac81d/_history/b5fdd9fc-b021-4ea1-911a-721a60663796")
		XCTAssertEqual(inst.fhirVersion!, "0.07")
		XCTAssertEqual(inst.format![0], "xml")
		XCTAssertEqual(inst.format![1], "json")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.messaging![0].event![0].code!.code!, "admin-notify")
		XCTAssertEqual(inst.messaging![0].event![0].code!.system!.absoluteString, "http://hl7.org/fhir/message-type")
		XCTAssertEqual(inst.messaging![0].event![0].focus!, "Patient")
		XCTAssertEqual(inst.messaging![0].event![0].mode!, "receiver")
		XCTAssertEqual(inst.messaging![0].event![0].request!.reference!, "StructureDefinition/101")
		XCTAssertEqual(inst.messaging![0].event![0].response!.reference!, "StructureDefinition/101")
		XCTAssertEqual(inst.name!, "ACME EHR Conformance statement")
		XCTAssertEqual(inst.publisher!, "ACME Corporation")
		XCTAssertEqual(inst.rest![0].interaction![0].code!, "transaction")
		XCTAssertEqual(inst.rest![0].interaction![1].code!, "history-system")
		XCTAssertEqual(inst.rest![0].mode!, "server")
		XCTAssertEqual(inst.rest![0].resource![0].interaction![0].code!, "read")
		XCTAssertEqual(inst.rest![0].resource![0].interaction![1].code!, "vread")
		XCTAssertEqual(inst.rest![0].resource![0].interaction![2].code!, "update")
		XCTAssertEqual(inst.rest![0].resource![0].interaction![3].code!, "history-instance")
		XCTAssertEqual(inst.rest![0].resource![0].interaction![4].code!, "create")
		XCTAssertEqual(inst.rest![0].resource![0].interaction![5].code!, "history-type")
		XCTAssertEqual(inst.rest![0].resource![0].profile!.reference!, "http://fhir.hl7.org/base/Profile7896271d-57f6-4231-89dc-dcc91eab2416")
		XCTAssertEqual(inst.rest![0].resource![0].type!, "Patient")
		XCTAssertEqual(inst.software!.name!, "EHR")
		XCTAssertEqual(inst.software!.version!, "0.00.020.2134")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.url!.absoluteString, "68D043B5-9ECF-4559-A57A-396E0D452311")
		XCTAssertEqual(inst.version!, "20130510")
		
		return inst
	}
	
	func testConformance2() throws {
		let instance = try testConformance2_impl()
		try testConformance2_impl(instance.asJSON())
	}
	
	func testConformance2_impl(json: FHIRJSON? = nil) throws -> Conformance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "conformance-phr-example.json")
		
		XCTAssertFalse(inst.acceptUnknown!)
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "url")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date!.description, "2013-06-18")
		XCTAssertEqual(inst.description_fhir!, "Prototype Conformance Statement for September 2013 Connectathon")
		XCTAssertEqual(inst.fhirVersion!, "0.09")
		XCTAssertEqual(inst.format![0], "json")
		XCTAssertEqual(inst.format![1], "xml")
		XCTAssertEqual(inst.id!, "phr")
		XCTAssertEqual(inst.name!, "PHR Template")
		XCTAssertEqual(inst.publisher!, "FHIR Project")
		XCTAssertEqual(inst.rest![0].documentation!, "Protoype server conformance statement for September 2013 Connectathon")
		XCTAssertEqual(inst.rest![0].mode!, "server")
		XCTAssertEqual(inst.rest![0].resource![0].interaction![0].code!, "read")
		XCTAssertEqual(inst.rest![0].resource![0].interaction![1].code!, "search-type")
		XCTAssertEqual(inst.rest![0].resource![0].interaction![1].documentation!, "When a client searches patients with no search criteria, they get a list of all patients they have access too. Servers may elect to offer additional search parameters, but this is not required")
		XCTAssertEqual(inst.rest![0].resource![0].type!, "Patient")
		XCTAssertEqual(inst.rest![0].resource![1].interaction![0].code!, "read")
		XCTAssertEqual(inst.rest![0].resource![1].interaction![1].code!, "search-type")
		XCTAssertEqual(inst.rest![0].resource![1].searchParam![0].documentation!, "_id parameter always supported. For the connectathon, servers may elect which search parameters are supported")
		XCTAssertEqual(inst.rest![0].resource![1].searchParam![0].name!, "_id")
		XCTAssertEqual(inst.rest![0].resource![1].searchParam![0].type!, "token")
		XCTAssertEqual(inst.rest![0].resource![1].type!, "DocumentReference")
		XCTAssertEqual(inst.rest![0].resource![2].interaction![0].code!, "read")
		XCTAssertEqual(inst.rest![0].resource![2].interaction![1].code!, "search-type")
		XCTAssertEqual(inst.rest![0].resource![2].searchParam![0].documentation!, "Standard _id parameter")
		XCTAssertEqual(inst.rest![0].resource![2].searchParam![0].name!, "_id")
		XCTAssertEqual(inst.rest![0].resource![2].searchParam![0].type!, "token")
		XCTAssertEqual(inst.rest![0].resource![2].type!, "Condition")
		XCTAssertEqual(inst.rest![0].resource![3].interaction![0].code!, "read")
		XCTAssertEqual(inst.rest![0].resource![3].interaction![1].code!, "search-type")
		XCTAssertEqual(inst.rest![0].resource![3].searchParam![0].documentation!, "Standard _id parameter")
		XCTAssertEqual(inst.rest![0].resource![3].searchParam![0].name!, "_id")
		XCTAssertEqual(inst.rest![0].resource![3].searchParam![0].type!, "token")
		XCTAssertEqual(inst.rest![0].resource![3].searchParam![1].documentation!, "which diagnostic discipline/department created the report")
		XCTAssertEqual(inst.rest![0].resource![3].searchParam![1].name!, "service")
		XCTAssertEqual(inst.rest![0].resource![3].searchParam![1].type!, "token")
		XCTAssertEqual(inst.rest![0].resource![3].type!, "DiagnosticReport")
		XCTAssertEqual(inst.rest![0].security!.service![0].text!, "OAuth")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
