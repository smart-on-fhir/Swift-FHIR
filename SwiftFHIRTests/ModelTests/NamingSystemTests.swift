//
//  NamingSystemTests.swift
//  NamingSystemTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class NamingSystemTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> NamingSystem {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> NamingSystem {
		let instance = NamingSystem(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testNamingSystem1() {
		let instance = testNamingSystem1_impl()
		testNamingSystem1_impl(json: instance.asJSON())
	}
	
	func testNamingSystem1_impl(json: JSONDictionary? = nil) -> NamingSystem {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "namingsystem-example.canonical.json")
		
		XCTAssertEqual(inst.description_fhir!, "SNOMED CT is a concept-based, scientifically validated terminology that provides a unique and permanent concept identifier that can be included in multiple HL7 data types including CD and CE.  The concepts are managed to avoid \"semantic drift\" so the meaning remains constant.  If the concept is found to be ambiguous or the meaning changes, the concept is inactivated but still retained and the identifier is never reused.    SNOMED CT's concepts are interrelated hierarchically and using description logic.    SNOMED CT concepts have a unique \"fully-specified name\", a preferred term, and, optionally, synonyms.  The description languages include English and Spanish.")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.name!, "SNOMED CT")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.type!, "codesystem")
		XCTAssertEqual(inst.uniqueId![0].type!, "oid")
		XCTAssertEqual(inst.uniqueId![0].value!, "2.16.840.1.113883.6.96")
		XCTAssertEqual(inst.uniqueId![1].type!, "uri")
		XCTAssertEqual(inst.uniqueId![1].value!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testNamingSystem2() {
		let instance = testNamingSystem2_impl()
		testNamingSystem2_impl(json: instance.asJSON())
	}
	
	func testNamingSystem2_impl(json: JSONDictionary? = nil) -> NamingSystem {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "namingsystem-example.canonical.json")
		
		XCTAssertEqual(inst.description_fhir!, "SNOMED CT is a concept-based, scientifically validated terminology that provides a unique and permanent concept identifier that can be included in multiple HL7 data types including CD and CE.  The concepts are managed to avoid \"semantic drift\" so the meaning remains constant.  If the concept is found to be ambiguous or the meaning changes, the concept is inactivated but still retained and the identifier is never reused.    SNOMED CT's concepts are interrelated hierarchically and using description logic.    SNOMED CT concepts have a unique \"fully-specified name\", a preferred term, and, optionally, synonyms.  The description languages include English and Spanish.")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.name!, "SNOMED CT")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.type!, "codesystem")
		XCTAssertEqual(inst.uniqueId![0].type!, "oid")
		XCTAssertEqual(inst.uniqueId![0].value!, "2.16.840.1.113883.6.96")
		XCTAssertEqual(inst.uniqueId![1].type!, "uri")
		XCTAssertEqual(inst.uniqueId![1].value!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testNamingSystem3() {
		let instance = testNamingSystem3_impl()
		testNamingSystem3_impl(json: instance.asJSON())
	}
	
	func testNamingSystem3_impl(json: JSONDictionary? = nil) -> NamingSystem {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "namingsystem-example.json")
		
		XCTAssertEqual(inst.description_fhir!, "SNOMED CT is a concept-based, scientifically validated terminology that provides a unique and permanent concept identifier that can be included in multiple HL7 data types including CD and CE.  The concepts are managed to avoid \"semantic drift\" so the meaning remains constant.  If the concept is found to be ambiguous or the meaning changes, the concept is inactivated but still retained and the identifier is never reused.    SNOMED CT's concepts are interrelated hierarchically and using description logic.    SNOMED CT concepts have a unique \"fully-specified name\", a preferred term, and, optionally, synonyms.  The description languages include English and Spanish.")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.name!, "SNOMED CT")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.type!, "codesystem")
		XCTAssertEqual(inst.uniqueId![0].type!, "oid")
		XCTAssertEqual(inst.uniqueId![0].value!, "2.16.840.1.113883.6.96")
		XCTAssertEqual(inst.uniqueId![1].type!, "uri")
		XCTAssertEqual(inst.uniqueId![1].value!, "http://snomed.info/sct")
		
		return inst
	}
}
