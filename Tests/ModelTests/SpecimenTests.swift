//
//  SpecimenTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-21.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRSpecimen = Models.Specimen
#else
import SwiftFHIR
typealias SwiftFHIRSpecimen = SwiftFHIR.Specimen
#endif


class SpecimenTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRSpecimen {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRSpecimen {
		return try SwiftFHIRSpecimen(json: json)
	}
	
	func testSpecimen1() {
		do {
			let instance = try runSpecimen1()
			try runSpecimen1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Specimen successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSpecimen1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSpecimen {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "specimen-example-isolate.json")
		
		XCTAssertEqual(inst.accessionIdentifier?.system?.absoluteString, "http://lab.acme.org/specimens/2011")
		XCTAssertEqual(inst.accessionIdentifier?.value, "X352356-ISO1")
		XCTAssertEqual(inst.collection?.collectedDateTime?.description, "2015-08-16T07:03:00Z")
		XCTAssertEqual(inst.collection?.collector?.reference, "Practitioner/f202")
		XCTAssertEqual(inst.collection?.method?.coding?[0].code, "BAP")
		XCTAssertEqual(inst.collection?.method?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0488")
		XCTAssertEqual(inst.contained?[0].id, "stool")
		XCTAssertEqual(inst.id, "isolate")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.note?[0].text, "Patient dropped off specimen")
		XCTAssertEqual(inst.parent?[0].reference, "#stool")
		XCTAssertEqual(inst.receivedTime?.description, "2015-08-18T07:03:00Z")
		XCTAssertEqual(inst.status, SpecimenStatus(rawValue: "available")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
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
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Specimen successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSpecimen2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSpecimen {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "specimen-example-pooled-serum.json")
		
		XCTAssertEqual(inst.accessionIdentifier?.system?.absoluteString, "https://vetmed.iastate.edu/vdl")
		XCTAssertEqual(inst.accessionIdentifier?.value, "20171120-1234")
		XCTAssertEqual(inst.collection?.collectedDateTime?.description, "2017-11-14")
		XCTAssertEqual(inst.collection?.collector?.display, "James Herriot, FRCVS")
		XCTAssertEqual(inst.container?[0].type?.coding?[0].code, "RTT")
		XCTAssertEqual(inst.container?[0].type?.coding?[0].display, "Red Top Tube")
		XCTAssertEqual(inst.container?[0].type?.coding?[0].system?.absoluteString, "https://vetmed.iastate.edu/vdl")
		XCTAssertEqual(inst.container?[0].type?.text, "Red Top Blood Collection Tube")
		XCTAssertEqual(inst.id, "pooled-serum")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.note?[0].text, "Pooled serum sample from 30 individuals")
		XCTAssertEqual(inst.subject?.reference, "Group/herd1")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "Serum sample, pooled")
		XCTAssertEqual(inst.type?.coding?[0].display, "Serum sample, pooled")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "https://vetmed.iastate.edu/vdl")
		XCTAssertEqual(inst.type?.text, "Pooled serum sample")
		
