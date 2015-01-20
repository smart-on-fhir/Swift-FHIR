//
//  ContraindicationTests.swift
//  ContraindicationTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ContraindicationTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Contraindication? {
		let json = readJSONFile(filename)
		let instance = Contraindication(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testContraindication1() {
		let inst = instantiateFrom("contraindication-example-allergy.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Contraindication instance")
		
	}
	
	func testContraindication2() {
		let inst = instantiateFrom("contraindication-example-allergy.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Contraindication instance")
		
	}
	
	func testContraindication3() {
		let inst = instantiateFrom("contraindication-example-allergy.json")
		XCTAssertNotNil(inst, "Must have instantiated a Contraindication instance")
		
	}
	
	func testContraindication4() {
		let inst = instantiateFrom("contraindication-example-dup.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Contraindication instance")
		
		XCTAssertEqual(inst!.author!.reference!, "Device/dsp")
		XCTAssertEqual(inst!.category!.coding![0].code!, "DUPTHPY")
		XCTAssertEqual(inst!.category!.coding![0].display!, "Duplicate Therapy Alert")
		XCTAssertEqual(inst!.category!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst!.date!.description, "2013-05-08")
		XCTAssertEqual(inst!.detail!, "Similar test was performed within the past 14 days")
		XCTAssertEqual(inst!.implicated![0].display!, "Chest CT - ordered May 8, 2013 by Dr. Adam Careful")
		XCTAssertEqual(inst!.implicated![0].reference!, "DiagnosticOrder/di")
		XCTAssertEqual(inst!.implicated![1].display!, "Image 1 from Series 3: CT Images on Patient MINT (MINT1234) taken at 1-Jan 2011 01:20 AM")
		XCTAssertEqual(inst!.implicated![1].reference!, "ImagingStudy/example")
	}
	
	func testContraindication5() {
		let inst = instantiateFrom("contraindication-example-dup.json")
		XCTAssertNotNil(inst, "Must have instantiated a Contraindication instance")
		
		XCTAssertEqual(inst!.author!.reference!, "Device/dsp")
		XCTAssertEqual(inst!.category!.coding![0].code!, "DUPTHPY")
		XCTAssertEqual(inst!.category!.coding![0].display!, "Duplicate Therapy Alert")
		XCTAssertEqual(inst!.category!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst!.date!.description, "2013-05-08")
		XCTAssertEqual(inst!.detail!, "Similar test was performed within the past 14 days")
		XCTAssertEqual(inst!.implicated![0].display!, "Chest CT - ordered May 8, 2013 by Dr. Adam Careful")
		XCTAssertEqual(inst!.implicated![0].reference!, "DiagnosticOrder/di")
		XCTAssertEqual(inst!.implicated![1].display!, "Image 1 from Series 3: CT Images on Patient MINT (MINT1234) taken at 1-Jan 2011 01:20 AM")
		XCTAssertEqual(inst!.implicated![1].reference!, "ImagingStudy/example")
	}
	
	func testContraindication6() {
		let inst = instantiateFrom("contraindication-example-lab.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Contraindication instance")
		
	}
	
	func testContraindication7() {
		let inst = instantiateFrom("contraindication-example-lab.json")
		XCTAssertNotNil(inst, "Must have instantiated a Contraindication instance")
		
	}
	
	func testContraindication8() {
		let inst = instantiateFrom("contraindication-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Contraindication instance")
		
		XCTAssertEqual(inst!.author!.reference!, "Device/dsp")
		XCTAssertEqual(inst!.category!.coding![0].code!, "DRG")
		XCTAssertEqual(inst!.category!.coding![0].display!, "Drug Interaction Alert")
		XCTAssertEqual(inst!.category!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst!.date!.description, "2014-01-05")
		XCTAssertEqual(inst!.detail!, "Risk of internal bleeding.  Those who take acetaminophen along with the widely used blood-thinning drug warfarin may face the risk of serious internal bleeding. People on warfarin who take acetaminophen for at least seven days in a row should be closely watched for bleeding.")
		XCTAssertEqual(inst!.implicated![0].display!, "500 mg Acetaminophen tablet 1/day, PRN since 2010")
		XCTAssertEqual(inst!.implicated![0].reference!, "MedicationStatement/tylenol")
		XCTAssertEqual(inst!.implicated![1].display!, "Warfarin 1 MG TAB prescribed Jan. 5, 2014")
		XCTAssertEqual(inst!.implicated![1].reference!, "MedicationPrescription/warfarin")
		XCTAssertEqual(inst!.mitigation![0].action!.coding![0].code!, "30")
		XCTAssertEqual(inst!.mitigation![0].action!.coding![0].display!, "Stopped Concurrent Therapy")
		XCTAssertEqual(inst!.mitigation![0].action!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst!.mitigation![0].action!.text!, "Asked patient to discontinue regular use of Tylenol and to consult with clinician if they need to resume to allow appropriate INR monitoring")
		XCTAssertEqual(inst!.mitigation![0].author!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst!.mitigation![0].author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.mitigation![0].date!.description, "2014-01-05")
		XCTAssertEqual(inst!.severity!, "H")
	}
	
	func testContraindication9() {
		let inst = instantiateFrom("contraindication-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Contraindication instance")
		
		XCTAssertEqual(inst!.author!.reference!, "Device/dsp")
		XCTAssertEqual(inst!.category!.coding![0].code!, "DRG")
		XCTAssertEqual(inst!.category!.coding![0].display!, "Drug Interaction Alert")
		XCTAssertEqual(inst!.category!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst!.date!.description, "2014-01-05")
		XCTAssertEqual(inst!.detail!, "Risk of internal bleeding.  Those who take acetaminophen along with the widely used blood-thinning drug warfarin may face the risk of serious internal bleeding. People on warfarin who take acetaminophen for at least seven days in a row should be closely watched for bleeding.")
		XCTAssertEqual(inst!.implicated![0].display!, "500 mg Acetaminophen tablet 1/day, PRN since 2010")
		XCTAssertEqual(inst!.implicated![0].reference!, "MedicationStatement/tylenol")
		XCTAssertEqual(inst!.implicated![1].display!, "Warfarin 1 MG TAB prescribed Jan. 5, 2014")
		XCTAssertEqual(inst!.implicated![1].reference!, "MedicationPrescription/warfarin")
		XCTAssertEqual(inst!.mitigation![0].action!.coding![0].code!, "30")
		XCTAssertEqual(inst!.mitigation![0].action!.coding![0].display!, "Stopped Concurrent Therapy")
		XCTAssertEqual(inst!.mitigation![0].action!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst!.mitigation![0].action!.text!, "Asked patient to discontinue regular use of Tylenol and to consult with clinician if they need to resume to allow appropriate INR monitoring")
		XCTAssertEqual(inst!.mitigation![0].author!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst!.mitigation![0].author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.mitigation![0].date!.description, "2014-01-05")
		XCTAssertEqual(inst!.severity!, "H")
	}
}
