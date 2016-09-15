//
//  MediaTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class MediaTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Media {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Media {
		let instance = SwiftFHIR.Media(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedia1() {
		do {
			let instance = try runMedia1()
			try runMedia1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Media successfully, but threw")
		}
	}
	
	@discardableResult
	func runMedia1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Media {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "media-example-dicom.json")
		
		XCTAssertEqual(inst.content?.contentType, "application/dicom")
		XCTAssertEqual(inst.deviceName, "G.E. Medical Systems")
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://nema.org/fhir/extensions#0002-0010")
		XCTAssertEqual(inst.extension_fhir?[0].valueUri?.absoluteString, "urn:oid:1.2.840.10008.1.2.1")
		XCTAssertEqual(inst.height, UInt(480))
		XCTAssertEqual(inst.id, "1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].type?.text, "InstanceUID")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "http://acme-imaging.com/accession/2012")
		XCTAssertEqual(inst.identifier?[1].type?.text, "accessionNo")
		XCTAssertEqual(inst.identifier?[1].value, "1234567")
		XCTAssertEqual(inst.identifier?[2].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[2].type?.text, "studyId")
		XCTAssertEqual(inst.identifier?[2].value, "urn:oid:1.2.840.113619.2.21.848.34082.0.538976288.3")
		XCTAssertEqual(inst.identifier?[3].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[3].type?.text, "seriesId")
		XCTAssertEqual(inst.identifier?[3].value, "urn:oid:1.2.840.113619.2.21.3408.700.0.757923840.3.0")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.subtype?.coding?[0].code, "US")
		XCTAssertEqual(inst.subtype?.coding?[0].system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type, "photo")
		XCTAssertEqual(inst.view?.coding?[0].code, "399067008")
		XCTAssertEqual(inst.view?.coding?[0].display, "Lateral projection")
		XCTAssertEqual(inst.view?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.width, UInt(640))
		
		return inst
	}
	
	func testMedia2() {
		do {
			let instance = try runMedia2()
			try runMedia2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Media successfully, but threw")
		}
	}
	
	@discardableResult
	func runMedia2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Media {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "media-example-sound.json")
		
		XCTAssertEqual(inst.content?.contentType, "audio/mpeg")
		XCTAssertEqual(inst.content?.data, Base64Binary(value: "dG9vIGJpZyB0b28gaW5jbHVkZSB0aGUgd2hvbGU="))
		XCTAssertEqual(inst.content?.id, "a1")
		XCTAssertEqual(inst.duration, UInt(65))
		XCTAssertEqual(inst.id, "sound")
		XCTAssertEqual(inst.operator_fhir?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.subject?.reference, "Patient/xcda")
		XCTAssertEqual(inst.text?.div, "<div>Sound recording of speech example for Patient Henry Levin (MRN 12345):<br/><img alt=\"diagram\" src=\"#11\"/></div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type, "video")
		
		return inst
	}
	
	func testMedia3() {
		do {
			let instance = try runMedia3()
			try runMedia3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Media successfully, but threw")
		}
	}
	
	@discardableResult
	func runMedia3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Media {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "media-example.json")
		
		XCTAssertEqual(inst.content?.contentType, "image/gif")
		XCTAssertEqual(inst.content?.creation?.description, "2009-09-03")
		XCTAssertEqual(inst.content?.id, "a1")
		XCTAssertEqual(inst.deviceName, "Acme Camera")
		XCTAssertEqual(inst.frames, UInt(1))
		XCTAssertEqual(inst.height, UInt(145))
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.operator_fhir?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.subject?.reference, "Patient/xcda")
		XCTAssertEqual(inst.subtype?.coding?[0].code, "diagram")
		XCTAssertEqual(inst.subtype?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/media-method")
		XCTAssertEqual(inst.text?.div, "<div>Diagram for Patient Henry Levin (MRN 12345):<br/><img alt=\"diagram\" src=\"#11\"/></div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type, "photo")
		XCTAssertEqual(inst.width, UInt(126))
		
		return inst
	}
}
