//
//  ProtocolFHIRTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-08-17.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ProtocolFHIRTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ProtocolFHIR {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.ProtocolFHIR {
		let instance = SwiftFHIR.ProtocolFHIR(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProtocolFHIR1() {
		do {
			let instance = try runProtocolFHIR1()
			try runProtocolFHIR1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ProtocolFHIR successfully, but threw")
		}
	}
	
	@discardableResult
	func runProtocolFHIR1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ProtocolFHIR {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "protocol-example.json")
		
		XCTAssertEqual(inst.author?.display, "National Heart, Lung, and Blood Institute http://www.nhlbi.nih.gov/health-pro/guidelines/current/obesity-guidelines/e_textbook/txgd/algorthm/algorthm.htm")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.org")
		XCTAssertEqual(inst.identifier?[0].value, "example-1")
		XCTAssertEqual(inst.purpose, "Example of A medical algorithm for assessment and treatment of overweight and obesity")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.step?[0].activity?[0].detail?.category, "procedure")
		XCTAssertEqual(inst.step?[0].activity?[0].detail?.code?.coding?[0].code, "39156-5")
		XCTAssertEqual(inst.step?[0].activity?[0].detail?.code?.coding?[0].display, "Body mass index (BMI) [Ratio]")
		XCTAssertEqual(inst.step?[0].activity?[0].detail?.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.step?[0].activity?[0].detail?.description_fhir, "Extra information on activity ")
		XCTAssertEqual(inst.step?[0].activity?[0].detail?.performer?[0].display, "Nurse Ratched")
		XCTAssertEqual(inst.step?[0].name, "Measure BMI")
		XCTAssertEqual(inst.step?[0].precondition?.union?[0].condition?.type?.coding?[0].code, "1234")
		XCTAssertEqual(inst.step?[0].precondition?.union?[0].condition?.type?.coding?[0].display, "Obesity")
		XCTAssertEqual(inst.step?[0].precondition?.union?[0].condition?.type?.coding?[0].system?.absoluteString, "http://acme.org")
		XCTAssertTrue(inst.step?[0].precondition?.union?[0].condition?.valueBoolean ?? false)
		XCTAssertEqual(inst.step?[0].precondition?.union?[1].condition?.type?.text, "BMI in last 2 years")
		XCTAssertFalse(inst.step?[0].precondition?.union?[1].condition?.valueBoolean ?? true)
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.title, "Obesity Assessment Protocol")
		XCTAssertEqual(inst.type, "condition")
		
		return inst
	}
	
	func testProtocolFHIR2() {
		do {
			let instance = try runProtocolFHIR2()
			try runProtocolFHIR2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ProtocolFHIR successfully, but threw")
		}
	}
	
	@discardableResult
	func runProtocolFHIR2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ProtocolFHIR {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "protocol-study-profile-example.json")
		
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#arm.name")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[0].valueString, "0.5 mg Dose")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#arm.description")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].valueString, "Administering 0.5mg of [Drug A]")
		XCTAssertEqual(inst.extension_fhir?[0].id, "arm-dose1")
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#arm")
		XCTAssertEqual(inst.extension_fhir?[1].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#arm.name")
		XCTAssertEqual(inst.extension_fhir?[1].extension_fhir?[0].valueString, "dose2")
		XCTAssertEqual(inst.extension_fhir?[1].extension_fhir?[1].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#arm.description")
		XCTAssertEqual(inst.extension_fhir?[1].extension_fhir?[1].valueString, "Administering 1.0mg of [Drug A]")
		XCTAssertEqual(inst.extension_fhir?[1].id, "arm-dose2")
		XCTAssertEqual(inst.extension_fhir?[1].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#arm")
		XCTAssertEqual(inst.extension_fhir?[2].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#epoch.name")
		XCTAssertEqual(inst.extension_fhir?[2].extension_fhir?[0].valueString, "Screening")
		XCTAssertEqual(inst.extension_fhir?[2].id, "epoch-screening")
		XCTAssertEqual(inst.extension_fhir?[2].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#epoch")
		XCTAssertEqual(inst.extension_fhir?[3].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#epoch.name")
		XCTAssertEqual(inst.extension_fhir?[3].extension_fhir?[0].valueString, "Single blind run-in")
		XCTAssertEqual(inst.extension_fhir?[3].id, "epoch-single-blind-run-in")
		XCTAssertEqual(inst.extension_fhir?[3].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#epoch")
		XCTAssertEqual(inst.extension_fhir?[4].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#epoch.name")
		XCTAssertEqual(inst.extension_fhir?[4].extension_fhir?[0].valueString, "Treatment")
		XCTAssertEqual(inst.extension_fhir?[4].id, "epoch-treatment-phase")
		XCTAssertEqual(inst.extension_fhir?[4].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#epoch")
		XCTAssertEqual(inst.extension_fhir?[5].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#epoch.name")
		XCTAssertEqual(inst.extension_fhir?[5].extension_fhir?[0].valueString, "Follow up")
		XCTAssertEqual(inst.extension_fhir?[5].id, "epoch-follow-up")
		XCTAssertEqual(inst.extension_fhir?[5].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#epoch")
		XCTAssertEqual(inst.id, "study")
		XCTAssertEqual(inst.purpose, "Defines the execution of study AD-4833PNFP-341")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.step?[0].description_fhir, "Screen")
		XCTAssertEqual(inst.step?[0].exit?.description_fhir, "Screening assessments complete")
		XCTAssertEqual(inst.step?[0].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.arm")
		XCTAssertEqual(inst.step?[0].extension_fhir?[0].valueUri?.absoluteString, "#arm-dose1")
		XCTAssertEqual(inst.step?[0].extension_fhir?[1].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.epoch")
		XCTAssertEqual(inst.step?[0].extension_fhir?[1].valueUri?.absoluteString, "#epoch-screening")
		XCTAssertEqual(inst.step?[0].extension_fhir?[2].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.armSequence")
		XCTAssertEqual(inst.step?[0].extension_fhir?[2].valueInteger, 1)
		XCTAssertEqual(inst.step?[0].name, "SCRN")
		XCTAssertEqual(inst.step?[0].precondition?.description_fhir, "Informed Consent")
		XCTAssertEqual(inst.step?[1].description_fhir, "Single Blind Run-In")
		XCTAssertEqual(inst.step?[1].duration?.code, "wk")
		XCTAssertEqual(inst.step?[1].duration?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.step?[1].duration?.value, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.step?[1].exit?.description_fhir, "1 week after start of Element")
		XCTAssertEqual(inst.step?[1].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.arm")
		XCTAssertEqual(inst.step?[1].extension_fhir?[0].valueUri?.absoluteString, "#arm-dose1")
		XCTAssertEqual(inst.step?[1].extension_fhir?[1].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.epoch")
		XCTAssertEqual(inst.step?[1].extension_fhir?[1].valueUri?.absoluteString, "#epoch-single-blind-run-in")
		XCTAssertEqual(inst.step?[1].extension_fhir?[2].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.armSequence")
		XCTAssertEqual(inst.step?[1].extension_fhir?[2].valueInteger, 2)
		XCTAssertEqual(inst.step?[1].extension_fhir?[3].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.armAssignment")
		XCTAssertEqual(inst.step?[1].extension_fhir?[3].valueString, "Randomized to Dose 1")
		XCTAssertEqual(inst.step?[1].name, "SBRI")
		XCTAssertEqual(inst.step?[1].precondition?.description_fhir, "Initial Single Blind Placebo dose")
		XCTAssertEqual(inst.step?[2].description_fhir, "Administer 0.5mg [Drug A] QD")
		XCTAssertEqual(inst.step?[2].duration?.code, "wk")
		XCTAssertEqual(inst.step?[2].duration?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.step?[2].duration?.value, NSDecimalNumber(string: "30"))
		XCTAssertEqual(inst.step?[2].exit?.description_fhir, "30 weeks after start of Element")
		XCTAssertEqual(inst.step?[2].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.arm")
		XCTAssertEqual(inst.step?[2].extension_fhir?[0].valueUri?.absoluteString, "#arm-dose1")
		XCTAssertEqual(inst.step?[2].extension_fhir?[1].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.epoch")
		XCTAssertEqual(inst.step?[2].extension_fhir?[1].valueUri?.absoluteString, "#epoch-treatment-phase")
		XCTAssertEqual(inst.step?[2].extension_fhir?[2].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.armSequence")
		XCTAssertEqual(inst.step?[2].extension_fhir?[2].valueInteger, 3)
		XCTAssertEqual(inst.step?[2].name, "DOSE 1")
		XCTAssertEqual(inst.step?[2].precondition?.description_fhir, "First dose of treatment where total drug dose of [Drug A] per day is 0.5 mg.")
		XCTAssertEqual(inst.step?[3].description_fhir, "Follow-Up")
		XCTAssertEqual(inst.step?[3].exit?.description_fhir, "2 weeks after start of Element")
		XCTAssertEqual(inst.step?[3].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.arm")
		XCTAssertEqual(inst.step?[3].extension_fhir?[0].valueUri?.absoluteString, "#arm-dose1")
		XCTAssertEqual(inst.step?[3].extension_fhir?[1].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.epoch")
		XCTAssertEqual(inst.step?[3].extension_fhir?[1].valueUri?.absoluteString, "#epoch-follow-up")
		XCTAssertEqual(inst.step?[3].extension_fhir?[2].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.armSequence")
		XCTAssertEqual(inst.step?[3].extension_fhir?[2].valueInteger, 4)
		XCTAssertEqual(inst.step?[3].name, "FLWUP")
		XCTAssertEqual(inst.step?[3].precondition?.description_fhir, "Last dose of treatment")
		XCTAssertEqual(inst.step?[4].description_fhir, "Screen")
		XCTAssertEqual(inst.step?[4].exit?.description_fhir, "Screening assessments complete")
		XCTAssertEqual(inst.step?[4].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.arm")
		XCTAssertEqual(inst.step?[4].extension_fhir?[0].valueUri?.absoluteString, "#arm-dose2")
		XCTAssertEqual(inst.step?[4].extension_fhir?[1].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.epoch")
		XCTAssertEqual(inst.step?[4].extension_fhir?[1].valueUri?.absoluteString, "#epoch-screening")
		XCTAssertEqual(inst.step?[4].extension_fhir?[2].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.armSequence")
		XCTAssertEqual(inst.step?[4].extension_fhir?[2].valueInteger, 1)
		XCTAssertEqual(inst.step?[4].name, "SCRN")
		XCTAssertEqual(inst.step?[4].precondition?.description_fhir, "Informed Consent")
		XCTAssertEqual(inst.step?[5].description_fhir, "Single Blind Run-In")
		XCTAssertEqual(inst.step?[5].duration?.code, "wk")
		XCTAssertEqual(inst.step?[5].duration?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.step?[5].duration?.value, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.step?[5].exit?.description_fhir, "1 week after start of Element")
		XCTAssertEqual(inst.step?[5].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.arm")
		XCTAssertEqual(inst.step?[5].extension_fhir?[0].valueUri?.absoluteString, "#arm-dose2")
		XCTAssertEqual(inst.step?[5].extension_fhir?[1].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.epoch")
		XCTAssertEqual(inst.step?[5].extension_fhir?[1].valueUri?.absoluteString, "#epoch-single-blind-run-in")
		XCTAssertEqual(inst.step?[5].extension_fhir?[2].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.armSequence")
		XCTAssertEqual(inst.step?[5].extension_fhir?[2].valueInteger, 2)
		XCTAssertEqual(inst.step?[5].extension_fhir?[3].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.armAssignment")
		XCTAssertEqual(inst.step?[5].extension_fhir?[3].valueString, "Randomized to 1.0 mg")
		XCTAssertEqual(inst.step?[5].name, "SBRI")
		XCTAssertEqual(inst.step?[5].precondition?.description_fhir, "First dose of Single Blind Placebo")
		XCTAssertEqual(inst.step?[6].description_fhir, "Administer 1.0 mg [Drug A] QD")
		XCTAssertEqual(inst.step?[6].duration?.code, "wk")
		XCTAssertEqual(inst.step?[6].duration?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.step?[6].duration?.value, NSDecimalNumber(string: "30"))
		XCTAssertEqual(inst.step?[6].exit?.description_fhir, "30 weeks after start of Element")
		XCTAssertEqual(inst.step?[6].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.arm")
		XCTAssertEqual(inst.step?[6].extension_fhir?[0].valueUri?.absoluteString, "#arm-dose2")
		XCTAssertEqual(inst.step?[6].extension_fhir?[1].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.epoch")
		XCTAssertEqual(inst.step?[6].extension_fhir?[1].valueUri?.absoluteString, "#epoch-treatment-phase")
		XCTAssertEqual(inst.step?[6].extension_fhir?[2].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.armSequence")
		XCTAssertEqual(inst.step?[6].extension_fhir?[2].valueInteger, 3)
		XCTAssertEqual(inst.step?[6].name, "1.0 mg Dose")
		XCTAssertEqual(inst.step?[6].precondition?.description_fhir, "Intial dose of treatment where total drug dose of [Drug A] per day is 1.0 mg.")
		XCTAssertEqual(inst.step?[7].description_fhir, "Follow-Up")
		XCTAssertEqual(inst.step?[7].exit?.description_fhir, "2 weeks after start of Element")
		XCTAssertEqual(inst.step?[7].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.arm")
		XCTAssertEqual(inst.step?[7].extension_fhir?[0].valueUri?.absoluteString, "#arm-pio45mgs")
		XCTAssertEqual(inst.step?[7].extension_fhir?[1].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.epoch")
		XCTAssertEqual(inst.step?[7].extension_fhir?[1].valueUri?.absoluteString, "#epoch-follow-up")
		XCTAssertEqual(inst.step?[7].extension_fhir?[2].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.armSequence")
		XCTAssertEqual(inst.step?[7].extension_fhir?[2].valueInteger, 4)
		XCTAssertEqual(inst.step?[7].name, "FLWUP")
		XCTAssertEqual(inst.step?[7].precondition?.description_fhir, "Last dose of treatment")
		XCTAssertEqual(inst.step?[8].activity?[0].detail?.category, "encounter")
		XCTAssertEqual(inst.step?[8].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.armSequence")
		XCTAssertEqual(inst.step?[8].extension_fhir?[0].valueInteger, 1)
		XCTAssertEqual(inst.step?[8].name, "VISIT 1")
		XCTAssertEqual(inst.step?[8].precondition?.description_fhir, "Screening")
		XCTAssertEqual(inst.step?[9].activity?[0].detail?.category, "encounter")
		XCTAssertEqual(inst.step?[9].extension_fhir?[0].url?.absoluteString, "http://example.org/example-do-not-use/Profilestudyprotocol#step.armSequence")
		XCTAssertEqual(inst.step?[9].extension_fhir?[0].valueInteger, 2)
		XCTAssertEqual(inst.step?[9].name, "VISIT 2")
		XCTAssertEqual(inst.step?[9].precondition?.description_fhir, "single-blind placebo start")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type, "study")
		
		return inst
	}
}
