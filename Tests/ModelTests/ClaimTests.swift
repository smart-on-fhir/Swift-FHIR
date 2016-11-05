//
//  ClaimTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 on 2016-11-04.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ClaimTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Claim {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.Claim {
		return try SwiftFHIR.Claim(json: json)
	}
	
	func testClaim1() {
		do {
			let instance = try runClaim1()
			try runClaim1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw")
		}
	}
	
	@discardableResult
	func runClaim1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Claim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-institutional.json")
		
		XCTAssertEqual(inst.coverage?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage?[0].focal ?? false)
		XCTAssertEqual(inst.coverage?[0].sequence, UInt(1))
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosis?.code, "654456")
		XCTAssertEqual(inst.diagnosis?[0].sequence, UInt(1))
		XCTAssertEqual(inst.enterer?.identifier?.system?.absoluteString, "http://jurisdiction.org/facilities/HOSP1234/users")
		XCTAssertEqual(inst.enterer?.identifier?.value, "UC1234")
		XCTAssertEqual(inst.facility?.identifier?.system?.absoluteString, "http://jurisdiction.org/facilities")
		XCTAssertEqual(inst.facility?.identifier?.value, "HOSP1234")
		XCTAssertEqual(inst.id, "960150")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyhospital.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "9612345")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, NSDecimalNumber(string: "125.0"))
		XCTAssertEqual(inst.item?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[0].service?.code, "exam")
		XCTAssertEqual(inst.item?[0].service?.system?.absoluteString, "http://hl7.org/fhir/ex-serviceproduct")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, NSDecimalNumber(string: "125.0"))
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payee?.type?.code, "provider")
		XCTAssertEqual(inst.priority?.code, "normal")
		XCTAssertEqual(inst.status, ClaimStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Claim</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?.code, "USD")
		XCTAssertEqual(inst.total?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.total?.value, NSDecimalNumber(string: "125.0"))
		XCTAssertEqual(inst.type?.code, "institutional")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim2() {
		do {
			let instance = try runClaim2()
			try runClaim2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw")
		}
	}
	
	@discardableResult
	func runClaim2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Claim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-oral-average.json")
		
		XCTAssertEqual(inst.coverage?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage?[0].focal ?? false)
		XCTAssertEqual(inst.coverage?[0].sequence, UInt(1))
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosis?.code, "123456")
		XCTAssertEqual(inst.diagnosis?[0].sequence, UInt(1))
		XCTAssertEqual(inst.id, "100151")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "12346")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst.item?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[0].service?.code, "1200")
		XCTAssertEqual(inst.item?[0].service?.system?.absoluteString, "http://hl7.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst.item?[1].bodySite?.code, "21")
		XCTAssertEqual(inst.item?[1].bodySite?.system?.absoluteString, "http://fdi.org/fhir/oraltoothcodes")
		XCTAssertEqual(inst.item?[1].careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.item?[1].net?.code, "USD")
		XCTAssertEqual(inst.item?[1].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[1].net?.value, NSDecimalNumber(string: "105.0"))
		XCTAssertEqual(inst.item?[1].sequence, UInt(2))
		XCTAssertEqual(inst.item?[1].service?.code, "21211")
		XCTAssertEqual(inst.item?[1].service?.system?.absoluteString, "http://hl7.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[1].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[1].subSite?[0].code, "L")
		XCTAssertEqual(inst.item?[1].subSite?[0].system?.absoluteString, "http://fdi.org/fhir/oralsurfacecodes")
		XCTAssertEqual(inst.item?[1].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[1].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[1].unitPrice?.value, NSDecimalNumber(string: "105.0"))
		XCTAssertEqual(inst.item?[2].bodySite?.code, "36")
		XCTAssertEqual(inst.item?[2].bodySite?.system?.absoluteString, "http://fdi.org/fhir/oraltoothcodes")
		XCTAssertEqual(inst.item?[2].careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.item?[2].detail?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[0].net?.value, NSDecimalNumber(string: "750.0"))
		XCTAssertEqual(inst.item?[2].detail?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[2].detail?[0].service?.code, "27211")
		XCTAssertEqual(inst.item?[2].detail?[0].service?.system?.absoluteString, "http://hl7.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[2].detail?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[0].unitPrice?.value, NSDecimalNumber(string: "750.0"))
		XCTAssertEqual(inst.item?[2].detail?[1].net?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[1].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[1].net?.value, NSDecimalNumber(string: "350.0"))
		XCTAssertEqual(inst.item?[2].detail?[1].sequence, UInt(2))
		XCTAssertEqual(inst.item?[2].detail?[1].service?.code, "lab")
		XCTAssertEqual(inst.item?[2].detail?[1].service?.system?.absoluteString, "http://hl7.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[2].detail?[1].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[1].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[1].unitPrice?.value, NSDecimalNumber(string: "350.0"))
		XCTAssertEqual(inst.item?[2].net?.code, "USD")
		XCTAssertEqual(inst.item?[2].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].net?.value, NSDecimalNumber(string: "1100.0"))
		XCTAssertEqual(inst.item?[2].sequence, UInt(3))
		XCTAssertEqual(inst.item?[2].service?.code, "27211")
		XCTAssertEqual(inst.item?[2].service?.system?.absoluteString, "http://hl7.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[2].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[2].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[2].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].unitPrice?.value, NSDecimalNumber(string: "1100.0"))
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payee?.type?.code, "provider")
		XCTAssertEqual(inst.priority?.code, "normal")
		XCTAssertEqual(inst.status, ClaimStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Oral Health Claim</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.code, "oral")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim3() {
		do {
			let instance = try runClaim3()
			try runClaim3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw")
		}
	}
	
	@discardableResult
	func runClaim3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Claim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-oral-contained-identifier.json")
		
		XCTAssertEqual(inst.contained?[0].id, "patient-1")
		XCTAssertEqual(inst.coverage?[0].coverage?.reference, "http://www.jurisdiction.com/nationalplan/123AB345")
		XCTAssertTrue(inst.coverage?[0].focal ?? false)
		XCTAssertEqual(inst.coverage?[0].sequence, UInt(1))
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosis?.code, "123456")
		XCTAssertEqual(inst.diagnosis?[0].sequence, UInt(1))
		XCTAssertEqual(inst.id, "100155")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "12347")
		XCTAssertEqual(inst.insurer?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/insurers")
		XCTAssertEqual(inst.insurer?.identifier?.value, "123456")
		XCTAssertEqual(inst.item?[0].careTeam?[0].provider?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/providerId")
		XCTAssertEqual(inst.item?[0].careTeam?[0].provider?.identifier?.value, "MD98765")
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst.item?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[0].service?.code, "1200")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst.organization?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/careorganizations")
		XCTAssertEqual(inst.organization?.identifier?.value, "HOSP12345")
		XCTAssertEqual(inst.patient?.reference, "#patient-1")
		XCTAssertEqual(inst.payee?.type?.code, "provider")
		XCTAssertEqual(inst.priority?.code, "normal")
		XCTAssertEqual(inst.status, ClaimStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">This example assumes a national health care scheme where patients, providers and organizations have known business identifiers.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.code, "oral")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim4() {
		do {
			let instance = try runClaim4()
			try runClaim4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw")
		}
	}
	
	@discardableResult
	func runClaim4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Claim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-oral-contained.json")
		
		XCTAssertEqual(inst.contained?[0].id, "org-insurer")
		XCTAssertEqual(inst.contained?[1].id, "org-org")
		XCTAssertEqual(inst.contained?[2].id, "provider-1")
		XCTAssertEqual(inst.contained?[3].id, "patient-1")
		XCTAssertEqual(inst.contained?[4].id, "coverage-1")
		XCTAssertEqual(inst.coverage?[0].coverage?.reference, "#coverage-1")
		XCTAssertTrue(inst.coverage?[0].focal ?? false)
		XCTAssertEqual(inst.coverage?[0].sequence, UInt(1))
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosis?.code, "123456")
		XCTAssertEqual(inst.diagnosis?[0].sequence, UInt(1))
		XCTAssertEqual(inst.id, "100152")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "12347")
		XCTAssertEqual(inst.insurer?.reference, "#org-insurer")
		XCTAssertEqual(inst.item?[0].careTeam?[0].provider?.reference, "#provider-1")
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst.item?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[0].service?.code, "1200")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst.organization?.reference, "#org-org")
		XCTAssertEqual(inst.patient?.reference, "#patient-1")
		XCTAssertEqual(inst.payee?.type?.code, "provider")
		XCTAssertEqual(inst.priority?.code, "normal")
		XCTAssertEqual(inst.status, ClaimStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Oral Health Claim</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.code, "oral")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim5() {
		do {
			let instance = try runClaim5()
			try runClaim5(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw")
		}
	}
	
	@discardableResult
	func runClaim5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Claim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-oral-identifier.json")
		
		XCTAssertEqual(inst.coverage?[0].coverage?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/nationalplan")
		XCTAssertEqual(inst.coverage?[0].coverage?.identifier?.value, "123AB345")
		XCTAssertTrue(inst.coverage?[0].focal ?? false)
		XCTAssertEqual(inst.coverage?[0].sequence, UInt(1))
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosis?.code, "123456")
		XCTAssertEqual(inst.diagnosis?[0].sequence, UInt(1))
		XCTAssertEqual(inst.id, "100154")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "12347")
		XCTAssertEqual(inst.insurer?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/insurers")
		XCTAssertEqual(inst.insurer?.identifier?.value, "123456")
		XCTAssertEqual(inst.item?[0].careTeam?[0].provider?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/providerId")
		XCTAssertEqual(inst.item?[0].careTeam?[0].provider?.identifier?.value, "MD98765")
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst.item?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[0].service?.code, "1200")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst.organization?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/careorganizations")
		XCTAssertEqual(inst.organization?.identifier?.value, "HOSP12345")
		XCTAssertEqual(inst.patient?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/nationalId")
		XCTAssertEqual(inst.patient?.identifier?.value, "123AB345")
		XCTAssertEqual(inst.payee?.type?.code, "provider")
		XCTAssertEqual(inst.priority?.code, "normal")
		XCTAssertEqual(inst.status, ClaimStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">This example assumes a national health care scheme where patients, providers and organizations have known business identifiers.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.code, "oral")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim6() {
		do {
			let instance = try runClaim6()
			try runClaim6(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw")
		}
	}
	
	@discardableResult
	func runClaim6(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Claim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-oral-orthoplan.json")
		
		XCTAssertEqual(inst.coverage?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage?[0].focal ?? false)
		XCTAssertEqual(inst.coverage?[0].sequence, UInt(1))
		XCTAssertEqual(inst.created?.description, "2015-03-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosis?.code, "123457")
		XCTAssertEqual(inst.diagnosis?[0].diagnosis?.system?.absoluteString, "http://hl7.org/fhir/sid/icd-10")
		XCTAssertEqual(inst.diagnosis?[0].sequence, UInt(1))
		XCTAssertEqual(inst.fundsReserve?.code, "provider")
		XCTAssertEqual(inst.id, "100153")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "12355")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.item?[0].detail?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[0].net?.value, NSDecimalNumber(string: "1000.0"))
		XCTAssertEqual(inst.item?[0].detail?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[0].detail?[0].service?.code, "ORTHOEXAM")
		XCTAssertEqual(inst.item?[0].detail?[0].service?.system?.absoluteString, "http://hl7.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[0].detail?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[0].unitPrice?.value, NSDecimalNumber(string: "1000.0"))
		XCTAssertEqual(inst.item?[0].detail?[1].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[1].net?.value, NSDecimalNumber(string: "1500.0"))
		XCTAssertEqual(inst.item?[0].detail?[1].sequence, UInt(2))
		XCTAssertEqual(inst.item?[0].detail?[1].service?.code, "ORTHODIAG")
		XCTAssertEqual(inst.item?[0].detail?[1].service?.system?.absoluteString, "http://hl7.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[0].detail?[1].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[1].unitPrice?.value, NSDecimalNumber(string: "1500.0"))
		XCTAssertEqual(inst.item?[0].detail?[2].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[2].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[2].net?.value, NSDecimalNumber(string: "500.0"))
		XCTAssertEqual(inst.item?[0].detail?[2].sequence, UInt(3))
		XCTAssertEqual(inst.item?[0].detail?[2].service?.code, "ORTHOINITIAL")
		XCTAssertEqual(inst.item?[0].detail?[2].service?.system?.absoluteString, "http://hl7.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[0].detail?[2].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[2].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[2].unitPrice?.value, NSDecimalNumber(string: "500.0"))
		XCTAssertEqual(inst.item?[0].detail?[3].quantity?.value, NSDecimalNumber(string: "24"))
		XCTAssertEqual(inst.item?[0].detail?[3].sequence, UInt(4))
		XCTAssertEqual(inst.item?[0].detail?[3].service?.code, "ORTHOMONTHS")
		XCTAssertEqual(inst.item?[0].detail?[3].service?.system?.absoluteString, "http://hl7.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[0].detail?[4].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[4].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[4].net?.value, NSDecimalNumber(string: "250.0"))
		XCTAssertEqual(inst.item?[0].detail?[4].quantity?.value, NSDecimalNumber(string: "24"))
		XCTAssertEqual(inst.item?[0].detail?[4].sequence, UInt(5))
		XCTAssertEqual(inst.item?[0].detail?[4].service?.code, "ORTHOPERIODIC")
		XCTAssertEqual(inst.item?[0].detail?[4].service?.system?.absoluteString, "http://hl7.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[0].detail?[4].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[4].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[4].unitPrice?.value, NSDecimalNumber(string: "250.0"))
		XCTAssertEqual(inst.item?[0].diagnosisLinkId?[0], UInt(1))
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, NSDecimalNumber(string: "9000.0"))
		XCTAssertEqual(inst.item?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[0].service?.code, "ORTHPLAN")
		XCTAssertEqual(inst.item?[0].service?.system?.absoluteString, "http://hl7.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2015-05-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, NSDecimalNumber(string: "9000.0"))
		XCTAssertEqual(inst.item?[1].bodySite?.code, "21")
		XCTAssertEqual(inst.item?[1].bodySite?.system?.absoluteString, "http://fdi.org/fhir/oraltoothcodes")
		XCTAssertEqual(inst.item?[1].careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.item?[1].net?.code, "USD")
		XCTAssertEqual(inst.item?[1].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[1].net?.value, NSDecimalNumber(string: "105.0"))
		XCTAssertEqual(inst.item?[1].sequence, UInt(2))
		XCTAssertEqual(inst.item?[1].service?.code, "21211")
		XCTAssertEqual(inst.item?[1].service?.system?.absoluteString, "http://hl7.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[1].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[1].subSite?[0].code, "L")
		XCTAssertEqual(inst.item?[1].subSite?[0].system?.absoluteString, "http://fdi.org/fhir/oralsurfacecodes")
		XCTAssertEqual(inst.item?[1].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[1].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[1].unitPrice?.value, NSDecimalNumber(string: "105.0"))
		XCTAssertEqual(inst.item?[2].bodySite?.code, "36")
		XCTAssertEqual(inst.item?[2].bodySite?.system?.absoluteString, "http://fdi.org/fhir/oraltoothcodes")
		XCTAssertEqual(inst.item?[2].careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.item?[2].detail?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[0].net?.value, NSDecimalNumber(string: "750.0"))
		XCTAssertEqual(inst.item?[2].detail?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[2].detail?[0].service?.code, "27211")
		XCTAssertEqual(inst.item?[2].detail?[0].service?.system?.absoluteString, "http://hl7.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[2].detail?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[0].unitPrice?.value, NSDecimalNumber(string: "750.0"))
		XCTAssertEqual(inst.item?[2].detail?[1].net?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[1].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[1].net?.value, NSDecimalNumber(string: "350.0"))
		XCTAssertEqual(inst.item?[2].detail?[1].sequence, UInt(2))
		XCTAssertEqual(inst.item?[2].detail?[1].service?.code, "lab")
		XCTAssertEqual(inst.item?[2].detail?[1].service?.system?.absoluteString, "http://hl7.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[2].detail?[1].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[1].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[1].unitPrice?.value, NSDecimalNumber(string: "350.0"))
		XCTAssertEqual(inst.item?[2].net?.code, "USD")
		XCTAssertEqual(inst.item?[2].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].net?.value, NSDecimalNumber(string: "1100.0"))
		XCTAssertEqual(inst.item?[2].sequence, UInt(3))
		XCTAssertEqual(inst.item?[2].service?.code, "27211")
		XCTAssertEqual(inst.item?[2].service?.system?.absoluteString, "http://hl7.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[2].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[2].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[2].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].unitPrice?.value, NSDecimalNumber(string: "1100.0"))
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payee?.type?.code, "provider")
		XCTAssertEqual(inst.priority?.code, "normal")
		XCTAssertEqual(inst.status, ClaimStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Oral Health Claim</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.code, "oral")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "proposed")!)
		
		return inst
	}
	
	func testClaim7() {
		do {
			let instance = try runClaim7()
			try runClaim7(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw")
		}
	}
	
	@discardableResult
	func runClaim7(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Claim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-pharmacy.json")
		
		XCTAssertEqual(inst.coverage?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage?[0].focal ?? false)
		XCTAssertEqual(inst.coverage?[0].sequence, UInt(1))
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosis?.code, "654456")
		XCTAssertEqual(inst.diagnosis?[0].sequence, UInt(1))
		XCTAssertEqual(inst.id, "760150")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happypharma.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "7612345")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, NSDecimalNumber(string: "60.0"))
		XCTAssertEqual(inst.item?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[0].service?.code, "smokecess")
		XCTAssertEqual(inst.item?[0].service?.system?.absoluteString, "http://hl7.org/fhir/ex-pharmaservice")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, NSDecimalNumber(string: "60.0"))
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payee?.type?.code, "provider")
		XCTAssertEqual(inst.priority?.code, "stat")
		XCTAssertEqual(inst.status, ClaimStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Pharmacy Claim</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.code, "pharmacy")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim8() {
		do {
			let instance = try runClaim8()
			try runClaim8(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw")
		}
	}
	
	@discardableResult
	func runClaim8(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Claim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-professional.json")
		
		XCTAssertEqual(inst.coverage?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage?[0].focal ?? false)
		XCTAssertEqual(inst.coverage?[0].sequence, UInt(1))
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosis?.code, "654456")
		XCTAssertEqual(inst.diagnosis?[0].sequence, UInt(1))
		XCTAssertEqual(inst.id, "860150")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happypdocs.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "8612345")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, NSDecimalNumber(string: "75.0"))
		XCTAssertEqual(inst.item?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[0].service?.code, "exam")
		XCTAssertEqual(inst.item?[0].service?.system?.absoluteString, "http://hl7.org/fhir/ex-serviceproduct")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, NSDecimalNumber(string: "75.0"))
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payee?.type?.code, "provider")
		XCTAssertEqual(inst.priority?.code, "normal")
		XCTAssertEqual(inst.status, ClaimStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Claim</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.code, "professional")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim9() {
		do {
			let instance = try runClaim9()
			try runClaim9(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw")
		}
	}
	
	@discardableResult
	func runClaim9(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Claim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-vision-glasses.json")
		
		XCTAssertEqual(inst.coverage?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage?[0].focal ?? false)
		XCTAssertEqual(inst.coverage?[0].sequence, UInt(1))
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosis?.code, "654321")
		XCTAssertEqual(inst.diagnosis?[0].sequence, UInt(1))
		XCTAssertEqual(inst.id, "660151")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happysight.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "6612346")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.item?[0].detail?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[0].net?.value, NSDecimalNumber(string: "100.0"))
		XCTAssertEqual(inst.item?[0].detail?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[0].detail?[0].service?.code, "frame")
		XCTAssertEqual(inst.item?[0].detail?[0].service?.system?.absoluteString, "http://hl7.org/fhir/ex-visionservice")
		XCTAssertEqual(inst.item?[0].detail?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[0].unitPrice?.value, NSDecimalNumber(string: "100.0"))
		XCTAssertEqual(inst.item?[0].detail?[1].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[1].net?.value, NSDecimalNumber(string: "100.0"))
		XCTAssertEqual(inst.item?[0].detail?[1].quantity?.value, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.item?[0].detail?[1].sequence, UInt(2))
		XCTAssertEqual(inst.item?[0].detail?[1].service?.code, "lens")
		XCTAssertEqual(inst.item?[0].detail?[1].service?.system?.absoluteString, "http://hl7.org/fhir/ex-visionservice")
		XCTAssertEqual(inst.item?[0].detail?[1].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[1].unitPrice?.value, NSDecimalNumber(string: "50.0"))
		XCTAssertEqual(inst.item?[0].detail?[2].factor, NSDecimalNumber(string: "0.07"))
		XCTAssertEqual(inst.item?[0].detail?[2].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[2].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[2].net?.value, NSDecimalNumber(string: "14.0"))
		XCTAssertEqual(inst.item?[0].detail?[2].sequence, UInt(3))
		XCTAssertEqual(inst.item?[0].detail?[2].service?.code, "fst")
		XCTAssertEqual(inst.item?[0].detail?[2].service?.system?.absoluteString, "http://hl7.org/fhir/ex-visionservice")
		XCTAssertEqual(inst.item?[0].detail?[2].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[2].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[2].unitPrice?.value, NSDecimalNumber(string: "200.0"))
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, NSDecimalNumber(string: "214.0"))
		XCTAssertEqual(inst.item?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[0].service?.code, "glasses")
		XCTAssertEqual(inst.item?[0].service?.system?.absoluteString, "http://hl7.org/fhir/ex-visionservice")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, NSDecimalNumber(string: "214.0"))
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payee?.type?.code, "provider")
		XCTAssertEqual(inst.prescription?.reference, "http://www.optdocs.com/prescription/12345")
		XCTAssertEqual(inst.priority?.code, "normal")
		XCTAssertEqual(inst.status, ClaimStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Vision Claim for Glasses</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.code, "vision")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim10() {
		do {
			let instance = try runClaim10()
			try runClaim10(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw")
		}
	}
	
	@discardableResult
	func runClaim10(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Claim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-vision.json")
		
		XCTAssertEqual(inst.coverage?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage?[0].focal ?? false)
		XCTAssertEqual(inst.coverage?[0].sequence, UInt(1))
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosis?.code, "654321")
		XCTAssertEqual(inst.diagnosis?[0].sequence, UInt(1))
		XCTAssertEqual(inst.id, "660150")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happysight.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "6612345")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, NSDecimalNumber(string: "80.0"))
		XCTAssertEqual(inst.item?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[0].service?.code, "exam")
		XCTAssertEqual(inst.item?[0].service?.system?.absoluteString, "http://hl7.org/fhir/ex-visionservice")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, NSDecimalNumber(string: "80.0"))
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payee?.type?.code, "provider")
		XCTAssertEqual(inst.priority?.code, "normal")
		XCTAssertEqual(inst.status, ClaimStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Vision Claim</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.code, "vision")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
}
