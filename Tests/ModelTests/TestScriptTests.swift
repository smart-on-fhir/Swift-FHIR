//
//  TestScriptTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class TestScriptTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.TestScript {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.TestScript {
		let instance = SwiftFHIR.TestScript(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testTestScript1() {
		do {
			let instance = try runTestScript1()
			try runTestScript1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test TestScript successfully, but threw")
		}
	}
	
	@discardableResult
	func runTestScript1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.TestScript {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "testscript-example-multiserver.json")
		
		XCTAssertEqual(inst.description_fhir, "Multiserver Test Script")
		XCTAssertEqual(inst.fixture?[0].id, "F1")
		XCTAssertEqual(inst.fixture?[0].resource?.reference, "Patient/example")
		XCTAssertEqual(inst.id, "multiserver")
		XCTAssertTrue(inst.multiserver ?? false)
		XCTAssertEqual(inst.name, "Multiserver Test Script")
		XCTAssertEqual(inst.setup?.action?[0].operation?.contentType, "xml")
		XCTAssertEqual(inst.setup?.action?[0].operation?.destination, 0)
		XCTAssertEqual(inst.setup?.action?[0].operation?.sourceId, "F1")
		XCTAssertEqual(inst.setup?.action?[0].operation?.type?.code, "create")
		XCTAssertEqual(inst.setup?.metadata?.capability?[0].conformance?.reference, "Conformance/example")
		XCTAssertEqual(inst.setup?.metadata?.capability?[0].description_fhir, "Patient Create Operation")
		XCTAssertEqual(inst.setup?.metadata?.capability?[0].link?[0].absoluteString, "http://hl7.org/implement/standards/FHIR-Develop/http.html#create")
		XCTAssertTrue(inst.setup?.metadata?.capability?[0].required ?? false)
		XCTAssertEqual(inst.setup?.metadata?.link?[0].description_fhir, "FHIR Patient")
		XCTAssertEqual(inst.setup?.metadata?.link?[0].url?.absoluteString, "http://hl7.org/implement/standards/FHIR-Develop/patient.html")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.teardown?.action?[0].operation?.destination, 0)
		XCTAssertEqual(inst.teardown?.action?[0].operation?.targetId, "F1")
		XCTAssertEqual(inst.teardown?.action?[0].operation?.type?.code, "delete")
		XCTAssertEqual(inst.teardown?.action?[1].operation?.destination, 1)
		XCTAssertEqual(inst.teardown?.action?[1].operation?.targetId, "F1")
		XCTAssertEqual(inst.teardown?.action?[1].operation?.type?.code, "delete")
		XCTAssertEqual(inst.test?[0].action?[0].operation?.destination, 0)
		XCTAssertEqual(inst.test?[0].action?[0].operation?.responseId, "R1")
		XCTAssertEqual(inst.test?[0].action?[0].operation?.targetId, "F1")
		XCTAssertEqual(inst.test?[0].action?[0].operation?.type?.code, "read")
		XCTAssertEqual(inst.test?[0].action?[1].assert?.response, "okay")
		XCTAssertEqual(inst.test?[0].action?[2].assert?.headerField, "Last-Modified")
		XCTAssertEqual(inst.test?[0].action?[2].assert?.operator_fhir, "notEmpty")
		XCTAssertEqual(inst.test?[0].action?[3].assert?.resource, "Patient")
		XCTAssertEqual(inst.test?[0].action?[4].assert?.minimumId, "F1")
		XCTAssertEqual(inst.test?[0].description_fhir, "Read the patient from server 0.")
		XCTAssertEqual(inst.test?[0].id, "READ01")
		XCTAssertEqual(inst.test?[0].metadata?.capability?[0].conformance?.reference, "Conformance/example")
		XCTAssertEqual(inst.test?[0].metadata?.capability?[0].description_fhir, "Patient Read Operation")
		XCTAssertEqual(inst.test?[0].metadata?.capability?[0].link?[0].absoluteString, "http://hl7.org/implement/standards/FHIR-Develop/http.html#read")
		XCTAssertTrue(inst.test?[0].metadata?.capability?[0].validated ?? false)
		XCTAssertEqual(inst.test?[0].name, "Read Patient")
		XCTAssertEqual(inst.test?[1].action?[0].operation?.destination, 1)
		XCTAssertEqual(inst.test?[1].action?[0].operation?.sourceId, "R1")
		XCTAssertEqual(inst.test?[1].action?[0].operation?.type?.code, "create")
		XCTAssertEqual(inst.test?[1].action?[1].assert?.response, "okay")
		XCTAssertEqual(inst.test?[1].action?[2].operation?.destination, 1)
		XCTAssertEqual(inst.test?[1].action?[2].operation?.responseId, "R2")
		XCTAssertEqual(inst.test?[1].action?[2].operation?.targetId, "R1")
		XCTAssertEqual(inst.test?[1].action?[2].operation?.type?.code, "read")
		XCTAssertEqual(inst.test?[1].action?[3].assert?.response, "okay")
		XCTAssertEqual(inst.test?[1].action?[4].assert?.headerField, "Last-Modified")
		XCTAssertEqual(inst.test?[1].action?[4].assert?.operator_fhir, "notEmpty")
		XCTAssertEqual(inst.test?[1].action?[5].assert?.resource, "Patient")
		XCTAssertEqual(inst.test?[1].action?[6].assert?.minimumId, "F1")
		XCTAssertEqual(inst.test?[1].action?[7].assert?.minimumId, "R1")
		XCTAssertEqual(inst.test?[1].description_fhir, "Write the patient read from server 0 to server 1.")
		XCTAssertEqual(inst.test?[1].id, "WRITE01")
		XCTAssertEqual(inst.test?[1].metadata?.capability?[0].conformance?.reference, "Conformance/example")
		XCTAssertEqual(inst.test?[1].metadata?.capability?[0].description_fhir, "Patient Create Operation")
		XCTAssertEqual(inst.test?[1].metadata?.capability?[0].link?[0].absoluteString, "http://hl7.org/implement/standards/FHIR-Develop/http.html#create")
		XCTAssertTrue(inst.test?[1].metadata?.capability?[0].validated ?? false)
		XCTAssertEqual(inst.test?[1].metadata?.capability?[1].conformance?.reference, "Conformance/example")
		XCTAssertEqual(inst.test?[1].metadata?.capability?[1].description_fhir, "Patient Read Operation")
		XCTAssertEqual(inst.test?[1].metadata?.capability?[1].link?[0].absoluteString, "http://hl7.org/implement/standards/FHIR-Develop/http.html#read")
		XCTAssertTrue(inst.test?[1].metadata?.capability?[1].validated ?? false)
		XCTAssertEqual(inst.test?[1].name, "Write Patient")
		XCTAssertEqual(inst.test?[2].action?[0].operation?.destination, 0)
		XCTAssertEqual(inst.test?[2].action?[0].operation?.sourceId, "R2")
		XCTAssertEqual(inst.test?[2].action?[0].operation?.targetId, "R1")
		XCTAssertEqual(inst.test?[2].action?[0].operation?.type?.code, "update")
		XCTAssertEqual(inst.test?[2].action?[1].assert?.response, "okay")
		XCTAssertEqual(inst.test?[2].action?[2].operation?.destination, 0)
		XCTAssertEqual(inst.test?[2].action?[2].operation?.responseId, "R3")
		XCTAssertEqual(inst.test?[2].action?[2].operation?.targetId, "R1")
		XCTAssertEqual(inst.test?[2].action?[2].operation?.type?.code, "read")
		XCTAssertEqual(inst.test?[2].action?[3].assert?.response, "okay")
		XCTAssertEqual(inst.test?[2].action?[4].assert?.headerField, "Last-Modified")
		XCTAssertEqual(inst.test?[2].action?[4].assert?.operator_fhir, "notEmpty")
		XCTAssertEqual(inst.test?[2].action?[5].assert?.resource, "Patient")
		XCTAssertEqual(inst.test?[2].action?[6].assert?.minimumId, "F1")
		XCTAssertEqual(inst.test?[2].action?[7].assert?.minimumId, "R1")
		XCTAssertEqual(inst.test?[2].action?[8].assert?.minimumId, "R2")
		XCTAssertEqual(inst.test?[2].description_fhir, "Update the patient on server 0 with the one read from server 1.")
		XCTAssertEqual(inst.test?[2].id, "UPDATE01")
		XCTAssertEqual(inst.test?[2].metadata?.capability?[0].conformance?.reference, "Conformance/example")
		XCTAssertEqual(inst.test?[2].metadata?.capability?[0].description_fhir, "Patient Update Operation")
		XCTAssertEqual(inst.test?[2].metadata?.capability?[0].link?[0].absoluteString, "http://hl7.org/implement/standards/FHIR-Develop/http.html#update")
		XCTAssertTrue(inst.test?[2].metadata?.capability?[0].validated ?? false)
		XCTAssertEqual(inst.test?[2].name, "Update Patient")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/TestScript/multiserver")
		
		return inst
	}
	
	func testTestScript2() {
		do {
			let instance = try runTestScript2()
			try runTestScript2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test TestScript successfully, but threw")
		}
	}
	
	@discardableResult
	func runTestScript2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.TestScript {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "testscript-example.json")
		
		XCTAssertEqual(inst.contact?[0].name, "Support")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "email")
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, "temp")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "support@gmail.com")
		XCTAssertEqual(inst.copyright, "© HL7.org 2011+")
		XCTAssertEqual(inst.date?.description, "2015-08-31")
		XCTAssertEqual(inst.description_fhir, "Example Test Script")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertFalse(inst.fixture?[0].autocreate ?? true)
		XCTAssertFalse(inst.fixture?[0].autodelete ?? true)
		XCTAssertEqual(inst.fixture?[0].id, "F1")
		XCTAssertEqual(inst.fixture?[0].resource?.display, "Patient resource")
		XCTAssertEqual(inst.fixture?[0].resource?.reference, "Patient/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?.value, "urn:oid:1.3.6.1.4.1.21367.2005.3.7.9876")
		XCTAssertEqual(inst.metadata?.capability?[0].conformance?.reference, "Conformance/example")
		XCTAssertEqual(inst.metadata?.capability?[0].description_fhir, "Patient Create, Read, and Update Operations")
		XCTAssertEqual(inst.metadata?.capability?[0].destination, 1)
		XCTAssertEqual(inst.metadata?.capability?[0].link?[0].absoluteString, "http://hl7.org/implement/standards/FHIR-Develop/http.html#create")
		XCTAssertEqual(inst.metadata?.capability?[0].link?[1].absoluteString, "http://hl7.org/implement/standards/FHIR-Develop/http.html#read")
		XCTAssertEqual(inst.metadata?.capability?[0].link?[2].absoluteString, "http://hl7.org/implement/standards/FHIR-Develop/http.html#update")
		XCTAssertTrue(inst.metadata?.capability?[0].required ?? false)
		XCTAssertEqual(inst.name, "Test Script 1")
		XCTAssertEqual(inst.profile?[0].id, "patient-profile")
		XCTAssertEqual(inst.profile?[0].reference, "http://hl7.org/fhir/StructureDefinition/Patient")
		XCTAssertEqual(inst.publisher, "HL7")
		XCTAssertEqual(inst.requirements, "Patient Create, Read, and Update Operations")
		XCTAssertEqual(inst.setup?.action?[0].operation?.accept, "json")
		XCTAssertEqual(inst.setup?.action?[0].operation?.description_fhir, "Create patient resource on test server")
		XCTAssertEqual(inst.setup?.action?[0].operation?.label, "SetupPatient")
		XCTAssertEqual(inst.setup?.action?[0].operation?.responseId, "create-response")
		XCTAssertEqual(inst.setup?.action?[0].operation?.sourceId, "F1")
		XCTAssertEqual(inst.setup?.action?[0].operation?.type?.code, "create")
		XCTAssertEqual(inst.setup?.action?[1].assert?.direction, "request")
		XCTAssertEqual(inst.setup?.action?[1].assert?.responseCode, "201")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertFalse(inst.test?[0].action?[0].operation?.encodeRequestUrl ?? true)
		XCTAssertEqual(inst.test?[0].action?[0].operation?.responseId, "F1-read")
		XCTAssertEqual(inst.test?[0].action?[0].operation?.targetId, "F1")
		XCTAssertEqual(inst.test?[0].action?[0].operation?.type?.code, "read")
		XCTAssertEqual(inst.test?[0].action?[1].assert?.description_fhir, "Test for OK response")
		XCTAssertEqual(inst.test?[0].action?[1].assert?.direction, "request")
		XCTAssertEqual(inst.test?[0].action?[1].assert?.label, "ReadOK")
		XCTAssertEqual(inst.test?[0].action?[1].assert?.response, "okay")
		XCTAssertEqual(inst.test?[0].action?[2].assert?.headerField, "Last-Modified")
		XCTAssertEqual(inst.test?[0].action?[2].assert?.operator_fhir, "notEmpty")
		XCTAssertTrue(inst.test?[0].action?[2].assert?.warningOnly ?? false)
		XCTAssertEqual(inst.test?[0].action?[3].assert?.resource, "Patient")
		XCTAssertEqual(inst.test?[0].action?[4].assert?.validateProfileId, "patient-profile")
		XCTAssertEqual(inst.test?[0].action?[5].assert?.operator_fhir, "equals")
		XCTAssertEqual(inst.test?[0].action?[5].assert?.path, "fhir:Patient/fhir:name/fhir:family/@value")
		XCTAssertEqual(inst.test?[0].action?[5].assert?.value, "Chalmers")
		XCTAssertEqual(inst.test?[0].action?[6].assert?.operator_fhir, "equals")
		XCTAssertEqual(inst.test?[0].action?[6].assert?.path, "fhir:Patient/fhir:name/fhir:family/@value")
		XCTAssertEqual(inst.test?[0].action?[6].assert?.sourceId, "F1")
		XCTAssertEqual(inst.test?[0].action?[6].assert?.value, "Chalmers")
		XCTAssertEqual(inst.test?[0].action?[7].assert?.compareToSourceId, "F1-read")
		XCTAssertEqual(inst.test?[0].action?[7].assert?.compareToSourcePath, "fhir:Patient/fhir:name/fhir:family/@value")
		XCTAssertEqual(inst.test?[0].action?[7].assert?.operator_fhir, "equals")
		XCTAssertEqual(inst.test?[0].action?[7].assert?.path, "fhir:Patient/fhir:name/fhir:family/@value")
		XCTAssertEqual(inst.test?[0].action?[8].assert?.compareToSourceId, "F1-read")
		XCTAssertEqual(inst.test?[0].action?[8].assert?.compareToSourcePath, "fhir:Patient/fhir:name/fhir:family/@value")
		XCTAssertEqual(inst.test?[0].action?[8].assert?.path, "fhir:Patient/fhir:name/fhir:family/@value")
		XCTAssertEqual(inst.test?[0].action?[8].assert?.sourceId, "F1")
		XCTAssertEqual(inst.test?[0].action?[9].assert?.minimumId, "F1-min")
		XCTAssertEqual(inst.test?[0].description_fhir, "Read a patient and validate response.")
		XCTAssertEqual(inst.test?[0].id, "READ01")
		XCTAssertEqual(inst.test?[0].name, "Read Patient")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/TestScript/example")
		XCTAssertEqual(inst.useContext?[0].coding?[0].code, "US")
		XCTAssertEqual(inst.useContext?[0].coding?[0].display, "United States of America (the)")
		XCTAssertEqual(inst.useContext?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.version, "1.0")
		
		return inst
	}
}
