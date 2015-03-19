//
//  ContraindicationTests.swift
//  ContraindicationTests
//
//  Generated from FHIR 0.4.0.4746 on 2015-03-19.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ContraindicationTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Contraindication {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Contraindication {
		let instance = Contraindication(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testContraindication1() {
		let instance = testContraindication1_impl()
		testContraindication1_impl(json: instance.asJSON())
	}
	
	func testContraindication1_impl(json: JSONDictionary? = nil) -> Contraindication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "contraindication-example-allergy.json")
		
		XCTAssertEqual(inst.id!, "allergy")
		XCTAssertEqual(inst.text!.div!, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testContraindication2() {
		let instance = testContraindication2_impl()
		testContraindication2_impl(json: instance.asJSON())
	}
	
	func testContraindication2_impl(json: JSONDictionary? = nil) -> Contraindication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "contraindication-example-dup.json")
		
		XCTAssertEqual(inst.author!.reference!, "Device/dsp")
		XCTAssertEqual(inst.category!.coding![0].code!, "DUPTHPY")
		XCTAssertEqual(inst.category!.coding![0].display!, "Duplicate Therapy Alert")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.date!.description, "2013-05-08")
		XCTAssertEqual(inst.detail!, "Similar test was performed within the past 14 days")
		XCTAssertEqual(inst.id!, "duplicate")
		XCTAssertEqual(inst.implicated![0].display!, "Chest CT - ordered May 8, 2013 by Dr. Adam Careful")
		XCTAssertEqual(inst.implicated![0].reference!, "DiagnosticOrder/di")
		XCTAssertEqual(inst.implicated![1].display!, "Image 1 from Series 3: CT Images on Patient MINT (MINT1234) taken at 1-Jan 2011 01:20 AM")
		XCTAssertEqual(inst.implicated![1].reference!, "ImagingStudy/example")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testContraindication3() {
		let instance = testContraindication3_impl()
		testContraindication3_impl(json: instance.asJSON())
	}
	
	func testContraindication3_impl(json: JSONDictionary? = nil) -> Contraindication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "contraindication-example-lab.json")
		
		XCTAssertEqual(inst.id!, "lab")
		XCTAssertEqual(inst.text!.div!, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testContraindication4() {
		let instance = testContraindication4_impl()
		testContraindication4_impl(json: instance.asJSON())
	}
	
	func testContraindication4_impl(json: JSONDictionary? = nil) -> Contraindication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "contraindication-example.json")
		
		XCTAssertEqual(inst.author!.reference!, "Device/dsp")
		XCTAssertEqual(inst.category!.coding![0].code!, "DRG")
		XCTAssertEqual(inst.category!.coding![0].display!, "Drug Interaction Alert")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.date!.description, "2014-01-05")
		XCTAssertEqual(inst.id!, "ddi")
		XCTAssertEqual(inst.implicated![0].display!, "500 mg Acetaminophen tablet 1/day, PRN since 2010")
		XCTAssertEqual(inst.implicated![0].reference!, "MedicationStatement/tylenol")
		XCTAssertEqual(inst.implicated![1].display!, "Warfarin 1 MG TAB prescribed Jan. 5, 2014")
		XCTAssertEqual(inst.implicated![1].reference!, "MedicationPrescription/warfarin")
		XCTAssertEqual(inst.mitigation![0].action!.coding![0].code!, "30")
		XCTAssertEqual(inst.mitigation![0].action!.coding![0].display!, "Stopped Concurrent Therapy")
		XCTAssertEqual(inst.mitigation![0].action!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.mitigation![0].action!.text!, "Asked patient to discontinue regular use of Tylenol and to consult with clinician if they need to resume to allow appropriate INR monitoring")
		XCTAssertEqual(inst.mitigation![0].author!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst.mitigation![0].author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.mitigation![0].date!.description, "2014-01-05")
		XCTAssertEqual(inst.severity!, "H")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
