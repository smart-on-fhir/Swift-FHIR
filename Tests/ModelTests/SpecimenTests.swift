//
//  SpecimenTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SpecimenTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Specimen {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Specimen {
		let instance = SwiftFHIR.Specimen(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSpecimen1() {
		do {
			let instance = try runSpecimen1()
			try runSpecimen1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Specimen successfully, but threw")
		}
	}
	
	@discardableResult
	func runSpecimen1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Specimen {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "specimen-example-isolate.json")
		
		XCTAssertEqual(inst.accessionIdentifier?.system?.absoluteString, "http://lab.acme.org/specimens/2011")
		XCTAssertEqual(inst.accessionIdentifier?.value, "X352356-ISO1")
		XCTAssertEqual(inst.collection?.collectedDateTime?.description, "2015-08-16T07:03:00Z")
		XCTAssertEqual(inst.collection?.collector?.reference, "Practitioner/f202")
		XCTAssertEqual(inst.collection?.method?.coding?[0].code, "BAP")
		XCTAssertEqual(inst.collection?.method?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0488")
		XCTAssertEqual(inst.contained?[0].id, "stool")
		XCTAssertEqual(inst.id, "isolate")
		XCTAssertEqual(inst.parent?[0].reference, "#stool")
		XCTAssertEqual(inst.receivedTime?.description, "2015-08-18T07:03:00Z")
		XCTAssertEqual(inst.status, "available")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "429951000124103")
		XCTAssertEqual(inst.type?.coding?[0].display, "Bacterial isolate specimen")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSpecimen2() {
		do {
			let instance = try runSpecimen2()
			try runSpecimen2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Specimen successfully, but threw")
		}
	}
	
	@discardableResult
	func runSpecimen2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Specimen {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "specimen-example-urine.json")
		
		XCTAssertEqual(inst.accessionIdentifier?.system?.absoluteString, "http://lab.acme.org/specimens/2015")
		XCTAssertEqual(inst.accessionIdentifier?.value, "X352356")
		XCTAssertEqual(inst.collection?.collectedDateTime?.description, "2015-08-18T07:03:00Z")
		XCTAssertEqual(inst.collection?.collector?.reference, "Practitioner/f202")
		XCTAssertEqual(inst.container?[0].capacity?.unit, "mls")
		XCTAssertEqual(inst.container?[0].capacity?.value, NSDecimalNumber(string: "50"))
		XCTAssertEqual(inst.container?[0].specimenQuantity?.unit, "mls")
		XCTAssertEqual(inst.container?[0].specimenQuantity?.value, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.container?[0].type?.text, "Non-sterile specimen container")
		XCTAssertEqual(inst.id, "vma-urine")
		XCTAssertEqual(inst.receivedTime?.description, "2015-08-18T07:03:00Z")
		XCTAssertEqual(inst.status, "available")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.treatment?[0].description_fhir, "Acidify to pH < 3.0 with 6 N HCl.")
		XCTAssertEqual(inst.treatment?[0].procedure?.coding?[0].code, "ACID")
		XCTAssertEqual(inst.treatment?[0].procedure?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0373")
		XCTAssertEqual(inst.type?.coding?[0].code, "RANDU")
		XCTAssertEqual(inst.type?.coding?[0].display, "Urine, Random")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0487")
		
		return inst
	}
	
	func testSpecimen3() {
		do {
			let instance = try runSpecimen3()
			try runSpecimen3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Specimen successfully, but threw")
		}
	}
	
	@discardableResult
	func runSpecimen3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Specimen {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "specimen-example.json")
		
		XCTAssertEqual(inst.accessionIdentifier?.system?.absoluteString, "http://lab.acme.org/specimens/2011")
		XCTAssertEqual(inst.accessionIdentifier?.value, "X352356")
		XCTAssertEqual(inst.collection?.collectedDateTime?.description, "2011-05-30T06:15:00Z")
		XCTAssertEqual(inst.collection?.collector?.reference, "Practitioner/example")
		XCTAssertEqual(inst.collection?.comment?[0], "Specimen is grossly lipemic")
		XCTAssertEqual(inst.collection?.method?.coding?[0].code, "LNV")
		XCTAssertEqual(inst.collection?.method?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0488")
		XCTAssertEqual(inst.collection?.quantity?.unit, "mL")
		XCTAssertEqual(inst.collection?.quantity?.value, NSDecimalNumber(string: "6"))
		XCTAssertEqual(inst.contained?[0].id, "hep")
		XCTAssertEqual(inst.container?[0].additiveReference?.reference, "#hep")
		XCTAssertEqual(inst.container?[0].capacity?.unit, "mL")
		XCTAssertEqual(inst.container?[0].capacity?.value, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.container?[0].description_fhir, "Green Gel tube")
		XCTAssertEqual(inst.container?[0].identifier?[0].value, "48736-15394-75465")
		XCTAssertEqual(inst.container?[0].specimenQuantity?.unit, "mL")
		XCTAssertEqual(inst.container?[0].specimenQuantity?.value, NSDecimalNumber(string: "6"))
		XCTAssertEqual(inst.container?[0].type?.text, "Vacutainer")
		XCTAssertEqual(inst.id, "101")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://ehr.acme.org/identifiers/collections")
		XCTAssertEqual(inst.identifier?[0].value, "23234352356")
		XCTAssertEqual(inst.receivedTime?.description, "2011-03-04T07:03:00Z")
		XCTAssertEqual(inst.status, "available")
		XCTAssertEqual(inst.subject?.display, "Peter Patient")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "122555007")
		XCTAssertEqual(inst.type?.coding?[0].display, "Venous blood specimen")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
}
