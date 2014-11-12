//
//  ImagingStudyTests.swift
//  ImagingStudyTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class ImagingStudyTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> ImagingStudy? {
		let json = readJSONFile(filename)
		let instance = ImagingStudy(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testImagingStudy1() {
		let inst = instantiateFrom("imagingstudy-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a ImagingStudy instance")
	
		XCTAssertEqual(inst!.dateTime!, NSDate.dateFromISOString("2011-01-01T11:01:20")!)
		XCTAssertEqual(inst!.numberOfInstances!, 1)
		XCTAssertEqual(inst!.numberOfSeries!, 1)	
		XCTAssertEqual(inst!.series![0].description!, "CT Surview 180")
		XCTAssertEqual(inst!.series![0].instance![0].number!, 1)	
		XCTAssertEqual(inst!.series![0].instance![0].sopclass!, "urn:oid:1.2.840.10008.5.1.4.1.1.2")	
		XCTAssertEqual(inst!.series![0].instance![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst!.series![0].instance![0].url!, NSURL(string: "http://localhost/fhir/Binary/@1.2.840.11361907579238403408700.3.0.14.19970327150033")!)	
		XCTAssertEqual(inst!.series![0].modality!, "CT")
		XCTAssertEqual(inst!.series![0].number!, 3)
		XCTAssertEqual(inst!.series![0].numberOfInstances!, 1)	
		XCTAssertEqual(inst!.series![0].uid!, "urn:oid:2.16.124.113543.6003.2588828330.45298.17418.2723805630")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/dicom")	
		XCTAssertEqual(inst!.text!.div!, "<div>Image 1 from Series 3: CT Images on Patient MINT (MINT1234) taken at 1-Jan 2011 01:20 AM</div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.uid!, "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045")
	}
}
