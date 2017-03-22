//
//  DetectedIssueTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRDetectedIssue = Models.DetectedIssue
#else
import SwiftFHIR
typealias SwiftFHIRDetectedIssue = SwiftFHIR.DetectedIssue
#endif


class DetectedIssueTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRDetectedIssue {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRDetectedIssue {
		return try SwiftFHIRDetectedIssue(json: json)
	}
	
	func testDetectedIssue1() {
		do {
			let instance = try runDetectedIssue1()
			try runDetectedIssue1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DetectedIssue successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDetectedIssue1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDetectedIssue {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "detectedissue-example-allergy.json")
		
		XCTAssertEqual(inst.id, "allergy")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDetectedIssue2() {
		do {
			let instance = try runDetectedIssue2()
			try runDetectedIssue2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DetectedIssue successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDetectedIssue2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDetectedIssue {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "detectedissue-example-dup.json")
		
		XCTAssertEqual(inst.author?.reference, "Device/software")
		XCTAssertEqual(inst.category?.coding?[0].code, "DUPTHPY")
		XCTAssertEqual(inst.category?.coding?[0].display, "Duplicate Therapy Alert")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.date?.description, "2013-05-08")
		XCTAssertEqual(inst.detail, "Similar test was performed within the past 14 days")
		XCTAssertEqual(inst.id, "duplicate")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://example.org")
		XCTAssertEqual(inst.identifier?.use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?.value, "12345")
		XCTAssertEqual(inst.implicated?[0].display, "Chest CT - ordered May 8, 2013 by Dr. Adam Careful")
		XCTAssertEqual(inst.implicated?[0].reference, "ProcedureRequest/di")
		XCTAssertEqual(inst.implicated?[1].display, "Image 1 from Series 3: CT Images on Patient MINT (MINT1234) taken at 1-Jan 2011 01:20 AM")
		XCTAssertEqual(inst.implicated?[1].reference, "ImagingStudy/example")
		XCTAssertEqual(inst.patient?.reference, "Patient/dicom")
		XCTAssertEqual(inst.reference?.absoluteString, "http://www.tmhp.com/RadiologyClinicalDecisionSupport/2011/CHEST%20IMAGING%20GUIDELINES%202011.pdf")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDetectedIssue3() {
		do {
			let instance = try runDetectedIssue3()
			try runDetectedIssue3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DetectedIssue successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDetectedIssue3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDetectedIssue {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "detectedissue-example-lab.json")
		
		XCTAssertEqual(inst.id, "lab")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDetectedIssue4() {
		do {
			let instance = try runDetectedIssue4()
			try runDetectedIssue4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DetectedIssue successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDetectedIssue4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDetectedIssue {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "detectedissue-example.json")
		
		XCTAssertEqual(inst.author?.reference, "Device/software")
		XCTAssertEqual(inst.category?.coding?[0].code, "DRG")
		XCTAssertEqual(inst.category?.coding?[0].display, "Drug Interaction Alert")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.date?.description, "2014-01-05")
		XCTAssertEqual(inst.id, "ddi")
		XCTAssertEqual(inst.implicated?[0].display, "500 mg Acetaminophen tablet 1/day, PRN since 2010")
		XCTAssertEqual(inst.implicated?[0].reference, "MedicationStatement/example001")
		XCTAssertEqual(inst.implicated?[1].display, "Warfarin 1 MG TAB prescribed Jan. 15, 2015")
		XCTAssertEqual(inst.implicated?[1].reference, "MedicationRequest/medrx0331")
		XCTAssertEqual(inst.mitigation?[0].action?.coding?[0].code, "13")
		XCTAssertEqual(inst.mitigation?[0].action?.coding?[0].display, "Stopped Concurrent Therapy")
		XCTAssertEqual(inst.mitigation?[0].action?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.mitigation?[0].action?.text, "Asked patient to discontinue regular use of Tylenol and to consult with clinician if they need to resume to allow appropriate INR monitoring")
		XCTAssertEqual(inst.mitigation?[0].author?.display, "Dr. Adam Careful")
		XCTAssertEqual(inst.mitigation?[0].author?.reference, "Practitioner/example")
		XCTAssertEqual(inst.mitigation?[0].date?.description, "2014-01-05")
		XCTAssertEqual(inst.severity, DetectedIssueSeverity(rawValue: "high")!)
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
