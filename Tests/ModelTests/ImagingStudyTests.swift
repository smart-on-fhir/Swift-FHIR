//
//  ImagingStudyTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11828 on 2017-04-18.
//  2017, SMART Health IT.
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
		
		XCTAssertEqual(inst.accession?.assigner?.reference, "Organization/dicom-organization")
		XCTAssertEqual(inst.accession?.type?.coding?[0].code, "ACSN")
		XCTAssertEqual(inst.accession?.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.accession?.use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.accession?.value, "W12342398")
		XCTAssertEqual(inst.availability, "ONLINE")
		XCTAssertEqual(inst.basedOn?[0].reference, "ProcedureRequest/example")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.description_fhir, "XR Wrist 3+ Views")
		XCTAssertEqual(inst.endpoint?[0].reference, "Endpoint/example-wadors")
		XCTAssertEqual(inst.id, "example-xr")
		XCTAssertEqual(inst.identifier?[0].assigner?.reference, "Organization/dicom-organization")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "secondary")!)
		XCTAssertEqual(inst.identifier?[0].value, "55551234")
		XCTAssertEqual(inst.interpreter?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.modalityList?[0].code, "DX")
		XCTAssertEqual(inst.modalityList?[0].system?.absoluteString, "http://dicom.nema.org/resources/ontology/DCM")
		XCTAssertEqual(inst.numberOfInstances, 2)
		XCTAssertEqual(inst.numberOfSeries, 1)
		XCTAssertEqual(inst.patient?.reference, "Patient/dicom")
		XCTAssertEqual(inst.procedureCode?[0].coding?[0].code, "RPID2589")
		XCTAssertEqual(inst.procedureCode?[0].coding?[0].display, "XR Wrist 3+ Views")
		XCTAssertEqual(inst.procedureCode?[0].coding?[0].system?.absoluteString, "http://www.radlex.org")
		XCTAssertEqual(inst.procedureCode?[0].text, "XR Wrist 3+ Views")
		XCTAssertEqual(inst.procedureReference?[0].reference, "Procedure/example")
		XCTAssertEqual(inst.reason?.coding?[0].code, "357009")
		XCTAssertEqual(inst.reason?.coding?[0].display, "Closed fracture of trapezoidal bone of wrist")
		XCTAssertEqual(inst.reason?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.referrer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.series?[0].availability, "ONLINE")
		XCTAssertEqual(inst.series?[0].bodySite?.code, "T-15460")
		XCTAssertEqual(inst.series?[0].bodySite?.display, "Wrist Joint")
		XCTAssertEqual(inst.series?[0].bodySite?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.series?[0].description_fhir, "XR Wrist 3+ Views")
		XCTAssertEqual(inst.series?[0].endpoint?[0].reference, "Endpoint/example-wadors")
		XCTAssertEqual(inst.series?[0].instance?[0].number, 1)
		XCTAssertEqual(inst.series?[0].instance?[0].sopClass?.absoluteString, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.series?[0].instance?[0].title, "PA VIEW")
		XCTAssertEqual(inst.series?[0].instance?[0].uid?.absoluteString, "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045.1.1")
		XCTAssertEqual(inst.series?[0].instance?[1].number, 2)
		XCTAssertEqual(inst.series?[0].instance?[1].sopClass?.absoluteString, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.series?[0].instance?[1].title, "LL VIEW")
		XCTAssertEqual(inst.series?[0].instance?[1].uid?.absoluteString, "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045.1.2")
		XCTAssertEqual(inst.series?[0].laterality?.code, "419161000")
		XCTAssertEqual(inst.series?[0].laterality?.display, "Unilateral left")
		XCTAssertEqual(inst.series?[0].laterality?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.series?[0].modality?.code, "DX")
		XCTAssertEqual(inst.series?[0].modality?.system?.absoluteString, "http://dicom.nema.org/resources/ontology/DCM")
		XCTAssertEqual(inst.series?[0].number, 3)
		XCTAssertEqual(inst.series?[0].numberOfInstances, 2)
		XCTAssertEqual(inst.series?[0].performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.series?[0].started?.description, "2011-01-01T11:01:20+03:00")
		XCTAssertEqual(inst.series?[0].uid?.absoluteString, "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045.1")
		XCTAssertEqual(inst.started?.description, "2017-01-01T11:01:20+03:00")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">XR Wrist 3+ Views. John Smith (MRN: 09236). Accession: W12342398. Performed: 2017-01-01. 1 series, 2 images.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.uid?.absoluteString, "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430046")
		
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
		XCTAssertEqual(inst.numberOfInstances, 1)
		XCTAssertEqual(inst.numberOfSeries, 1)
		XCTAssertEqual(inst.patient?.reference, "Patient/dicom")
		XCTAssertEqual(inst.series?[0].bodySite?.code, "67734004")
		XCTAssertEqual(inst.series?[0].bodySite?.display, "Upper Trunk Structure")
		XCTAssertEqual(inst.series?[0].bodySite?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.series?[0].description_fhir, "CT Surview 180")
		XCTAssertEqual(inst.series?[0].instance?[0].number, 1)
		XCTAssertEqual(inst.series?[0].instance?[0].sopClass?.absoluteString, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.series?[0].instance?[0].uid?.absoluteString, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst.series?[0].modality?.code, "CT")
		XCTAssertEqual(inst.series?[0].modality?.system?.absoluteString, "http://dicom.nema.org/resources/ontology/DCM")
		XCTAssertEqual(inst.series?[0].number, 3)
		XCTAssertEqual(inst.series?[0].numberOfInstances, 1)
		XCTAssertEqual(inst.series?[0].uid?.absoluteString, "urn:oid:2.16.124.113543.6003.2588828330.45298.17418.2723805630")
		XCTAssertEqual(inst.started?.description, "2011-01-01T11:01:20+03:00")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">CT Chest.  John Smith (MRN: 09236). Accession: W12342398. Performed: 2011-01-01. 3 series, 12 images.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.uid?.absoluteString, "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045")
		
		return inst
	}
}