		return inst
	}
	
	func testSpecimen3() {
		do {
			let instance = try runSpecimen3()
			try runSpecimen3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Specimen successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSpecimen3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSpecimen {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "specimen-example-urine.json")
		
		XCTAssertEqual(inst.accessionIdentifier?.system?.absoluteString, "http://lab.acme.org/specimens/2015")
		XCTAssertEqual(inst.accessionIdentifier?.value, "X352356")
		XCTAssertEqual(inst.collection?.collectedDateTime?.description, "2015-08-18T07:03:00Z")
		XCTAssertEqual(inst.collection?.collector?.reference, "Practitioner/f202")
		XCTAssertEqual(inst.container?[0].capacity?.unit, "mls")
		XCTAssertEqual(inst.container?[0].capacity?.value, "50")
		XCTAssertEqual(inst.container?[0].specimenQuantity?.unit, "mls")
		XCTAssertEqual(inst.container?[0].specimenQuantity?.value, "10")
		XCTAssertEqual(inst.container?[0].type?.text, "Non-sterile specimen container")
		XCTAssertEqual(inst.id, "vma-urine")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.processing?[0].additive?[0].display, "6 N HCl")
		XCTAssertEqual(inst.processing?[0].description_fhir, "Acidify to pH < 3.0 with 6 N HCl.")
		XCTAssertEqual(inst.processing?[0].procedure?.coding?[0].code, "ACID")
		XCTAssertEqual(inst.processing?[0].procedure?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0373")
		XCTAssertEqual(inst.processing?[0].timeDateTime?.description, "2015-08-18T08:10:00Z")
		XCTAssertEqual(inst.receivedTime?.description, "2015-08-18T07:03:00Z")
		XCTAssertEqual(inst.status, SpecimenStatus(rawValue: "available")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "RANDU")
		XCTAssertEqual(inst.type?.coding?[0].display, "Urine, Random")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0487")
		
		return inst
	}
	
	func testSpecimen4() {
		do {
			let instance = try runSpecimen4()
			try runSpecimen4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Specimen successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSpecimen4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSpecimen {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "specimen-example-serum.json")
		
		XCTAssertEqual(inst.accessionIdentifier?.system?.absoluteString, "http://acme.com/labs/accession-ids")
		XCTAssertEqual(inst.accessionIdentifier?.value, "20150816-00124")
		XCTAssertEqual(inst.collection?.collectedDateTime?.description, "2015-08-16T06:40:17Z")
		XCTAssertEqual(inst.collection?.collector?.reference, "Practitioner/f202")
		XCTAssertEqual(inst.container?[0].type?.coding?[0].code, "SST")
		XCTAssertEqual(inst.container?[0].type?.coding?[0].display, "Serum Separator Tube")
		XCTAssertEqual(inst.container?[0].type?.coding?[0].system?.absoluteString, "http://acme.com/labs")
		XCTAssertEqual(inst.id, "sst")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.request?[0].reference, "ServiceRequest/ft4")
		XCTAssertEqual(inst.subject?.reference, "Patient/pat2")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "119364003")
		XCTAssertEqual(inst.type?.coding?[0].display, "Serum sample")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSpecimen5() {
		do {
			let instance = try runSpecimen5()
			try runSpecimen5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Specimen successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSpecimen5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSpecimen {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "specimen-example.json")
		
		XCTAssertEqual(inst.accessionIdentifier?.system?.absoluteString, "http://lab.acme.org/specimens/2011")
		XCTAssertEqual(inst.accessionIdentifier?.value, "X352356")
		XCTAssertEqual(inst.collection?.bodySite?.coding?[0].code, "49852007")
		XCTAssertEqual(inst.collection?.bodySite?.coding?[0].display, "Structure of median cubital vein (body structure)")
		XCTAssertEqual(inst.collection?.bodySite?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.collection?.bodySite?.text, "Right median cubital vein")
		XCTAssertEqual(inst.collection?.collectedDateTime?.description, "2011-05-30T06:15:00Z")
		XCTAssertEqual(inst.collection?.collector?.reference, "Practitioner/example")
		XCTAssertEqual(inst.collection?.method?.coding?[0].code, "LNV")
		XCTAssertEqual(inst.collection?.method?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0488")
		XCTAssertEqual(inst.collection?.quantity?.unit, "mL")
		XCTAssertEqual(inst.collection?.quantity?.value, "6")
		XCTAssertEqual(inst.contained?[0].id, "hep")
		XCTAssertEqual(inst.container?[0].additiveReference?.reference, "#hep")
		XCTAssertEqual(inst.container?[0].capacity?.unit, "mL")
		XCTAssertEqual(inst.container?[0].capacity?.value, "10")
		XCTAssertEqual(inst.container?[0].description_fhir, "Green Gel tube")
		XCTAssertEqual(inst.container?[0].identifier?[0].value, "48736-15394-75465")
		XCTAssertEqual(inst.container?[0].specimenQuantity?.unit, "mL")
		XCTAssertEqual(inst.container?[0].specimenQuantity?.value, "6")
		XCTAssertEqual(inst.container?[0].type?.text, "Vacutainer")
		XCTAssertEqual(inst.id, "101")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://ehr.acme.org/identifiers/collections")
		XCTAssertEqual(inst.identifier?[0].value, "23234352356")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.note?[0].text, "Specimen is grossly lipemic")
		XCTAssertEqual(inst.receivedTime?.description, "2011-03-04T07:03:00Z")
		XCTAssertEqual(inst.request?[0].reference, "ServiceRequest/example")
		XCTAssertEqual(inst.status, SpecimenStatus(rawValue: "available")!)
		XCTAssertEqual(inst.subject?.display, "Peter Patient")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "122555007")
		XCTAssertEqual(inst.type?.coding?[0].display, "Venous blood specimen")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
}
