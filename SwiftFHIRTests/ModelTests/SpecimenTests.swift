//
//  SpecimenTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SpecimenTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Specimen {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Specimen {
		let instance = Specimen(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSpecimen1() throws {
		let instance = try runSpecimen1()
		try runSpecimen1(instance.asJSON())
	}
	
	func runSpecimen1(json: FHIRJSON? = nil) throws -> Specimen {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "spec-uslab-example1.json")
		
		XCTAssertEqual(inst.accessionIdentifier!.system!.absoluteString, "http://lis.acmelabs.org/identifiers/accession")
		XCTAssertEqual(inst.accessionIdentifier!.use!, "official")
		XCTAssertEqual(inst.accessionIdentifier!.value!, "21041205000001")
		XCTAssertEqual(inst.collection!.bodySiteCodeableConcept!.coding![0].code!, " 53120007")
		XCTAssertEqual(inst.collection!.bodySiteCodeableConcept!.coding![0].display!, "Arm")
		XCTAssertEqual(inst.collection!.bodySiteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.collection!.bodySiteCodeableConcept!.coding![1].code!, "ARM")
		XCTAssertEqual(inst.collection!.bodySiteCodeableConcept!.coding![1].display!, "Arm")
		XCTAssertEqual(inst.collection!.bodySiteCodeableConcept!.coding![1].system!.absoluteString, "http://ehr.goodhealthclinic.org")
		XCTAssertEqual(inst.collection!.bodySiteCodeableConcept!.text!, "Drawn from Arm")
		XCTAssertEqual(inst.collection!.collectedDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.id!, "uslab-example1")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://ehr.goodhealthclinic.org/identifiers/specimen")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "SID123")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "122555007")
		XCTAssertEqual(inst.type!.coding![0].display!, "Venous blood specimen")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.type!.coding![1].code!, "BLD")
		XCTAssertEqual(inst.type!.coding![1].display!, "Blood")
		XCTAssertEqual(inst.type!.coding![1].system!.absoluteString, "http://ehr.goodhealthclinic.org")
		XCTAssertEqual(inst.type!.text!, "Blood sample")
		
		return inst
	}
	
	func testSpecimen2() throws {
		let instance = try runSpecimen2()
		try runSpecimen2(instance.asJSON())
	}
	
	func runSpecimen2(json: FHIRJSON? = nil) throws -> Specimen {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "spec-uslab-example2.json")
		
		XCTAssertEqual(inst.accessionIdentifier!.system!.absoluteString, "http://lis.acmelabs.org/identifiers/accession")
		XCTAssertEqual(inst.accessionIdentifier!.use!, "official")
		XCTAssertEqual(inst.accessionIdentifier!.value!, "21041205000001")
		XCTAssertEqual(inst.collection!.collectedDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.id!, "uslab-example2")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://ehr.goodhealthclinic.org/identifiers/specimen")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "SID456")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "698276005")
		XCTAssertEqual(inst.type!.coding![0].display!, "First stream urine sample")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.type!.coding![1].code!, "UFV")
		XCTAssertEqual(inst.type!.coding![1].display!, "Urine, First Void")
		XCTAssertEqual(inst.type!.coding![1].system!.absoluteString, "http://ehr.goodhealthclinic.org")
		XCTAssertEqual(inst.type!.text!, "Urine, First Void")
		
		return inst
	}
	
	func testSpecimen3() throws {
		let instance = try runSpecimen3()
		try runSpecimen3(instance.asJSON())
	}
	
	func runSpecimen3(json: FHIRJSON? = nil) throws -> Specimen {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "specimen-example.json")
		
		XCTAssertEqual(inst.accessionIdentifier!.system!.absoluteString, "http://lab.acme.org/specimens/2011")
		XCTAssertEqual(inst.accessionIdentifier!.value!, "X352356")
		XCTAssertEqual(inst.collection!.collectedDateTime!.description, "2011-05-30T06:15:00Z")
		XCTAssertEqual(inst.collection!.collector!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.collection!.method!.coding![0].code!, "LNV")
		XCTAssertEqual(inst.collection!.method!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v2/0488")
		XCTAssertEqual(inst.collection!.quantity!.units!, "mL")
		XCTAssertEqual(inst.collection!.quantity!.value!, NSDecimalNumber(string: "6"))
		XCTAssertEqual(inst.container![0].additiveReference!.reference!, "#hep")
		XCTAssertEqual(inst.container![0].capacity!.units!, "mL")
		XCTAssertEqual(inst.container![0].capacity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.container![0].description_fhir!, "Green Gel tube")
		XCTAssertEqual(inst.container![0].identifier![0].value!, "48736-15394-75465")
		XCTAssertEqual(inst.container![0].specimenQuantity!.units!, "mL")
		XCTAssertEqual(inst.container![0].specimenQuantity!.value!, NSDecimalNumber(string: "6"))
		XCTAssertEqual(inst.container![0].type!.text!, "Vacutainer")
		XCTAssertEqual(inst.id!, "101")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://ehr.acme.org/identifiers/collections")
		XCTAssertEqual(inst.identifier![0].value!, "23234352356")
		XCTAssertEqual(inst.receivedTime!.description, "2011-03-04T07:03:00Z")
		XCTAssertEqual(inst.subject!.display!, "Peter Patient")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "122555007")
		XCTAssertEqual(inst.type!.coding![0].display!, "Venous blood specimen")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSpecimen4() throws {
		let instance = try runSpecimen4()
		try runSpecimen4(instance.asJSON())
	}
	
	func runSpecimen4(json: FHIRJSON? = nil) throws -> Specimen {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "specimen-qicore-example.json")
		
		XCTAssertEqual(inst.collection!.collectedDateTime!.description, "2011-03-06T06:15:00Z")
		XCTAssertEqual(inst.collection!.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/specimen-collectionPriority")
		XCTAssertEqual(inst.collection!.extension_fhir![0].valueCodeableConcept!.coding![0].code!, "5")
		XCTAssertEqual(inst.collection!.extension_fhir![0].valueCodeableConcept!.coding![0].display!, "ROUTINE")
		XCTAssertEqual(inst.collection!.extension_fhir![0].valueCodeableConcept!.coding![0].system!.absoluteString, "http://hl7.org/fhir/vs/specimen-collection-priority")
		XCTAssertEqual(inst.collection!.extension_fhir![1].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/specimen-specialHandling")
		XCTAssertEqual(inst.collection!.extension_fhir![1].valueCodeableConcept!.coding![0].code!, "NOPERSISTP")
		XCTAssertEqual(inst.collection!.extension_fhir![1].valueCodeableConcept!.coding![0].display!, "no collection beyond purpose of use")
		XCTAssertEqual(inst.collection!.extension_fhir![1].valueCodeableConcept!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.collection!.quantity!.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/specimen-isDryWeight")
		XCTAssertFalse(inst.collection!.quantity!.extension_fhir![0].valueBoolean!)
		XCTAssertEqual(inst.collection!.quantity!.units!, "mL")
		XCTAssertEqual(inst.collection!.quantity!.value!, NSDecimalNumber(string: "6"))
		XCTAssertEqual(inst.container![0].capacity!.units!, "mL")
		XCTAssertEqual(inst.container![0].capacity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.container![0].extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/specimen-sequenceNumber")
		XCTAssertEqual(inst.container![0].extension_fhir![0].valueInteger!, 1)
		XCTAssertEqual(inst.container![0].type!.coding![0].code!, "434746001")
		XCTAssertEqual(inst.container![0].type!.coding![0].display!, "Specimen vial")
		XCTAssertEqual(inst.container![0].type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.receivedTime!.description, "2011-03-04T07:03:00Z")
		XCTAssertEqual(inst.subject!.display!, "Peter Patient")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.treatment![0].additive![0].reference!, "Substance/example")
		XCTAssertEqual(inst.treatment![0].description_fhir!, "Treated with anticoagulants.")
		XCTAssertEqual(inst.treatment![0].extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/specimen-treatmentTime")
		XCTAssertEqual(inst.treatment![0].extension_fhir![0].valuePeriod!.end!.description, "2011-03-04T07:03:00Z")
		XCTAssertEqual(inst.treatment![0].extension_fhir![0].valuePeriod!.start!.description, "2011-03-04T07:03:00Z")
		XCTAssertEqual(inst.type!.coding![0].code!, "122555007")
		XCTAssertEqual(inst.type!.coding![0].display!, "Venous blood specimen")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
}
