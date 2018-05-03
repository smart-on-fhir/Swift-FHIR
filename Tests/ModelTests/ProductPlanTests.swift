//
//  ProductPlanTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRProductPlan = Models.ProductPlan
#else
import SwiftFHIR
typealias SwiftFHIRProductPlan = SwiftFHIR.ProductPlan
#endif


class ProductPlanTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRProductPlan {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRProductPlan {
		return try SwiftFHIRProductPlan(json: json)
	}
	
	func testProductPlan1() {
		do {
			let instance = try runProductPlan1()
			try runProductPlan1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProductPlan successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProductPlan1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProductPlan {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "productplan-example.json")
		
		XCTAssertEqual(inst.address?[0].city, "Ann Arbor")
		XCTAssertEqual(inst.address?[0].country, "USA")
		XCTAssertEqual(inst.address?[0].line?[0], "3300 Washtenaw Avenue, Suite 227")
		XCTAssertEqual(inst.address?[0].postalCode, "48104")
		XCTAssertEqual(inst.address?[0].state, "MI")
		XCTAssertEqual(inst.administeredBy?.display, "Health Level Seven International")
		XCTAssertEqual(inst.administeredBy?.reference, "Organization/hl7")
		XCTAssertEqual(inst.alias?[0], "HL7 International")
		XCTAssertEqual(inst.coverage?[0].benefit?[0].item?[0].benefitValue?.code, "USD")
		XCTAssertEqual(inst.coverage?[0].benefit?[0].item?[0].benefitValue?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.coverage?[0].benefit?[0].item?[0].benefitValue?.value, "450.23")
		XCTAssertEqual(inst.coverage?[0].benefit?[0].item?[0].code?.text, "day")
		XCTAssertEqual(inst.coverage?[0].benefit?[0].type?.text, "Primary Care")
		XCTAssertEqual(inst.coverage?[0].type?.text, "Substance Abuse")
		XCTAssertEqual(inst.coverageArea?.display, "USSS Enterprise-D")
		XCTAssertEqual(inst.coverageArea?.reference, "Location/2")
		XCTAssertEqual(inst.endpoint?[0].reference, "Endpoint/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.name, "Health Level Seven International Staff Plan")
		XCTAssertEqual(inst.ownedBy?.display, "Health Level Seven International")
		XCTAssertEqual(inst.ownedBy?.reference, "Organization/hl7")
		XCTAssertEqual(inst.period?.start?.description, "2017-01-01")
		XCTAssertEqual(inst.plan?[0].premium?.code, "USD")
		XCTAssertEqual(inst.plan?[0].premium?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.plan?[0].premium?.value, "2000")
		XCTAssertEqual(inst.plan?[0].type?.text, "Silver")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProductPlan2() {
		do {
			let instance = try runProductPlan2()
			try runProductPlan2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProductPlan successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProductPlan2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProductPlan {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "productplan-example-onc.json")
		
		XCTAssertEqual(inst.address?[0].city, "Washington")
		XCTAssertEqual(inst.address?[0].country, "USA")
		XCTAssertEqual(inst.address?[0].line?[0], "123 Fake Street")
		XCTAssertEqual(inst.address?[0].postalCode, "20005")
		XCTAssertEqual(inst.address?[0].state, "DC")
		XCTAssertEqual(inst.administeredBy?.display, "Test")
		XCTAssertEqual(inst.administeredBy?.reference, "Organization/Test")
		XCTAssertEqual(inst.alias?[0], "PPO Sample Plan")
		XCTAssertEqual(inst.coverage?[0].benefit?[0].item?[0].code?.text, "primary care visit")
		XCTAssertEqual(inst.coverage?[0].benefit?[0].item?[1].code?.text, "specialty care visit")
		XCTAssertEqual(inst.coverage?[0].benefit?[0].type?.text, "Diagnostic and treatment services")
		XCTAssertEqual(inst.coverage?[0].type?.text, "Medical")
		XCTAssertEqual(inst.coverageArea?.display, "National")
		XCTAssertEqual(inst.coverageArea?.reference, "Location/2")
		XCTAssertEqual(inst.endpoint?[0].reference, "Endpoint/example")
		XCTAssertEqual(inst.id, "example-onc")
		XCTAssertEqual(inst.name, "Sample Plan")
		XCTAssertEqual(inst.ownedBy?.display, "Test")
		XCTAssertEqual(inst.ownedBy?.reference, "Organization/Test")
		XCTAssertEqual(inst.period?.start?.description, "2017-01-01")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[0].cost?[0].applicability?[0].code, "preferred")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[0].cost?[0].type?.text, "copay")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[0].cost?[0].value?.code, "USD")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[0].cost?[0].value?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[0].cost?[0].value?.value, "25")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[0].cost?[1].applicability?[0].code, "participating")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[0].cost?[1].type?.text, "coinsurance")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[0].cost?[1].value?.unit, "%")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[0].cost?[1].value?.value, "35")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[0].cost?[2].applicability?[0].code, "non-participating")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[0].cost?[2].type?.text, "coinsurance")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[0].cost?[2].value?.unit, "%")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[0].cost?[2].value?.value, "35")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[0].type?.text, "primary care office visit")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[1].cost?[0].applicability?[0].code, "preferred")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[1].cost?[0].type?.text, "copay")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[1].cost?[0].value?.code, "USD")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[1].cost?[0].value?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[1].cost?[0].value?.value, "35")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[1].cost?[1].applicability?[0].code, "participating")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[1].cost?[1].type?.text, "coinsurance")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[1].cost?[1].value?.unit, "%")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[1].cost?[1].value?.value, "35")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[1].cost?[2].applicability?[0].code, "non-participating")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[1].cost?[2].type?.text, "coinsurance")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[1].cost?[2].value?.unit, "%")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[1].cost?[2].value?.value, "35")
		XCTAssertEqual(inst.plan?[0].category?[0].benefit?[1].type?.text, "specialty care office visit")
		XCTAssertEqual(inst.plan?[0].category?[0].code?.text, "Medical")
		XCTAssertEqual(inst.plan?[0].premium?.code, "USD")
		XCTAssertEqual(inst.plan?[0].premium?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.plan?[0].premium?.value, "2000")
		XCTAssertEqual(inst.plan?[0].type?.text, "Standard")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
