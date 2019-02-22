//
//  ImagingStudyTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRImagingStudy = Models.ImagingStudy
#else
import SwiftFHIR
typealias SwiftFHIRImagingStudy = SwiftFHIR.ImagingStudy
#endif


class ImagingStudyTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRImagingStudy {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRImagingStudy {
		return try SwiftFHIRImagingStudy(json: json)
	}
	
	func testImagingStudy1() {
		do {
			let instance = try runImagingStudy1()
			try runImagingStudy1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ImagingStudy successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runImagingStudy1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRImagingStudy {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "imagingstudy-example-xr.json")
		
		XCTAssertEqual(inst.basedOn?[0].reference, "ServiceRequest/example")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.endpoint?[0].reference, "Endpoint/example-wadors")
		XCTAssertEqual(inst.id, "example-xr")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:dicom:uid")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430046")
		XCTAssertEqual(inst.identifier?[1].assigner?.reference, "Organization/dicom-organization")
		XCTAssertEqual(inst.identifier?[1].type?.coding?[0].code, "ACSN")
		XCTAssertEqual(inst.identifier?[1].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0203")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[1].value, "W12342398")
		XCTAssertEqual(inst.identifier?[2].assigner?.reference, "Organization/dicom-organization")
		XCTAssertEqual(inst.identifier?[2].use, IdentifierUse(rawValue: "secondary")!)
		XCTAssertEqual(inst.identifier?[2].value, "55551234")
		XCTAssertEqual(inst.interpreter?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.modality?[0].code, "DX")
		XCTAssertEqual(inst.modality?[0].system?.absoluteString, "http://dicom.nema.org/resources/ontology/DCM")
		XCTAssertEqual(inst.note?[0].text, "XR Wrist 3+ Views")
		XCTAssertEqual(inst.numberOfInstances, 2)
		XCTAssertEqual(inst.numberOfSeries, 1)
		XCTAssertEqual(inst.procedureCode?[0].coding?[0].code, "RPID2589")
		XCTAssertEqual(inst.procedureCode?[0].coding?[0].display, "XR Wrist 3+ Views")
		XCTAssertEqual(inst.procedureCode?[0].coding?[0].system?.absoluteString, "http://www.radlex.org")
		XCTAssertEqual(inst.procedureCode?[0].text, "XR Wrist 3+ Views")
		XCTAssertEqual(inst.procedureReference?.reference, "Procedure/example")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].code, "357009")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].display, "Closed fracture of trapezoidal bone of wrist")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.referrer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.series?[0].bodySite?.code, "T-15460")
		XCTAssertEqual(inst.series?[0].bodySite?.display, "Wrist Joint")
		XCTAssertEqual(inst.series?[0].bodySite?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.series?[0].description_fhir, "XR Wrist 3+ Views")
		XCTAssertEqual(inst.series?[0].endpoint?[0].reference, "Endpoint/example-wadors")
		XCTAssertEqual(inst.series?[0].instance?[0].number, 1)
		XCTAssertEqual(inst.series?[0].instance?[0].sopClass?.code, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.series?[0].instance?[0].sopClass?.system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.series?[0].instance?[0].title, "PA VIEW")
		XCTAssertEqual(inst.series?[0].instance?[0].uid, "2.16.124.113543.6003.1154777499.30246.19789.3503430045.1.1")
		XCTAssertEqual(inst.series?[0].instance?[1].number, 2)
		XCTAssertEqual(inst.series?[0].instance?[1].sopClass?.code, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.series?[0].instance?[1].sopClass?.system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.series?[0].instance?[1].title, "LL VIEW")
		XCTAssertEqual(inst.series?[0].instance?[1].uid, "2.16.124.113543.6003.1154777499.30246.19789.3503430045.1.2")
		XCTAssertEqual(inst.series?[0].laterality?.code, "419161000")
		XCTAssertEqual(inst.series?[0].laterality?.display, "Unilateral left")
		XCTAssertEqual(inst.series?[0].laterality?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.series?[0].modality?.code, "DX")
		XCTAssertEqual(inst.series?[0].modality?.system?.absoluteString, "http://dicom.nema.org/resources/ontology/DCM")
		XCTAssertEqual(inst.series?[0].number, 3)
		XCTAssertEqual(inst.series?[0].numberOfInstances, 2)
		XCTAssertEqual(inst.series?[0].performer?[0].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.series?[0].performer?[0].function?.coding?[0].code, "PRF")
		XCTAssertEqual(inst.series?[0].performer?[0].function?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.series?[0].started?.description, "2011-01-01T11:01:20+03:00")
		XCTAssertEqual(inst.series?[0].uid, "2.16.124.113543.6003.1154777499.30246.19789.3503430045.1")
		XCTAssertEqual(inst.started?.description, "2017-01-01T11:01:20+03:00")
		XCTAssertEqual(inst.status, ImagingStudyStatus(rawValue: "available")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/dicom")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">XR Wrist 3+ Views. John Smith (MRN: 09236). Accession: W12342398. Performed: 2017-01-01. 1 series, 2 images.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testImagingStudy2() {
		do {
			let instance = try runImagingStudy2()
			try runImagingStudy2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ImagingStudy successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runImagingStudy2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRImagingStudy {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "imagingstudy-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:dicom:uid")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.numberOfInstances, 1)
		XCTAssertEqual(inst.numberOfSeries, 1)
		XCTAssertEqual(inst.series?[0].bodySite?.code, "67734004")
		XCTAssertEqual(inst.series?[0].bodySite?.display, "Upper Trunk Structure")
		XCTAssertEqual(inst.series?[0].bodySite?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.series?[0].description_fhir, "CT Surview 180")
		XCTAssertEqual(inst.series?[0].instance?[0].number, 1)
		XCTAssertEqual(inst.series?[0].instance?[0].sopClass?.code, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.series?[0].instance?[0].sopClass?.system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.series?[0].instance?[0].uid, "2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst.series?[0].modality?.code, "CT")
		XCTAssertEqual(inst.series?[0].modality?.system?.absoluteString, "http://dicom.nema.org/resources/ontology/DCM")
		XCTAssertEqual(inst.series?[0].number, 3)
		XCTAssertEqual(inst.series?[0].numberOfInstances, 1)
		XCTAssertEqual(inst.series?[0].uid, "2.16.124.113543.6003.2588828330.45298.17418.2723805630")
		XCTAssertEqual(inst.started?.description, "2011-01-01T11:01:20+03:00")
		XCTAssertEqual(inst.status, ImagingStudyStatus(rawValue: "available")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/dicom")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">CT Chest.  John Smith (MRN: 09236). Accession: W12342398. Performed: 2011-01-01. 3 series, 12 images.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
