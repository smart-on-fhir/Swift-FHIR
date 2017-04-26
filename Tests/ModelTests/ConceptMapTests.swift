//
//  ConceptMapTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.1.11917 on 2017-04-25.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRConceptMap = Models.ConceptMap
#else
import SwiftFHIR
typealias SwiftFHIRConceptMap = SwiftFHIR.ConceptMap
#endif


class ConceptMapTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRConceptMap {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRConceptMap {
		return try SwiftFHIRConceptMap(json: json)
	}
	
	func testConceptMap1() {
		do {
			let instance = try runConceptMap1()
			try runConceptMap1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ConceptMap successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runConceptMap1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRConceptMap {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "conceptmap-example-2.json")
		
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team (example)")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2012-06-13")
		XCTAssertEqual(inst.description_fhir, "An example mapping")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.group?[0].element?[0].code, "code")
		XCTAssertEqual(inst.group?[0].element?[0].display, "Example Code")
		XCTAssertEqual(inst.group?[0].element?[0].target?[0].code, "code2")
		XCTAssertEqual(inst.group?[0].element?[0].target?[0].dependsOn?[0].code, "some-code")
		XCTAssertEqual(inst.group?[0].element?[0].target?[0].dependsOn?[0].display, "Something Coded")
		XCTAssertEqual(inst.group?[0].element?[0].target?[0].dependsOn?[0].property?.absoluteString, "http://example.org/fhir/DataElement/example")
		XCTAssertEqual(inst.group?[0].element?[0].target?[0].dependsOn?[0].system?.absoluteString, "http://example.org/fhir/example3")
		XCTAssertEqual(inst.group?[0].element?[0].target?[0].display, "Some Example Code")
		XCTAssertEqual(inst.group?[0].element?[0].target?[0].equivalence, ConceptMapEquivalence(rawValue: "equivalent")!)
		XCTAssertEqual(inst.group?[0].source?.absoluteString, "http://example.org/fhir/example1")
		XCTAssertEqual(inst.group?[0].target?.absoluteString, "http://example.org/fhir/example2")
		XCTAssertEqual(inst.group?[0].unmapped?.mode, ConceptMapGroupUnmappedMode(rawValue: "other-map")!)
		XCTAssertEqual(inst.group?[0].unmapped?.url?.absoluteString, "http://example.org/fhir/ConceptMap/map2")
		XCTAssertEqual(inst.id, "example2")
		XCTAssertEqual(inst.name, "FHIR-exanple-2")
		XCTAssertEqual(inst.publisher, "HL7, Inc")
		XCTAssertEqual(inst.purpose, "To illustrate mapping features")
		XCTAssertEqual(inst.sourceUri?.absoluteString, "http://example.org/fhir/example1")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.targetUri?.absoluteString, "http://example.org/fhir/example2")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "FHIR Example 2")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ConceptMap/example2")
		
		return inst
	}
	
	func testConceptMap2() {
		do {
			let instance = try runConceptMap2()
			try runConceptMap2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ConceptMap successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runConceptMap2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRConceptMap {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "conceptmap-example-specimen-type.json")
		
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.contact?[1].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[1].telecom?[0].value, "http://www.phconnect.org/group/laboratorymessagingcommunityofpractice/forum/attachment/download?id=3649725%3AUploadedFile%3A145786")
		XCTAssertEqual(inst.date?.description, "2013-07-25")
		XCTAssertEqual(inst.experimental, false)
		XCTAssertEqual(inst.group?[0].element?[0].code, "ACNE")
		XCTAssertEqual(inst.group?[0].element?[0].target?[0].code, "309068002")
		XCTAssertEqual(inst.group?[0].element?[1].code, "ACNFLD")
		XCTAssertEqual(inst.group?[0].element?[1].target?[0].code, "119323008")
		XCTAssertEqual(inst.group?[0].element?[1].target?[0].comment, "HL7 term is a historical term. mapped to Pus")
		XCTAssertEqual(inst.group?[0].element?[1].target?[0].product?[0].code, "47002008")
		XCTAssertEqual(inst.group?[0].element?[1].target?[0].product?[0].property?.absoluteString, "TypeModifier")
		XCTAssertEqual(inst.group?[0].element?[1].target?[0].product?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.group?[0].element?[2].code, "AIRS")
		XCTAssertEqual(inst.group?[0].element?[2].target?[0].code, "446302006")
		XCTAssertEqual(inst.group?[0].element?[3].code, "ALL")
		XCTAssertEqual(inst.group?[0].element?[3].target?[0].code, "119376003")
		XCTAssertEqual(inst.group?[0].element?[3].target?[0].product?[0].code, "7970006")
		XCTAssertEqual(inst.group?[0].element?[3].target?[0].product?[0].property?.absoluteString, "TypeModifier")
		XCTAssertEqual(inst.group?[0].element?[3].target?[0].product?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.group?[0].element?[4].code, "AMP")
		XCTAssertEqual(inst.group?[0].element?[4].target?[0].code, "408654003")
		XCTAssertEqual(inst.group?[0].element?[4].target?[0].product?[0].code, "81723002")
		XCTAssertEqual(inst.group?[0].element?[4].target?[0].product?[0].property?.absoluteString, "http://snomed.info/id/246380002")
		XCTAssertEqual(inst.group?[0].element?[4].target?[0].product?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.group?[0].element?[5].code, "ANGI")
		XCTAssertEqual(inst.group?[0].element?[5].target?[0].code, "119312009")
		XCTAssertEqual(inst.group?[0].element?[5].target?[0].comment, "TBD in detail")
		XCTAssertEqual(inst.group?[0].element?[6].code, "ARTC")
		XCTAssertEqual(inst.group?[0].element?[6].target?[0].code, "119312009")
		XCTAssertEqual(inst.group?[0].element?[6].target?[0].comment, "TBD in detail")
		XCTAssertEqual(inst.group?[0].element?[7].code, "ASERU")
		XCTAssertEqual(inst.group?[0].element?[7].target?[0].comment, "pending")
		XCTAssertEqual(inst.group?[0].element?[7].target?[0].equivalence, ConceptMapEquivalence(rawValue: "unmatched")!)
		XCTAssertEqual(inst.group?[0].element?[8].code, "ASP")
		XCTAssertEqual(inst.group?[0].element?[8].target?[0].code, "119295008")
		XCTAssertEqual(inst.group?[0].element?[8].target?[0].product?[0].code, "14766002")
		XCTAssertEqual(inst.group?[0].element?[8].target?[0].product?[0].property?.absoluteString, "http://snomed.info/id/246380002")
		XCTAssertEqual(inst.group?[0].element?[8].target?[0].product?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.group?[0].element?[9].code, "ATTE")
		XCTAssertEqual(inst.group?[0].element?[9].target?[0].comment, "TBD")
		XCTAssertEqual(inst.group?[0].element?[9].target?[0].equivalence, ConceptMapEquivalence(rawValue: "unmatched")!)
		XCTAssertEqual(inst.group?[0].source?.absoluteString, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.group?[0].target?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "102")
		XCTAssertEqual(inst.name, "Specimen mapping from v2 table 0487 to SNOMED CT")
		XCTAssertEqual(inst.publisher, "FHIR project team (original source: LabMCoP)")
		XCTAssertEqual(inst.sourceReference?.reference, "http://hl7.org/fhir/ValueSet/v2-0487")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.targetReference?.reference, "http://snomed.info/id?fhir_vs")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ConceptMap/102")
		XCTAssertEqual(inst.version, "20130725")
		
		return inst
	}
	
	func testConceptMap3() {
		do {
			let instance = try runConceptMap3()
			try runConceptMap3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ConceptMap successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runConceptMap3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRConceptMap {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "conceptmap-example.json")
		
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team (example)")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.copyright, "Creative Commons 0")
		XCTAssertEqual(inst.date?.description, "2012-06-13")
		XCTAssertEqual(inst.description_fhir, "A mapping between the FHIR and HL7 v3 AddressUse Code systems")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.group?[0].element?[0].code, "home")
		XCTAssertEqual(inst.group?[0].element?[0].display, "home")
		XCTAssertEqual(inst.group?[0].element?[0].target?[0].code, "H")
		XCTAssertEqual(inst.group?[0].element?[0].target?[0].display, "home")
		XCTAssertEqual(inst.group?[0].element?[1].code, "work")
		XCTAssertEqual(inst.group?[0].element?[1].display, "work")
		XCTAssertEqual(inst.group?[0].element?[1].target?[0].code, "WP")
		XCTAssertEqual(inst.group?[0].element?[1].target?[0].display, "work place")
		XCTAssertEqual(inst.group?[0].element?[2].code, "temp")
		XCTAssertEqual(inst.group?[0].element?[2].display, "temp")
		XCTAssertEqual(inst.group?[0].element?[2].target?[0].code, "TMP")
		XCTAssertEqual(inst.group?[0].element?[2].target?[0].display, "temporary address")
		XCTAssertEqual(inst.group?[0].element?[3].code, "old")
		XCTAssertEqual(inst.group?[0].element?[3].display, "old")
		XCTAssertEqual(inst.group?[0].element?[3].target?[0].code, "BAD")
		XCTAssertEqual(inst.group?[0].element?[3].target?[0].comment, "In the HL7 v3 AD, old is handled by the usablePeriod element, but you have to provide a time, there's no simple equivalent of flagging an address as old")
		XCTAssertEqual(inst.group?[0].element?[3].target?[0].display, "bad address")
		XCTAssertEqual(inst.group?[0].element?[3].target?[0].equivalence, ConceptMapEquivalence(rawValue: "disjoint")!)
		XCTAssertEqual(inst.group?[0].source?.absoluteString, "http://hl7.org/fhir/address-use")
		XCTAssertEqual(inst.group?[0].target?.absoluteString, "http://hl7.org/fhir/v3/AddressUse")
		XCTAssertEqual(inst.group?[0].unmapped?.code, "temp")
		XCTAssertEqual(inst.group?[0].unmapped?.display, "temp")
		XCTAssertEqual(inst.group?[0].unmapped?.mode, ConceptMapGroupUnmappedMode(rawValue: "fixed")!)
		XCTAssertEqual(inst.id, "101")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?.value, "urn:uuid:53cd62ee-033e-414c-9f58-3ca97b5ffc3b")
		XCTAssertEqual(inst.name, "FHIR-v3-Address-Use")
		XCTAssertEqual(inst.publisher, "HL7, Inc")
		XCTAssertEqual(inst.purpose, "To help implementers map from HL7 v3/CDA to FHIR")
		XCTAssertEqual(inst.sourceUri?.absoluteString, "http://hl7.org/fhir/ValueSet/address-use")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.targetUri?.absoluteString, "http://hl7.org/fhir/ValueSet/v3-AddressUse")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "FHIR/v3 Address Use Mapping")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ConceptMap/101")
		XCTAssertEqual(inst.useContext?[0].code?.code, "venue")
		XCTAssertEqual(inst.useContext?[0].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.text, "for CDA Usage")
		XCTAssertEqual(inst.version, "20120613")
		
		return inst
	}
}
