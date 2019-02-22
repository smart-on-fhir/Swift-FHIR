//
//  MedicinalProductAuthorizationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRMedicinalProductAuthorization = Models.MedicinalProductAuthorization
#else
import SwiftFHIR
typealias SwiftFHIRMedicinalProductAuthorization = SwiftFHIR.MedicinalProductAuthorization
#endif


class MedicinalProductAuthorizationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMedicinalProductAuthorization {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMedicinalProductAuthorization {
		return try SwiftFHIRMedicinalProductAuthorization(json: json)
	}
	
	func testMedicinalProductAuthorization1() {
		do {
			let instance = try runMedicinalProductAuthorization1()
			try runMedicinalProductAuthorization1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MedicinalProductAuthorization successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMedicinalProductAuthorization1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMedicinalProductAuthorization {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "medicinalproductauthorization-example.json")
		
		XCTAssertEqual(inst.country?[0].coding?[0].code, "EU")
		XCTAssertEqual(inst.country?[0].coding?[0].system?.absoluteString, "http://ema.europa.eu/example/country")
		XCTAssertEqual(inst.dataExclusivityPeriod?.end?.description, "2020-08-15")
		XCTAssertEqual(inst.dataExclusivityPeriod?.start?.description, "2010-08-15")
		XCTAssertEqual(inst.dateOfFirstAuthorization?.description, "2010-08-15")
		XCTAssertEqual(inst.holder?.reference, "Organization/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://ema.europa.eu/example/marketingAuthorisationNumber")
		XCTAssertEqual(inst.identifier?[0].value, "EU/1/11/999/001")
		XCTAssertEqual(inst.internationalBirthDate?.description, "2010-08-15")
		XCTAssertEqual(inst.jurisdictionalAuthorization?[0].country?.coding?[0].code, "NO")
		XCTAssertEqual(inst.jurisdictionalAuthorization?[0].country?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/countryCode")
		XCTAssertEqual(inst.jurisdictionalAuthorization?[0].id, "1")
		XCTAssertEqual(inst.jurisdictionalAuthorization?[0].identifier?[0].system?.absoluteString, "http://ema.europa.eu/example/marketingauthorisationnumber")
		XCTAssertEqual(inst.jurisdictionalAuthorization?[0].identifier?[0].value, "123-456-789")
		XCTAssertEqual(inst.jurisdictionalAuthorization?[1].country?.coding?[0].code, "NO")
		XCTAssertEqual(inst.jurisdictionalAuthorization?[1].country?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/countryCode")
		XCTAssertEqual(inst.jurisdictionalAuthorization?[1].id, "2")
		XCTAssertEqual(inst.jurisdictionalAuthorization?[1].identifier?[0].system?.absoluteString, "http://ema.europa.eu/example/marketingauthorisationnumber")
		XCTAssertEqual(inst.jurisdictionalAuthorization?[1].identifier?[0].value, "123-456-123")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.procedure?.application?[0].dateDateTime?.description, "2015-08-01")
		XCTAssertEqual(inst.procedure?.application?[0].identifier?.system?.absoluteString, "http://ema.europa.eu/example/applicationidentifier-number")
		XCTAssertEqual(inst.procedure?.application?[0].identifier?.value, "IA38G")
		XCTAssertEqual(inst.procedure?.application?[0].type?.coding?[0].code, "GroupTypeIAVariationNotification")
		XCTAssertEqual(inst.procedure?.application?[0].type?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/marketingAuthorisationApplicationType")
		XCTAssertEqual(inst.procedure?.datePeriod?.end?.description, "2015-08-21")
		XCTAssertEqual(inst.procedure?.datePeriod?.start?.description, "2015-08-02")
		XCTAssertEqual(inst.procedure?.identifier?.system?.absoluteString, "http://ema.europa.eu/example/procedureidentifier-number")
		XCTAssertEqual(inst.procedure?.identifier?.value, "EMEA/H/C/009999/IA/0099/G")
		XCTAssertEqual(inst.procedure?.type?.coding?[0].code, "VariationTypeIA")
		XCTAssertEqual(inst.procedure?.type?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/marketingAuthorisationProcedureType")
		XCTAssertEqual(inst.regulator?.reference, "Organization/example")
		XCTAssertEqual(inst.status?.coding?[0].code, "active")
		XCTAssertEqual(inst.status?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/authorisationstatus")
		XCTAssertEqual(inst.statusDate?.description, "2015-01-14")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.validityPeriod?.end?.description, "2020-05-20")
		XCTAssertEqual(inst.validityPeriod?.start?.description, "2015-08-16")
		
		return inst
	}
}
