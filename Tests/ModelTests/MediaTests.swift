//
//  MediaTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRMedia = Models.Media
#else
import SwiftFHIR
typealias SwiftFHIRMedia = SwiftFHIR.Media
#endif


class MediaTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMedia {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMedia {
		return try SwiftFHIRMedia(json: json)
	}
	
	func testMedia1() {
		do {
			let instance = try runMedia1()
			try runMedia1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Media successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMedia1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMedia {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "media-example.json")
		
		XCTAssertEqual(inst.content?.contentType, "image/gif")
		XCTAssertEqual(inst.content?.creation?.description, "2009-09-03")
		XCTAssertEqual(inst.content?.id, "a1")
		XCTAssertEqual(inst.createdDateTime?.description, "2017-12-17")
		XCTAssertEqual(inst.device?.display, "Acme Camera")
		XCTAssertEqual(inst.frames, 1)
		XCTAssertEqual(inst.height, 145)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.issued?.description, "2017-12-17T14:56:18Z")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.modality?.coding?[0].code, "diagram")
		XCTAssertEqual(inst.modality?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/media-modality")
		XCTAssertEqual(inst.operator_fhir?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/xcda")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "image")
		XCTAssertEqual(inst.type?.coding?[0].display, "Image")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/media-type")
		XCTAssertEqual(inst.width, 126)
		
		return inst
	}
	
	func testMedia2() {
		do {
			let instance = try runMedia2()
			try runMedia2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Media successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMedia2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMedia {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "media-example-dicom.json")
		
		XCTAssertEqual(inst.content?.contentType, "application/dicom")
		XCTAssertEqual(inst.device?.display, "G.E. Medical Systems")
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://nema.org/fhir/extensions#0002-0010")
		XCTAssertEqual(inst.extension_fhir?[0].valueUri?.absoluteString, "urn:oid:1.2.840.10008.1.2.1")
		XCTAssertEqual(inst.height, 480)
		XCTAssertEqual(inst.id, "1.2.840.11361907579238403408700.3.1.04.19970327150033")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:dicom:uid")
		XCTAssertEqual(inst.identifier?[0].type?.text, "InstanceUID")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:1.2.840.11361907579238403408700.3.1.04.19970327150033")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "http://acme-imaging.com/accession/2012")
		XCTAssertEqual(inst.identifier?[1].type?.text, "accessionNo")
		XCTAssertEqual(inst.identifier?[1].value, "1234567")
		XCTAssertEqual(inst.identifier?[2].system?.absoluteString, "urn:dicom:uid")
		XCTAssertEqual(inst.identifier?[2].type?.text, "studyId")
		XCTAssertEqual(inst.identifier?[2].value, "urn:oid:1.2.840.113619.2.21.848.34082.0.538976288.3")
		XCTAssertEqual(inst.identifier?[3].system?.absoluteString, "urn:dicom:uid")
		XCTAssertEqual(inst.identifier?[3].type?.text, "seriesId")
		XCTAssertEqual(inst.identifier?[3].value, "urn:oid:1.2.840.113619.2.21.3408.700.0.757923840.3.0")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.modality?.coding?[0].code, "US")
		XCTAssertEqual(inst.modality?.coding?[0].system?.absoluteString, "http://dicom.nema.org/resources/ontology/DCM")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.view?.coding?[0].code, "399067008")
		XCTAssertEqual(inst.view?.coding?[0].display, "Lateral projection")
		XCTAssertEqual(inst.view?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.width, 640)
		
		return inst
	}
	
	func testMedia3() {
		do {
			let instance = try runMedia3()
			try runMedia3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Media successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMedia3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMedia {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "media-example-xray.json")
		
		XCTAssertEqual(inst.basedOn?[0].identifier?.assigner?.display, "XYZ Medical Clinic")
		XCTAssertEqual(inst.basedOn?[0].identifier?.system?.absoluteString, "http://someclinic.org/fhir/NamingSystem/imaging-orders")
		XCTAssertEqual(inst.basedOn?[0].identifier?.value, "111222")
		XCTAssertEqual(inst.bodySite?.coding?[0].code, "85151006")
		XCTAssertEqual(inst.bodySite?.coding?[0].display, "Structure of left hand (body structure)")
		XCTAssertEqual(inst.bodySite?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.content?.contentType, "image/jpeg")
		XCTAssertEqual(inst.content?.creation?.description, "2016-03-15")
		XCTAssertEqual(inst.content?.id, "a1")
		XCTAssertEqual(inst.content?.url?.absoluteString, "http://someimagingcenter.org/fhir/Binary/A12345")
		XCTAssertEqual(inst.createdDateTime?.description, "2016-03-15")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.height, 432)
		XCTAssertEqual(inst.id, "xray")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.modality?.coding?[0].code, "39714003")
		XCTAssertEqual(inst.modality?.coding?[0].display, "Skeletal X-ray of wrist and hand")
		XCTAssertEqual(inst.modality?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Xray of left hand for Patient Henry Levin (MRN 12345) 2016-03-15</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.width, 640)
		
		return inst
	}
	
	func testMedia4() {
		do {
			let instance = try runMedia4()
			try runMedia4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Media successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMedia4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMedia {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "media-example-sound.json")
		
		XCTAssertEqual(inst.content?.contentType, "audio/mpeg")
		XCTAssertEqual(inst.content?.data, Base64Binary(value: "dG9vIGJpZyB0b28gaW5jbHVkZSB0aGUgd2hvbGU="))
		XCTAssertEqual(inst.content?.id, "a1")
		XCTAssertEqual(inst.duration, "65")
		XCTAssertEqual(inst.id, "sound")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.operator_fhir?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/xcda")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Sound recording of speech example for Patient Henry Levin (MRN 12345):<br/><img src=\"#11\" alt=\"diagram\"/></div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
