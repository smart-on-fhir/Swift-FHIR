//
//  ImagingStudyTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ImagingStudyTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ImagingStudy {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.ImagingStudy {
		let instance = SwiftFHIR.ImagingStudy(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testImagingStudy1() {
		do {
			let instance = try runImagingStudy1()
			try runImagingStudy1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ImagingStudy successfully, but threw")
		}
	}
	
	@discardableResult
	func runImagingStudy1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ImagingStudy {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "imagingstudy-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.numberOfInstances, UInt(1))
		XCTAssertEqual(inst.numberOfSeries, UInt(1))
		XCTAssertEqual(inst.patient?.reference, "Patient/dicom")
		XCTAssertEqual(inst.series?[0].bodySite?.code, "67734004")
		XCTAssertEqual(inst.series?[0].bodySite?.display, "Upper Trunk Structure")
		XCTAssertEqual(inst.series?[0].bodySite?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.series?[0].description_fhir, "CT Surview 180")
		XCTAssertEqual(inst.series?[0].instance?[0].content?[0].url?.absoluteString, "http://localhost/fhir/Binary/1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst.series?[0].instance?[0].number, UInt(1))
		XCTAssertEqual(inst.series?[0].instance?[0].sopClass, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.series?[0].instance?[0].uid, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst.series?[0].modality?.code, "CT")
		XCTAssertEqual(inst.series?[0].modality?.system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.series?[0].number, UInt(3))
		XCTAssertEqual(inst.series?[0].numberOfInstances, UInt(1))
		XCTAssertEqual(inst.series?[0].uid, "urn:oid:2.16.124.113543.6003.2588828330.45298.17418.2723805630")
		XCTAssertEqual(inst.started?.description, "2011-01-01T11:01:20+03:00")
		XCTAssertEqual(inst.text?.div, "<div>Image 1 from Series 3: CT Images on Patient MINT (MINT1234) taken at 1-Jan 2011 01:20 AM</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.uid, "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045")
		
		return inst
	}
}
