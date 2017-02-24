//
//  ImagingManifestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11377 on 2017-02-24.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRImagingManifest = Models.ImagingManifest
#else
import SwiftFHIR
typealias SwiftFHIRImagingManifest = SwiftFHIR.ImagingManifest
#endif


class ImagingManifestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRImagingManifest {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRImagingManifest {
		return try SwiftFHIRImagingManifest(json: json)
	}
	
	func testImagingManifest1() {
		do {
			let instance = try runImagingManifest1()
			try runImagingManifest1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ImagingManifest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runImagingManifest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRImagingManifest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "imagingmanifest-example.json")
		
		XCTAssertEqual(inst.author?.reference, "Practitioner/example")
		XCTAssertEqual(inst.authoringTime?.description, "2014-11-20T11:01:20-08:00")
		XCTAssertEqual(inst.description_fhir, "1 SC image (screen snapshot) and 2 CT images to share a chest CT exam")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.value, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092901")
		XCTAssertEqual(inst.patient?.reference, "Patient/dicom")
		XCTAssertEqual(inst.study?[0].endpoint?[0].reference, "Endpoint/example-iid")
		XCTAssertEqual(inst.study?[0].endpoint?[1].reference, "Endpoint/example-wadors")
		XCTAssertEqual(inst.study?[0].imagingStudy?.reference, "ImagingStudy/example")
		XCTAssertEqual(inst.study?[0].series?[0].endpoint?[0].reference, "Endpoint/example-wadors")
		XCTAssertEqual(inst.study?[0].series?[0].instance?[0].sopClass?.absoluteString, "urn:oid:1.2.840.10008.5.1.4.1.1.7")
		XCTAssertEqual(inst.study?[0].series?[0].instance?[0].uid?.absoluteString, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092902")
		XCTAssertEqual(inst.study?[0].series?[0].uid?.absoluteString, "urn:oid:2.16.124.113543.6003.189642796.63084.16750.2599092901")
		XCTAssertEqual(inst.study?[0].series?[1].instance?[0].sopClass?.absoluteString, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.study?[0].series?[1].instance?[0].uid?.absoluteString, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst.study?[0].series?[1].instance?[1].sopClass?.absoluteString, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.study?[0].series?[1].instance?[1].uid?.absoluteString, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092904")
		XCTAssertEqual(inst.study?[0].series?[1].uid?.absoluteString, "urn:oid:2.16.124.113543.6003.189642796.63084.16750.2599092902")
		XCTAssertEqual(inst.study?[0].uid?.absoluteString, "urn:oid:2.16.124.113543.6003.189642796.63084.16749.2599092904")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A set of images to share accompanying an report document, including one SC image and two CT image</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
