//
//  ImagingManifestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 on 2016-10-26.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ImagingManifestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ImagingManifest {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.ImagingManifest {
		let instance = SwiftFHIR.ImagingManifest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testImagingManifest1() {
		do {
			let instance = try runImagingManifest1()
			try runImagingManifest1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ImagingManifest successfully, but threw")
		}
	}
	
	@discardableResult
	func runImagingManifest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ImagingManifest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "imagingmanifest-example.json")
		
		XCTAssertEqual(inst.author?.reference, "Practitioner/P2")
		XCTAssertEqual(inst.authoringTime?.description, "2014-11-20T11:01:20-08:00")
		XCTAssertEqual(inst.description_fhir, "1 SC image (screen snapshot) and 2 CT images to share a chest CT exam")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.patient?.reference, "Patient/dicom")
		XCTAssertEqual(inst.study?[0].baseLocation?[0].type?.code, "IID")
		XCTAssertEqual(inst.study?[0].baseLocation?[0].url?.absoluteString, "https://pacs.hospital.org/IHEInvokeImageDisplay")
		XCTAssertEqual(inst.study?[0].baseLocation?[1].type?.code, "WADO-RS")
		XCTAssertEqual(inst.study?[0].baseLocation?[1].url?.absoluteString, "https://pacs.hospital.org/wado-rs")
		XCTAssertEqual(inst.study?[0].imagingStudy?.reference, "ImagingStudy/I3")
		XCTAssertEqual(inst.study?[0].series?[0].baseLocation?[0].type?.code, "WADO-RS")
		XCTAssertEqual(inst.study?[0].series?[0].baseLocation?[0].url?.absoluteString, "https://vna.healthexchange.org/wado-rs")
		XCTAssertEqual(inst.study?[0].series?[0].instance?[0].sopClass, "urn:oid:1.2.840.10008.5.1.4.1.1.7")
		XCTAssertEqual(inst.study?[0].series?[0].instance?[0].uid, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092902")
		XCTAssertEqual(inst.study?[0].series?[0].uid, "urn:oid:2.16.124.113543.6003.189642796.63084.16750.2599092901")
		XCTAssertEqual(inst.study?[0].series?[1].instance?[0].sopClass, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.study?[0].series?[1].instance?[0].uid, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst.study?[0].series?[1].instance?[1].sopClass, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.study?[0].series?[1].instance?[1].uid, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092904")
		XCTAssertEqual(inst.study?[0].series?[1].uid, "urn:oid:2.16.124.113543.6003.189642796.63084.16750.2599092902")
		XCTAssertEqual(inst.study?[0].uid, "urn:oid:2.16.124.113543.6003.189642796.63084.16749.2599092904")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A set of images to share accompanying an report document, including one SC image and two CT image</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.title?.coding?[0].code, "113030")
		XCTAssertEqual(inst.title?.coding?[0].display, "Manifest")
		XCTAssertEqual(inst.title?.coding?[0].system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.title?.text, "A set of objects that have been exported for sharing")
		XCTAssertEqual(inst.uid, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092901")
		
		return inst
	}
}
