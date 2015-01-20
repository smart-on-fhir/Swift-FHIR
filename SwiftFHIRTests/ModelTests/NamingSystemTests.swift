//
//  NamingSystemTests.swift
//  NamingSystemTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class NamingSystemTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> NamingSystem? {
		let json = readJSONFile(filename)
		let instance = NamingSystem(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testNamingSystem1() {
		let inst = instantiateFrom("namingsystem-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a NamingSystem instance")
		
		XCTAssertEqual(inst!.description!, "SNOMED CT is a concept-based, scientifically validated terminology that provides a unique and permanent concept identifier that can be included in multiple HL7 data types including CD and CE.  The concepts are managed to avoid \"semantic drift\" so the meaning remains constant.  If the concept is found to be ambiguous or the meaning changes, the concept is inactivated but still retained and the identifier is never reused.    SNOMED CT's concepts are interrelated hierarchically and using description logic.    SNOMED CT concepts have a unique \"fully-specified name\", a preferred term, and, optionally, synonyms.  The description languages include English and Spanish.")
		XCTAssertEqual(inst!.name!, "SNOMED CT")
		XCTAssertEqual(inst!.status!, "active")
		XCTAssertEqual(inst!.type!, "codesystem")
		XCTAssertEqual(inst!.uniqueId![0].type!, "oid")
		XCTAssertEqual(inst!.uniqueId![0].value!, "2.16.840.1.113883.6.96")
		XCTAssertEqual(inst!.uniqueId![1].type!, "uri")
		XCTAssertEqual(inst!.uniqueId![1].value!, "http://snomed.info/sct")
	}
	
	func testNamingSystem2() {
		let inst = instantiateFrom("namingsystem-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a NamingSystem instance")
		
		XCTAssertEqual(inst!.description!, "SNOMED CT is a concept-based, scientifically validated terminology that provides a unique and permanent concept identifier that can be included in multiple HL7 data types including CD and CE.  The concepts are managed to avoid \"semantic drift\" so the meaning remains constant.  If the concept is found to be ambiguous or the meaning changes, the concept is inactivated but still retained and the identifier is never reused.    SNOMED CT's concepts are interrelated hierarchically and using description logic.    SNOMED CT concepts have a unique \"fully-specified name\", a preferred term, and, optionally, synonyms.  The description languages include English and Spanish.")
		XCTAssertEqual(inst!.name!, "SNOMED CT")
		XCTAssertEqual(inst!.status!, "active")
		XCTAssertEqual(inst!.type!, "codesystem")
		XCTAssertEqual(inst!.uniqueId![0].type!, "oid")
		XCTAssertEqual(inst!.uniqueId![0].value!, "2.16.840.1.113883.6.96")
		XCTAssertEqual(inst!.uniqueId![1].type!, "uri")
		XCTAssertEqual(inst!.uniqueId![1].value!, "http://snomed.info/sct")
	}
	
	func testNamingSystem3() {
		let inst = instantiateFrom("namingsystem-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a NamingSystem instance")
		
		XCTAssertEqual(inst!.description!, "SNOMED CT is a concept-based, scientifically validated terminology that provides a unique and permanent concept identifier that can be included in multiple HL7 data types including CD and CE.  The concepts are managed to avoid \"semantic drift\" so the meaning remains constant.  If the concept is found to be ambiguous or the meaning changes, the concept is inactivated but still retained and the identifier is never reused.    SNOMED CT's concepts are interrelated hierarchically and using description logic.    SNOMED CT concepts have a unique \"fully-specified name\", a preferred term, and, optionally, synonyms.  The description languages include English and Spanish.")
		XCTAssertEqual(inst!.name!, "SNOMED CT")
		XCTAssertEqual(inst!.status!, "active")
		XCTAssertEqual(inst!.type!, "codesystem")
		XCTAssertEqual(inst!.uniqueId![0].type!, "oid")
		XCTAssertEqual(inst!.uniqueId![0].value!, "2.16.840.1.113883.6.96")
		XCTAssertEqual(inst!.uniqueId![1].type!, "uri")
		XCTAssertEqual(inst!.uniqueId![1].value!, "http://snomed.info/sct")
	}
}
