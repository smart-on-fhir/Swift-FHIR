//
//  ImagingObjectSelectionTests.swift
//  ImagingObjectSelectionTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class ImagingObjectSelectionTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> ImagingObjectSelection? {
		let json = readJSONFile(filename)
		let instance = ImagingObjectSelection(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testImagingObjectSelection1() {
		let inst = instantiateFrom("imagingobjectselection-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ImagingObjectSelection instance")
	
		XCTAssertEqual(inst!.authoringTime!, NSDate.dateFromISOString("2014-11-20T11:01:20")!)
		XCTAssertEqual(inst!.description!, "1 SC image (screen snapshot) and 2 CT images to share a chest CT exam")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/dicom")
		XCTAssertEqual(inst!.study![0].series![0].instance![0].retrieveUrl!, NSURL(string: "http://localhost/wado/SCP/2.16.124.113543.6003.189642796.63084.16749.2599092904")!)
		XCTAssertEqual(inst!.study![0].series![0].instance![0].sopClass!, "urn:oid:1.2.840.10008.5.1.4.1.1.7")
		XCTAssertEqual(inst!.study![0].series![0].instance![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092902")
		XCTAssertEqual(inst!.study![0].series![0].retrieveAETitle!, "SCP")
		XCTAssertEqual(inst!.study![0].series![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16750.2599092901")
		XCTAssertEqual(inst!.study![0].series![1].instance![0].retrieveUrl!, NSURL(string: "http://localhost/wado/SCP/2.16.124.113543.6003.189642796.63084.16748.2599092903")!)
		XCTAssertEqual(inst!.study![0].series![1].instance![0].sopClass!, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst!.study![0].series![1].instance![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst!.study![0].series![1].instance![1].retrieveUrl!, NSURL(string: "http://localhost/wado/SCP/2.16.124.113543.6003.189642796.63084.16750.2599092902")!)
		XCTAssertEqual(inst!.study![0].series![1].instance![1].sopClass!, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst!.study![0].series![1].instance![1].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092904")
		XCTAssertEqual(inst!.study![0].series![1].retrieveAETitle!, "SCP")
		XCTAssertEqual(inst!.study![0].series![1].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16750.2599092902")
		XCTAssertEqual(inst!.study![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16749.2599092904")
		XCTAssertEqual(inst!.title!.coding![0].code!, "113030")
		XCTAssertEqual(inst!.title!.coding![0].display!, "Manifest")
		XCTAssertEqual(inst!.title!.coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.title!.text!, "A set of objects that have been exported for sharing")
		XCTAssertEqual(inst!.uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092901")
	}
	
	func testImagingObjectSelection2() {
		let inst = instantiateFrom("imagingobjectselection-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ImagingObjectSelection instance")
	
		XCTAssertEqual(inst!.authoringTime!, NSDate.dateFromISOString("2014-11-20T11:01:20")!)
		XCTAssertEqual(inst!.description!, "1 SC image (screen snapshot) and 2 CT images to share a chest CT exam")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/dicom")
		XCTAssertEqual(inst!.study![0].series![0].instance![0].retrieveUrl!, NSURL(string: "http://localhost/wado/SCP/2.16.124.113543.6003.189642796.63084.16749.2599092904")!)
		XCTAssertEqual(inst!.study![0].series![0].instance![0].sopClass!, "urn:oid:1.2.840.10008.5.1.4.1.1.7")
		XCTAssertEqual(inst!.study![0].series![0].instance![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092902")
		XCTAssertEqual(inst!.study![0].series![0].retrieveAETitle!, "SCP")
		XCTAssertEqual(inst!.study![0].series![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16750.2599092901")
		XCTAssertEqual(inst!.study![0].series![1].instance![0].retrieveUrl!, NSURL(string: "http://localhost/wado/SCP/2.16.124.113543.6003.189642796.63084.16748.2599092903")!)
		XCTAssertEqual(inst!.study![0].series![1].instance![0].sopClass!, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst!.study![0].series![1].instance![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst!.study![0].series![1].instance![1].retrieveUrl!, NSURL(string: "http://localhost/wado/SCP/2.16.124.113543.6003.189642796.63084.16750.2599092902")!)
		XCTAssertEqual(inst!.study![0].series![1].instance![1].sopClass!, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst!.study![0].series![1].instance![1].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092904")
		XCTAssertEqual(inst!.study![0].series![1].retrieveAETitle!, "SCP")
		XCTAssertEqual(inst!.study![0].series![1].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16750.2599092902")
		XCTAssertEqual(inst!.study![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16749.2599092904")
		XCTAssertEqual(inst!.title!.coding![0].code!, "113030")
		XCTAssertEqual(inst!.title!.coding![0].display!, "Manifest")
		XCTAssertEqual(inst!.title!.coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.title!.text!, "A set of objects that have been exported for sharing")
		XCTAssertEqual(inst!.uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092901")
	}
	
	func testImagingObjectSelection3() {
		let inst = instantiateFrom("imagingobjectselection-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a ImagingObjectSelection instance")
	
		XCTAssertEqual(inst!.authoringTime!, NSDate.dateFromISOString("2014-11-20T11:01:20")!)
		XCTAssertEqual(inst!.description!, "1 SC image (screen snapshot) and 2 CT images to share a chest CT exam")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/dicom")
		XCTAssertEqual(inst!.study![0].series![0].instance![0].retrieveUrl!, NSURL(string: "http://localhost/wado/SCP/2.16.124.113543.6003.189642796.63084.16749.2599092904")!)
		XCTAssertEqual(inst!.study![0].series![0].instance![0].sopClass!, "urn:oid:1.2.840.10008.5.1.4.1.1.7")
		XCTAssertEqual(inst!.study![0].series![0].instance![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092902")
		XCTAssertEqual(inst!.study![0].series![0].retrieveAETitle!, "SCP")
		XCTAssertEqual(inst!.study![0].series![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16750.2599092901")
		XCTAssertEqual(inst!.study![0].series![1].instance![0].retrieveUrl!, NSURL(string: "http://localhost/wado/SCP/2.16.124.113543.6003.189642796.63084.16748.2599092903")!)
		XCTAssertEqual(inst!.study![0].series![1].instance![0].sopClass!, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst!.study![0].series![1].instance![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst!.study![0].series![1].instance![1].retrieveUrl!, NSURL(string: "http://localhost/wado/SCP/2.16.124.113543.6003.189642796.63084.16750.2599092902")!)
		XCTAssertEqual(inst!.study![0].series![1].instance![1].sopClass!, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst!.study![0].series![1].instance![1].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092904")
		XCTAssertEqual(inst!.study![0].series![1].retrieveAETitle!, "SCP")
		XCTAssertEqual(inst!.study![0].series![1].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16750.2599092902")
		XCTAssertEqual(inst!.study![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16749.2599092904")
		XCTAssertEqual(inst!.title!.coding![0].code!, "113030")
		XCTAssertEqual(inst!.title!.coding![0].display!, "Manifest")
		XCTAssertEqual(inst!.title!.coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.title!.text!, "A set of objects that have been exported for sharing")
		XCTAssertEqual(inst!.uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092901")
	}
}
