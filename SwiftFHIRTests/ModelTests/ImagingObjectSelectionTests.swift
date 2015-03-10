//
//  ImagingObjectSelectionTests.swift
//  ImagingObjectSelectionTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ImagingObjectSelectionTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> ImagingObjectSelection {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> ImagingObjectSelection {
		let instance = ImagingObjectSelection(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testImagingObjectSelection1() {
		let instance = testImagingObjectSelection1_impl()
		testImagingObjectSelection1_impl(json: instance.asJSON())
	}
	
	func testImagingObjectSelection1_impl(json: JSONDictionary? = nil) -> ImagingObjectSelection {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "imagingobjectselection-example.json")
		
		XCTAssertEqual(inst.authoringTime!.description, "2014-11-20T11:01:20-08:00")
		XCTAssertEqual(inst.description_fhir!, "1 SC image (screen snapshot) and 2 CT images to share a chest CT exam")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.patient!.reference!, "Patient/dicom")
		XCTAssertEqual(inst.study![0].series![0].instance![0].sopClass!, "urn:oid:1.2.840.10008.5.1.4.1.1.7")
		XCTAssertEqual(inst.study![0].series![0].instance![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092902")
		XCTAssertEqual(inst.study![0].series![0].instance![0].url!.absoluteString!, "http://localhost/wado/SCP/2.16.124.113543.6003.189642796.63084.16749.2599092904")
		XCTAssertEqual(inst.study![0].series![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16750.2599092901")
		XCTAssertEqual(inst.study![0].series![1].instance![0].sopClass!, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.study![0].series![1].instance![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst.study![0].series![1].instance![0].url!.absoluteString!, "http://localhost/wado/SCP/2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst.study![0].series![1].instance![1].sopClass!, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.study![0].series![1].instance![1].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092904")
		XCTAssertEqual(inst.study![0].series![1].instance![1].url!.absoluteString!, "http://localhost/wado/SCP/2.16.124.113543.6003.189642796.63084.16750.2599092902")
		XCTAssertEqual(inst.study![0].series![1].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16750.2599092902")
		XCTAssertEqual(inst.study![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16749.2599092904")
		XCTAssertEqual(inst.text!.div!, "<div>A set of images accompanying to an exam document, including one SC image and two CT images, to publish the exam sharing</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.title!.coding![0].code!, "113030")
		XCTAssertEqual(inst.title!.coding![0].display!, "Manifest")
		XCTAssertEqual(inst.title!.coding![0].system!.absoluteString!, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.title!.text!, "A set of objects that have been exported for sharing")
		XCTAssertEqual(inst.uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092901")
		
		return inst
	}
}
