//
//  ConceptMapTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ConceptMapTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ConceptMap {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.ConceptMap {
		let instance = SwiftFHIR.ConceptMap(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testConceptMap1() {
		do {
			let instance = try runConceptMap1()
			try runConceptMap1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ConceptMap successfully, but threw")
		}
	}
	
	@discardableResult
	func runConceptMap1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ConceptMap {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "conceptmap-example-specimen-type.json")
		
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "other")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.contact?[1].telecom?[0].system, "other")
		XCTAssertEqual(inst.contact?[1].telecom?[0].value, "http://www.phconnect.org/group/laboratorymessagingcommunityofpractice/forum/attachment/download?id=3649725%3AUploadedFile%3A145786")
		XCTAssertEqual(inst.date?.description, "2013-07-25")
		XCTAssertEqual(inst.element?[0].code, "ACNE")
		XCTAssertEqual(inst.element?[0].codeSystem?.absoluteString, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element?[0].target?[0].code, "309068002")
		XCTAssertEqual(inst.element?[0].target?[0].codeSystem?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.element?[0].target?[0].equivalence, "equivalent")
		XCTAssertEqual(inst.element?[1].code, "ACNFLD")
		XCTAssertEqual(inst.element?[1].codeSystem?.absoluteString, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element?[1].target?[0].code, "119323008")
		XCTAssertEqual(inst.element?[1].target?[0].codeSystem?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.element?[1].target?[0].comments, "HL7 term is a historical term. mapped to Pus")
		XCTAssertEqual(inst.element?[1].target?[0].equivalence, "equivalent")
		XCTAssertEqual(inst.element?[1].target?[0].product?[0].code, "47002008")
		XCTAssertEqual(inst.element?[1].target?[0].product?[0].codeSystem?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.element?[1].target?[0].product?[0].element?.absoluteString, "http://hl7.org/fhir/v2/element/SPM-5")
		XCTAssertEqual(inst.element?[2].code, "AIRS")
		XCTAssertEqual(inst.element?[2].codeSystem?.absoluteString, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element?[2].target?[0].code, "446302006")
		XCTAssertEqual(inst.element?[2].target?[0].codeSystem?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.element?[2].target?[0].equivalence, "equivalent")
		XCTAssertEqual(inst.element?[3].code, "ALL")
		XCTAssertEqual(inst.element?[3].codeSystem?.absoluteString, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element?[3].target?[0].code, "119376003")
		XCTAssertEqual(inst.element?[3].target?[0].codeSystem?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.element?[3].target?[0].equivalence, "equivalent")
		XCTAssertEqual(inst.element?[3].target?[0].product?[0].code, "7970006")
		XCTAssertEqual(inst.element?[3].target?[0].product?[0].codeSystem?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.element?[3].target?[0].product?[0].element?.absoluteString, "http://hl7.org/fhir/v2/element/SPM-5")
		XCTAssertEqual(inst.element?[4].code, "AMP")
		XCTAssertEqual(inst.element?[4].codeSystem?.absoluteString, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element?[4].target?[0].code, "408654003")
		XCTAssertEqual(inst.element?[4].target?[0].codeSystem?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.element?[4].target?[0].equivalence, "equivalent")
		XCTAssertEqual(inst.element?[4].target?[0].product?[0].code, "81723002")
		XCTAssertEqual(inst.element?[4].target?[0].product?[0].codeSystem?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.element?[4].target?[0].product?[0].element?.absoluteString, "http://hl7.org/fhir/v2/element/SPM-7")
		XCTAssertEqual(inst.element?[5].code, "ANGI")
		XCTAssertEqual(inst.element?[5].codeSystem?.absoluteString, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element?[5].target?[0].code, "119312009")
		XCTAssertEqual(inst.element?[5].target?[0].codeSystem?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.element?[5].target?[0].comments, "TBD in detail")
		XCTAssertEqual(inst.element?[5].target?[0].equivalence, "equivalent")
		XCTAssertEqual(inst.element?[6].code, "ARTC")
		XCTAssertEqual(inst.element?[6].codeSystem?.absoluteString, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element?[6].target?[0].code, "119312009")
		XCTAssertEqual(inst.element?[6].target?[0].codeSystem?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.element?[6].target?[0].comments, "TBD in detail")
		XCTAssertEqual(inst.element?[6].target?[0].equivalence, "equivalent")
		XCTAssertEqual(inst.element?[7].code, "ASERU")
		XCTAssertEqual(inst.element?[7].codeSystem?.absoluteString, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element?[7].target?[0].codeSystem?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.element?[7].target?[0].comments, "pending")
		XCTAssertEqual(inst.element?[7].target?[0].equivalence, "unmatched")
		XCTAssertEqual(inst.element?[8].code, "ASP")
		XCTAssertEqual(inst.element?[8].codeSystem?.absoluteString, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element?[8].target?[0].code, "119295008")
		XCTAssertEqual(inst.element?[8].target?[0].codeSystem?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.element?[8].target?[0].equivalence, "equivalent")
		XCTAssertEqual(inst.element?[8].target?[0].product?[0].code, "14766002")
		XCTAssertEqual(inst.element?[8].target?[0].product?[0].codeSystem?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.element?[8].target?[0].product?[0].element?.absoluteString, "http://hl7.org/fhir/v2/element/SPM-7")
		XCTAssertEqual(inst.element?[9].code, "ATTE")
		XCTAssertEqual(inst.element?[9].codeSystem?.absoluteString, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element?[9].target?[0].codeSystem?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.element?[9].target?[0].comments, "TBD")
		XCTAssertEqual(inst.element?[9].target?[0].equivalence, "unmatched")
		XCTAssertFalse(inst.experimental ?? true)
		XCTAssertEqual(inst.id, "102")
		XCTAssertEqual(inst.name, "Specimen mapping from v2 table 0487 to SNOMED CT")
		XCTAssertEqual(inst.publisher, "FHIR project team (original source: LabMCoP)")
		XCTAssertEqual(inst.sourceReference?.reference, "http://hl7.org/fhir/ValueSet/v2-0487")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.targetReference?.reference, "http://snomed.info/id")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ConceptMap/102")
		XCTAssertEqual(inst.version, "20130725")
		
		return inst
	}
	
	func testConceptMap2() {
		do {
			let instance = try runConceptMap2()
			try runConceptMap2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ConceptMap successfully, but threw")
		}
	}
	
	@discardableResult
	func runConceptMap2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ConceptMap {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "conceptmap-example.json")
		
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team (example)")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "other")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.copyright, "Creative Commons 0")
		XCTAssertEqual(inst.date?.description, "2012-06-13")
		XCTAssertEqual(inst.description_fhir, "A mapping between the FHIR and HL7 v3 AddressUse Code systems")
		XCTAssertEqual(inst.element?[0].code, "home")
		XCTAssertEqual(inst.element?[0].codeSystem?.absoluteString, "http://hl7.org/fhir/address-use")
		XCTAssertEqual(inst.element?[0].target?[0].code, "H")
		XCTAssertEqual(inst.element?[0].target?[0].codeSystem?.absoluteString, "http://hl7.org/fhir/v3/AddressUse")
		XCTAssertEqual(inst.element?[0].target?[0].equivalence, "equivalent")
		XCTAssertEqual(inst.element?[1].code, "home")
		XCTAssertEqual(inst.element?[1].codeSystem?.absoluteString, "http://hl7.org/fhir/address-use")
		XCTAssertEqual(inst.element?[1].target?[0].code, "H")
		XCTAssertEqual(inst.element?[1].target?[0].codeSystem?.absoluteString, "http://hl7.org/fhir/v3/AddressUse")
		XCTAssertEqual(inst.element?[1].target?[0].equivalence, "equivalent")
		XCTAssertEqual(inst.element?[2].code, "work")
		XCTAssertEqual(inst.element?[2].codeSystem?.absoluteString, "http://hl7.org/fhir/address-use")
		XCTAssertEqual(inst.element?[2].target?[0].code, "WP")
		XCTAssertEqual(inst.element?[2].target?[0].codeSystem?.absoluteString, "http://hl7.org/fhir/v3/AddressUse")
		XCTAssertEqual(inst.element?[2].target?[0].equivalence, "equivalent")
		XCTAssertEqual(inst.element?[3].code, "temp")
		XCTAssertEqual(inst.element?[3].codeSystem?.absoluteString, "http://hl7.org/fhir/address-use")
		XCTAssertEqual(inst.element?[3].target?[0].code, "TMP")
		XCTAssertEqual(inst.element?[3].target?[0].codeSystem?.absoluteString, "http://hl7.org/fhir/v3/AddressUse")
		XCTAssertEqual(inst.element?[3].target?[0].equivalence, "equivalent")
		XCTAssertEqual(inst.element?[4].code, "old")
		XCTAssertEqual(inst.element?[4].codeSystem?.absoluteString, "http://hl7.org/fhir/address-use")
		XCTAssertEqual(inst.element?[4].target?[0].code, "BAD")
		XCTAssertEqual(inst.element?[4].target?[0].codeSystem?.absoluteString, "http://hl7.org/fhir/v3/AddressUse")
		XCTAssertEqual(inst.element?[4].target?[0].comments, "In the HL7 v3 AD, old is handled by the usablePeriod element, but you have to provide a time, there's no simple equivalent of flagging an address as old")
		XCTAssertEqual(inst.element?[4].target?[0].equivalence, "disjoint")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.id, "101")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?.value, "urn:uuid:53cd62ee-033e-414c-9f58-3ca97b5ffc3b")
		XCTAssertEqual(inst.name, "FHIR/v3 Address Use Mapping")
		XCTAssertEqual(inst.publisher, "HL7, Inc")
		XCTAssertEqual(inst.requirements, "To help implementers map from HL7 v3/CDA to FHIR")
		XCTAssertEqual(inst.sourceReference?.reference, "http://hl7.org/fhir/address-use")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.targetReference?.reference, "http://hl7.org/fhir/v3/AddressUse")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ConceptMap/101")
		XCTAssertEqual(inst.useContext?[0].text, "for CDA Usage")
		XCTAssertEqual(inst.version, "20120613")
		
		return inst
	}
}
