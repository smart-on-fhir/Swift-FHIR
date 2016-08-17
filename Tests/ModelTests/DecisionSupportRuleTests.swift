//
//  DecisionSupportRuleTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-08-17.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DecisionSupportRuleTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.DecisionSupportRule {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.DecisionSupportRule {
		let instance = SwiftFHIR.DecisionSupportRule(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDecisionSupportRule1() {
		do {
			let instance = try runDecisionSupportRule1()
			try runDecisionSupportRule1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test DecisionSupportRule successfully, but threw")
		}
	}
	
	@discardableResult
	func runDecisionSupportRule1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.DecisionSupportRule {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "decisionsupportrule-example.json")
		
		XCTAssertEqual(inst.action?[0].customization?[0].expression, "ChlamydiaScreeningRequest")
		XCTAssertEqual(inst.action?[0].customization?[0].path, "~")
		XCTAssertEqual(inst.action?[0].title, "Patient has not had chlamydia screening within the recommended timeframe...")
		XCTAssertEqual(inst.condition, "NoScreening")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.library?[0].reference, "Library/ChlamydiaScreening_CDS_UsingCommon")
		XCTAssertEqual(inst.moduleMetadata?.description_fhir, "Chlamydia Screening CDS Example Using Common")
		XCTAssertEqual(inst.moduleMetadata?.identifier?[0].use, "official")
		XCTAssertEqual(inst.moduleMetadata?.identifier?[0].value, "ChlamydiaScreening_CDS_UsingCommon")
		XCTAssertEqual(inst.moduleMetadata?.publicationDate?.description, "2015-07-22")
		XCTAssertEqual(inst.moduleMetadata?.status, "draft")
		XCTAssertEqual(inst.moduleMetadata?.title, "Chalmydia Screening CDS Example Using Common")
		XCTAssertEqual(inst.moduleMetadata?.topic?[0].text, "Chlamydia Screeening")
		XCTAssertEqual(inst.moduleMetadata?.type, "module")
		XCTAssertEqual(inst.moduleMetadata?.version, "2.0.0")
		XCTAssertEqual(inst.text?.div, "<div>Chalmydia Screening CDS Example Using Common</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
