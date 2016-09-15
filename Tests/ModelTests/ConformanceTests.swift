//
//  ConformanceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ConformanceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Conformance {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Conformance {
		let instance = SwiftFHIR.Conformance(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testConformance1() {
		do {
			let instance = try runConformance1()
			try runConformance1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Conformance successfully, but threw")
		}
	}
	
	@discardableResult
	func runConformance1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Conformance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "conformance-example.json")
		
		XCTAssertEqual(inst.acceptUnknown, "both")
		XCTAssertEqual(inst.contact?[0].name, "System Administrator")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "email")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "wile@acme.org")
		XCTAssertEqual(inst.copyright, "Copyright © Acme Healthcare and GoodCorp EHR Systems")
		XCTAssertEqual(inst.date?.description, "2012-01-04")
		XCTAssertEqual(inst.description_fhir, "This is the FHIR conformance statement for the main EHR at ACME for the private interface - it does not describe the public interface")
		XCTAssertEqual(inst.document?[0].documentation, "Basic rules for all documents in the EHR system")
		XCTAssertEqual(inst.document?[0].mode, "consumer")
		XCTAssertEqual(inst.document?[0].profile?.reference, "http://fhir.hl7.org/base/Profilebc054d23-75e1-4dc6-aca5-838b6b1ac81d/_history/b5fdd9fc-b021-4ea1-911a-721a60663796")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.fhirVersion, "1.0.0")
		XCTAssertEqual(inst.format?[0], "xml")
		XCTAssertEqual(inst.format?[1], "json")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.implementation?.description_fhir, "main EHR at ACME")
		XCTAssertEqual(inst.implementation?.url?.absoluteString, "http://10.2.3.4/fhir")
		XCTAssertEqual(inst.kind, "instance")
		XCTAssertEqual(inst.messaging?[0].documentation, "ADT A08 equivalent for external system notifications")
		XCTAssertEqual(inst.messaging?[0].endpoint?[0].address?.absoluteString, "mllp:10.1.1.10:9234")
		XCTAssertEqual(inst.messaging?[0].endpoint?[0].protocol_fhir?.code, "mllp")
		XCTAssertEqual(inst.messaging?[0].endpoint?[0].protocol_fhir?.system?.absoluteString, "http://hl7.org/fhir/message-transport")
		XCTAssertEqual(inst.messaging?[0].event?[0].category, "Consequence")
		XCTAssertEqual(inst.messaging?[0].event?[0].code?.code, "admin-notify")
		XCTAssertEqual(inst.messaging?[0].event?[0].code?.system?.absoluteString, "http://hl7.org/fhir/message-type")
		XCTAssertEqual(inst.messaging?[0].event?[0].documentation, "Notification of an update to a patient resource. changing the links is not supported")
		XCTAssertEqual(inst.messaging?[0].event?[0].focus, "Patient")
		XCTAssertEqual(inst.messaging?[0].event?[0].mode, "receiver")
		XCTAssertEqual(inst.messaging?[0].event?[0].request?.reference, "StructureDefinition/daf-patient")
		XCTAssertEqual(inst.messaging?[0].event?[0].response?.reference, "StructureDefinition/MessageHeader")
		XCTAssertEqual(inst.messaging?[0].reliableCache, UInt(30))
		XCTAssertEqual(inst.name, "ACME EHR Conformance statement")
		XCTAssertEqual(inst.publisher, "ACME Corporation")
		XCTAssertEqual(inst.requirements, "Main EHR conformance statement, published for contracting and operational support")
		XCTAssertEqual(inst.rest?[0].compartment?[0].absoluteString, "http://hl7.org/fhir/compartment/Patient")
		XCTAssertEqual(inst.rest?[0].documentation, "Main FHIR endpoint for acem health")
		XCTAssertEqual(inst.rest?[0].interaction?[0].code, "transaction")
		XCTAssertEqual(inst.rest?[0].interaction?[1].code, "history-system")
		XCTAssertEqual(inst.rest?[0].mode, "server")
		XCTAssertTrue(inst.rest?[0].resource?[0].conditionalCreate ?? false)
		XCTAssertEqual(inst.rest?[0].resource?[0].conditionalDelete, "not-supported")
		XCTAssertFalse(inst.rest?[0].resource?[0].conditionalUpdate ?? true)
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[0].code, "read")
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[1].code, "vread")
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[1].documentation, "Only supported for patient records since 12-Dec 2012")
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[2].code, "update")
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[3].code, "history-instance")
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[4].code, "create")
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[5].code, "history-type")
		XCTAssertEqual(inst.rest?[0].resource?[0].profile?.reference, "http://fhir.hl7.org/base/Profile7896271d-57f6-4231-89dc-dcc91eab2416")
		XCTAssertTrue(inst.rest?[0].resource?[0].readHistory ?? false)
		XCTAssertEqual(inst.rest?[0].resource?[0].searchInclude?[0], "Organization")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[0].definition?.absoluteString, "http://hl7.org/fhir/SearchParameter/Patient-identifier")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[0].documentation, "Only supports search by institution MRN")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[0].modifier?[0], "missing")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[0].name, "identifier")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[0].type, "token")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[1].chain?[0], "name")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[1].chain?[1], "identifier")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[1].definition?.absoluteString, "http://hl7.org/fhir/SearchParameter/Patient-careprovider")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[1].modifier?[0], "missing")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[1].name, "careprovider")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[1].target?[0], "Organization")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[1].type, "reference")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchRevInclude?[0], "Person")
		XCTAssertEqual(inst.rest?[0].resource?[0].type, "Patient")
		XCTAssertFalse(inst.rest?[0].resource?[0].updateCreate ?? true)
		XCTAssertEqual(inst.rest?[0].resource?[0].versioning, "versioned-update")
		XCTAssertEqual(inst.rest?[0].security?.certificate?[0].blob, Base64Binary(value: "IHRoaXMgYmxvYiBpcyBub3QgdmFsaWQ="))
		XCTAssertEqual(inst.rest?[0].security?.certificate?[0].type, "application/jwt")
		XCTAssertTrue(inst.rest?[0].security?.cors ?? false)
		XCTAssertEqual(inst.rest?[0].security?.description_fhir, "See Smart on FHIR documentation")
		XCTAssertEqual(inst.rest?[0].security?.service?[0].coding?[0].code, "SMART-on-FHIR")
		XCTAssertEqual(inst.rest?[0].security?.service?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/restful-security-service")
		XCTAssertEqual(inst.software?.name, "EHR")
		XCTAssertEqual(inst.software?.releaseDate?.description, "2012-01-04")
		XCTAssertEqual(inst.software?.version, "0.00.020.2134")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.url?.absoluteString, "68D043B5-9ECF-4559-A57A-396E0D452311")
		XCTAssertEqual(inst.version, "20130510")
		
		return inst
	}
	
	func testConformance2() {
		do {
			let instance = try runConformance2()
			try runConformance2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Conformance successfully, but threw")
		}
	}
	
	@discardableResult
	func runConformance2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Conformance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "conformance-phr-example.json")
		
		XCTAssertEqual(inst.acceptUnknown, "no")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "other")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2013-06-18")
		XCTAssertEqual(inst.description_fhir, "Prototype Conformance Statement for September 2013 Connectathon")
		XCTAssertEqual(inst.fhirVersion, "1.0.0")
		XCTAssertEqual(inst.format?[0], "json")
		XCTAssertEqual(inst.format?[1], "xml")
		XCTAssertEqual(inst.id, "phr")
		XCTAssertEqual(inst.kind, "capability")
		XCTAssertEqual(inst.name, "PHR Template")
		XCTAssertEqual(inst.publisher, "FHIR Project")
		XCTAssertEqual(inst.rest?[0].documentation, "Protoype server conformance statement for September 2013 Connectathon")
		XCTAssertEqual(inst.rest?[0].mode, "server")
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[0].code, "read")
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[1].code, "search-type")
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[1].documentation, "When a client searches patients with no search criteria, they get a list of all patients they have access too. Servers may elect to offer additional search parameters, but this is not required")
		XCTAssertEqual(inst.rest?[0].resource?[0].type, "Patient")
		XCTAssertEqual(inst.rest?[0].resource?[1].interaction?[0].code, "read")
		XCTAssertEqual(inst.rest?[0].resource?[1].interaction?[1].code, "search-type")
		XCTAssertEqual(inst.rest?[0].resource?[1].searchParam?[0].documentation, "_id parameter always supported. For the connectathon, servers may elect which search parameters are supported")
		XCTAssertEqual(inst.rest?[0].resource?[1].searchParam?[0].name, "_id")
		XCTAssertEqual(inst.rest?[0].resource?[1].searchParam?[0].type, "token")
		XCTAssertEqual(inst.rest?[0].resource?[1].type, "DocumentReference")
		XCTAssertEqual(inst.rest?[0].resource?[2].interaction?[0].code, "read")
		XCTAssertEqual(inst.rest?[0].resource?[2].interaction?[1].code, "search-type")
		XCTAssertEqual(inst.rest?[0].resource?[2].searchParam?[0].documentation, "Standard _id parameter")
		XCTAssertEqual(inst.rest?[0].resource?[2].searchParam?[0].name, "_id")
		XCTAssertEqual(inst.rest?[0].resource?[2].searchParam?[0].type, "token")
		XCTAssertEqual(inst.rest?[0].resource?[2].type, "Condition")
		XCTAssertEqual(inst.rest?[0].resource?[3].interaction?[0].code, "read")
		XCTAssertEqual(inst.rest?[0].resource?[3].interaction?[1].code, "search-type")
		XCTAssertEqual(inst.rest?[0].resource?[3].searchParam?[0].documentation, "Standard _id parameter")
		XCTAssertEqual(inst.rest?[0].resource?[3].searchParam?[0].name, "_id")
		XCTAssertEqual(inst.rest?[0].resource?[3].searchParam?[0].type, "token")
		XCTAssertEqual(inst.rest?[0].resource?[3].searchParam?[1].documentation, "which diagnostic discipline/department created the report")
		XCTAssertEqual(inst.rest?[0].resource?[3].searchParam?[1].name, "service")
		XCTAssertEqual(inst.rest?[0].resource?[3].searchParam?[1].type, "token")
		XCTAssertEqual(inst.rest?[0].resource?[3].type, "DiagnosticReport")
		XCTAssertEqual(inst.rest?[0].security?.service?[0].text, "OAuth")
		XCTAssertEqual(inst.software?.name, "ACME PHR Server")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
