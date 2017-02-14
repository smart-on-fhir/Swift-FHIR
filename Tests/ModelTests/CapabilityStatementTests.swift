//
//  CapabilityStatementTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRCapabilityStatement = Models.CapabilityStatement
#else
import SwiftFHIR
typealias SwiftFHIRCapabilityStatement = SwiftFHIR.CapabilityStatement
#endif


class CapabilityStatementTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRCapabilityStatement {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRCapabilityStatement {
		return try SwiftFHIRCapabilityStatement(json: json)
	}
	
	func testCapabilityStatement1() {
		do {
			let instance = try runCapabilityStatement1()
			try runCapabilityStatement1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CapabilityStatement successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCapabilityStatement1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCapabilityStatement {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "capabilitystatement-example.json")
		
		XCTAssertEqual(inst.acceptUnknown, UnknownContentCode(rawValue: "both")!)
		XCTAssertEqual(inst.contact?[0].name, "System Administrator")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "wile@acme.org")
		XCTAssertEqual(inst.copyright, "Copyright © Acme Healthcare and GoodCorp EHR Systems")
		XCTAssertEqual(inst.date?.description, "2012-01-04")
		XCTAssertEqual(inst.description_fhir, "This is the FHIR capability statement for the main EHR at ACME for the private interface - it does not describe the public interface")
		XCTAssertEqual(inst.document?[0].documentation, "Basic rules for all documents in the EHR system")
		XCTAssertEqual(inst.document?[0].mode, DocumentMode(rawValue: "consumer")!)
		XCTAssertEqual(inst.document?[0].profile?.reference, "http://fhir.hl7.org/base/Profilebc054d23-75e1-4dc6-aca5-838b6b1ac81d/_history/b5fdd9fc-b021-4ea1-911a-721a60663796")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.fhirVersion, "1.0.0")
		XCTAssertEqual(inst.format?[0], "xml")
		XCTAssertEqual(inst.format?[1], "json")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.implementation?.description_fhir, "main EHR at ACME")
		XCTAssertEqual(inst.implementation?.url?.absoluteString, "http://10.2.3.4/fhir")
		XCTAssertEqual(inst.implementationGuide?[0].absoluteString, "http://hl7.org/fhir/uslab")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "US")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].display, "United States of America (the)")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.kind, CapabilityStatementKind(rawValue: "instance")!)
		XCTAssertEqual(inst.messaging?[0].documentation, "ADT A08 equivalent for external system notifications")
		XCTAssertEqual(inst.messaging?[0].endpoint?[0].address?.absoluteString, "mllp:10.1.1.10:9234")
		XCTAssertEqual(inst.messaging?[0].endpoint?[0].protocol_fhir?.code, "mllp")
		XCTAssertEqual(inst.messaging?[0].endpoint?[0].protocol_fhir?.system?.absoluteString, "http://hl7.org/fhir/message-transport")
		XCTAssertEqual(inst.messaging?[0].event?[0].category, MessageSignificanceCategory(rawValue: "Consequence")!)
		XCTAssertEqual(inst.messaging?[0].event?[0].code?.code, "admin-notify")
		XCTAssertEqual(inst.messaging?[0].event?[0].code?.system?.absoluteString, "http://hl7.org/fhir/message-type")
		XCTAssertEqual(inst.messaging?[0].event?[0].documentation, "Notification of an update to a patient resource. changing the links is not supported")
		XCTAssertEqual(inst.messaging?[0].event?[0].focus, "Patient")
		XCTAssertEqual(inst.messaging?[0].event?[0].mode, EventCapabilityMode(rawValue: "receiver")!)
		XCTAssertEqual(inst.messaging?[0].event?[0].request?.reference, "StructureDefinition/daf-patient")
		XCTAssertEqual(inst.messaging?[0].event?[0].response?.reference, "StructureDefinition/MessageHeader")
		XCTAssertEqual(inst.messaging?[0].reliableCache, 30)
		XCTAssertEqual(inst.name, "ACME-EHR")
		XCTAssertEqual(inst.patchFormat?[0], "application/xml-patch+xml")
		XCTAssertEqual(inst.patchFormat?[1], "application/json-patch+json")
		XCTAssertEqual(inst.profile?[0].reference, "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient")
		XCTAssertEqual(inst.publisher, "ACME Corporation")
		XCTAssertEqual(inst.purpose, "Main EHR capability statement, published for contracting and operational support")
		XCTAssertEqual(inst.rest?[0].compartment?[0].absoluteString, "http://hl7.org/fhir/compartment/Patient")
		XCTAssertEqual(inst.rest?[0].documentation, "Main FHIR endpoint for acem health")
		XCTAssertEqual(inst.rest?[0].interaction?[0].code, FHIRRestfulInteractions(rawValue: "transaction")!)
		XCTAssertEqual(inst.rest?[0].interaction?[1].code, FHIRRestfulInteractions(rawValue: "history-system")!)
		XCTAssertEqual(inst.rest?[0].mode, RestfulCapabilityMode(rawValue: "server")!)
		XCTAssertEqual(inst.rest?[0].resource?[0].conditionalCreate, true)
		XCTAssertEqual(inst.rest?[0].resource?[0].conditionalDelete, ConditionalDeleteStatus(rawValue: "not-supported")!)
		XCTAssertEqual(inst.rest?[0].resource?[0].conditionalRead, ConditionalReadStatus(rawValue: "full-support")!)
		XCTAssertEqual(inst.rest?[0].resource?[0].conditionalUpdate, false)
		XCTAssertEqual(inst.rest?[0].resource?[0].documentation, "This server does not let the clients create identities.")
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[0].code, FHIRRestfulInteractions(rawValue: "read")!)
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[1].code, FHIRRestfulInteractions(rawValue: "vread")!)
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[1].documentation, "Only supported for patient records since 12-Dec 2012")
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[2].code, FHIRRestfulInteractions(rawValue: "update")!)
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[3].code, FHIRRestfulInteractions(rawValue: "history-instance")!)
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[4].code, FHIRRestfulInteractions(rawValue: "create")!)
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[5].code, FHIRRestfulInteractions(rawValue: "history-type")!)
		XCTAssertEqual(inst.rest?[0].resource?[0].profile?.reference, "http://fhir.hl7.org/base/StructureDefinition/7896271d-57f6-4231-89dc-dcc91eab2416")
		XCTAssertEqual(inst.rest?[0].resource?[0].readHistory, true)
		XCTAssertEqual(inst.rest?[0].resource?[0].searchInclude?[0], "Organization")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[0].definition?.absoluteString, "http://hl7.org/fhir/SearchParameter/Patient-identifier")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[0].documentation, "Only supports search by institution MRN")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[0].name, "identifier")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[0].type, SearchParamType(rawValue: "token")!)
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[1].definition?.absoluteString, "http://hl7.org/fhir/SearchParameter/Patient-careprovider")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[1].name, "careprovider")
		XCTAssertEqual(inst.rest?[0].resource?[0].searchParam?[1].type, SearchParamType(rawValue: "reference")!)
		XCTAssertEqual(inst.rest?[0].resource?[0].searchRevInclude?[0], "Person")
		XCTAssertEqual(inst.rest?[0].resource?[0].type, "Patient")
		XCTAssertEqual(inst.rest?[0].resource?[0].updateCreate, false)
		XCTAssertEqual(inst.rest?[0].resource?[0].versioning, ResourceVersionPolicy(rawValue: "versioned-update")!)
		XCTAssertEqual(inst.rest?[0].security?.certificate?[0].blob, Base64Binary(value: "IHRoaXMgYmxvYiBpcyBub3QgdmFsaWQ="))
		XCTAssertEqual(inst.rest?[0].security?.certificate?[0].type, "application/jwt")
		XCTAssertEqual(inst.rest?[0].security?.cors, true)
		XCTAssertEqual(inst.rest?[0].security?.description_fhir, "See Smart on FHIR documentation")
		XCTAssertEqual(inst.rest?[0].security?.service?[0].coding?[0].code, "SMART-on-FHIR")
		XCTAssertEqual(inst.rest?[0].security?.service?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/restful-security-service")
		XCTAssertEqual(inst.software?.name, "EHR")
		XCTAssertEqual(inst.software?.releaseDate?.description, "2012-01-04")
		XCTAssertEqual(inst.software?.version, "0.00.020.2134")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "ACME EHR capability statement")
		XCTAssertEqual(inst.url?.absoluteString, "68D043B5-9ECF-4559-A57A-396E0D452311")
		XCTAssertEqual(inst.useContext?[0].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[0].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].code, "positive")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/variant-state")
		XCTAssertEqual(inst.version, "20130510")
		
		return inst
	}
	
	func testCapabilityStatement2() {
		do {
			let instance = try runCapabilityStatement2()
			try runCapabilityStatement2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CapabilityStatement successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCapabilityStatement2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCapabilityStatement {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "capabilitystatement-phr-example.json")
		
		XCTAssertEqual(inst.acceptUnknown, UnknownContentCode(rawValue: "no")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2013-06-18")
		XCTAssertEqual(inst.description_fhir, "Prototype Capability Statement for September 2013 Connectathon")
		XCTAssertEqual(inst.fhirVersion, "1.0.0")
		XCTAssertEqual(inst.format?[0], "json")
		XCTAssertEqual(inst.format?[1], "xml")
		XCTAssertEqual(inst.id, "phr")
		XCTAssertEqual(inst.kind, CapabilityStatementKind(rawValue: "capability")!)
		XCTAssertEqual(inst.name, "PHR Template")
		XCTAssertEqual(inst.publisher, "FHIR Project")
		XCTAssertEqual(inst.rest?[0].documentation, "Protoype server Capability Statement for September 2013 Connectathon")
		XCTAssertEqual(inst.rest?[0].mode, RestfulCapabilityMode(rawValue: "server")!)
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[0].code, FHIRRestfulInteractions(rawValue: "read")!)
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[1].code, FHIRRestfulInteractions(rawValue: "search-type")!)
		XCTAssertEqual(inst.rest?[0].resource?[0].interaction?[1].documentation, "When a client searches patients with no search criteria, they get a list of all patients they have access too. Servers may elect to offer additional search parameters, but this is not required")
		XCTAssertEqual(inst.rest?[0].resource?[0].type, "Patient")
		XCTAssertEqual(inst.rest?[0].resource?[1].interaction?[0].code, FHIRRestfulInteractions(rawValue: "read")!)
		XCTAssertEqual(inst.rest?[0].resource?[1].interaction?[1].code, FHIRRestfulInteractions(rawValue: "search-type")!)
		XCTAssertEqual(inst.rest?[0].resource?[1].searchParam?[0].documentation, "_id parameter always supported. For the connectathon, servers may elect which search parameters are supported")
		XCTAssertEqual(inst.rest?[0].resource?[1].searchParam?[0].name, "_id")
		XCTAssertEqual(inst.rest?[0].resource?[1].searchParam?[0].type, SearchParamType(rawValue: "token")!)
		XCTAssertEqual(inst.rest?[0].resource?[1].type, "DocumentReference")
		XCTAssertEqual(inst.rest?[0].resource?[2].interaction?[0].code, FHIRRestfulInteractions(rawValue: "read")!)
		XCTAssertEqual(inst.rest?[0].resource?[2].interaction?[1].code, FHIRRestfulInteractions(rawValue: "search-type")!)
		XCTAssertEqual(inst.rest?[0].resource?[2].searchParam?[0].documentation, "Standard _id parameter")
		XCTAssertEqual(inst.rest?[0].resource?[2].searchParam?[0].name, "_id")
		XCTAssertEqual(inst.rest?[0].resource?[2].searchParam?[0].type, SearchParamType(rawValue: "token")!)
		XCTAssertEqual(inst.rest?[0].resource?[2].type, "Condition")
		XCTAssertEqual(inst.rest?[0].resource?[3].interaction?[0].code, FHIRRestfulInteractions(rawValue: "read")!)
		XCTAssertEqual(inst.rest?[0].resource?[3].interaction?[1].code, FHIRRestfulInteractions(rawValue: "search-type")!)
		XCTAssertEqual(inst.rest?[0].resource?[3].searchParam?[0].documentation, "Standard _id parameter")
		XCTAssertEqual(inst.rest?[0].resource?[3].searchParam?[0].name, "_id")
		XCTAssertEqual(inst.rest?[0].resource?[3].searchParam?[0].type, SearchParamType(rawValue: "token")!)
		XCTAssertEqual(inst.rest?[0].resource?[3].searchParam?[1].documentation, "which diagnostic discipline/department created the report")
		XCTAssertEqual(inst.rest?[0].resource?[3].searchParam?[1].name, "service")
		XCTAssertEqual(inst.rest?[0].resource?[3].searchParam?[1].type, SearchParamType(rawValue: "token")!)
		XCTAssertEqual(inst.rest?[0].resource?[3].type, "DiagnosticReport")
		XCTAssertEqual(inst.rest?[0].security?.service?[0].text, "OAuth")
		XCTAssertEqual(inst.software?.name, "ACME PHR Server")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
