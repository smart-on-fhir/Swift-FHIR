//
//  TestReportTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class TestReportTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.TestReport {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.TestReport {
		return try SwiftFHIR.TestReport(json: json)
	}
	
	func testTestReport1() {
		do {
			let instance = try runTestReport1()
			try runTestReport1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test TestReport successfully, but threw")
		}
	}
	
	@discardableResult
	func runTestReport1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.TestReport {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "testreport-example.json")
		
		XCTAssertEqual(inst.id, "testreport-example")
		XCTAssertEqual(inst.issued?.description, "2016-10-07T08:25:34-05:00")
		XCTAssertEqual(inst.name, "TestReport Example for TestScript Example")
		XCTAssertEqual(inst.participant?[0].display, "Crucible")
		XCTAssertEqual(inst.participant?[0].type, TestReportParticipantType(rawValue: "test-engine")!)
		XCTAssertEqual(inst.participant?[0].uri?.absoluteString, "http://projectcrucible.org")
		XCTAssertEqual(inst.participant?[1].display, "HealthIntersections STU3")
		XCTAssertEqual(inst.participant?[1].type, TestReportParticipantType(rawValue: "server")!)
		XCTAssertEqual(inst.participant?[1].uri?.absoluteString, "http://fhir3.healthintersections.com.au/open")
		XCTAssertEqual(inst.score, NSDecimalNumber(string: "100.0"))
		XCTAssertEqual(inst.setup?.action?[0].operation?.detail?.absoluteString, "http://projectcrucible.org/permalink/1")
		XCTAssertEqual(inst.setup?.action?[0].operation?.message, "DELETE Patient")
		XCTAssertEqual(inst.setup?.action?[0].operation?.result, TestReportResultCodes(rawValue: "pass")!)
		XCTAssertEqual(inst.setup?.action?[1].assert?.detail, "http://projectcrucible.org/permalink/1")
		XCTAssertEqual(inst.setup?.action?[1].assert?.message, "HTTP 204")
		XCTAssertEqual(inst.setup?.action?[1].assert?.result, TestReportResultCodes(rawValue: "pass")!)
		XCTAssertEqual(inst.setup?.action?[2].operation?.detail?.absoluteString, "http://projectcrucible.org/permalink/1")
		XCTAssertEqual(inst.setup?.action?[2].operation?.message, "POST Patient/fixture-patient-create")
		XCTAssertEqual(inst.setup?.action?[2].operation?.result, TestReportResultCodes(rawValue: "pass")!)
		XCTAssertEqual(inst.setup?.action?[3].assert?.detail, "http://projectcrucible.org/permalink/1")
		XCTAssertEqual(inst.setup?.action?[3].assert?.message, "HTTP 201")
		XCTAssertEqual(inst.setup?.action?[3].assert?.result, TestReportResultCodes(rawValue: "pass")!)
		XCTAssertEqual(inst.status, TestReportStatus(rawValue: "complete")!)
		XCTAssertEqual(inst.teardown?.action?[0].operation?.detail?.absoluteString, "http://projectcrucible.org/permalink/3")
		XCTAssertEqual(inst.teardown?.action?[0].operation?.message, "DELETE Patient/fixture-patient-create.")
		XCTAssertEqual(inst.teardown?.action?[0].operation?.result, TestReportResultCodes(rawValue: "pass")!)
		XCTAssertEqual(inst.test?[0].action?[0].operation?.detail?.absoluteString, "http://projectcrucible.org/permalink/2")
		XCTAssertEqual(inst.test?[0].action?[0].operation?.message, "GET Patient/fixture-patient-create")
		XCTAssertEqual(inst.test?[0].action?[0].operation?.result, TestReportResultCodes(rawValue: "pass")!)
		XCTAssertEqual(inst.test?[0].action?[1].assert?.detail, "http://projectcrucible.org/permalink/2")
		XCTAssertEqual(inst.test?[0].action?[1].assert?.message, "HTTP 200")
		XCTAssertEqual(inst.test?[0].action?[1].assert?.result, TestReportResultCodes(rawValue: "pass")!)
		XCTAssertEqual(inst.test?[0].action?[2].assert?.detail, "http://projectcrucible.org/permalink/2")
		XCTAssertEqual(inst.test?[0].action?[2].assert?.message, "Last-Modified Present")
		XCTAssertEqual(inst.test?[0].action?[2].assert?.result, TestReportResultCodes(rawValue: "pass")!)
		XCTAssertEqual(inst.test?[0].action?[3].assert?.detail, "http://projectcrucible.org/permalink/2")
		XCTAssertEqual(inst.test?[0].action?[3].assert?.message, "Response is Patient")
		XCTAssertEqual(inst.test?[0].action?[3].assert?.result, TestReportResultCodes(rawValue: "pass")!)
		XCTAssertEqual(inst.test?[0].action?[4].assert?.detail, "http://projectcrucible.org/permalink/2")
		XCTAssertEqual(inst.test?[0].action?[4].assert?.message, "Response validates")
		XCTAssertEqual(inst.test?[0].action?[4].assert?.result, TestReportResultCodes(rawValue: "pass")!)
		XCTAssertEqual(inst.test?[0].action?[5].assert?.detail, "http://projectcrucible.org/permalink/2")
		XCTAssertEqual(inst.test?[0].action?[5].assert?.message, "Patient.name.family 'Chalmers'")
		XCTAssertEqual(inst.test?[0].action?[5].assert?.result, TestReportResultCodes(rawValue: "pass")!)
		XCTAssertEqual(inst.test?[0].action?[6].assert?.detail, "http://projectcrucible.org/permalink/2")
		XCTAssertEqual(inst.test?[0].action?[6].assert?.message, "Patient.name.given 'Peter'")
		XCTAssertEqual(inst.test?[0].action?[6].assert?.result, TestReportResultCodes(rawValue: "pass")!)
		XCTAssertEqual(inst.test?[0].action?[7].assert?.detail, "http://projectcrucible.org/permalink/2")
		XCTAssertEqual(inst.test?[0].action?[7].assert?.message, "Patient.name.family 'Chalmers'")
		XCTAssertEqual(inst.test?[0].action?[7].assert?.result, TestReportResultCodes(rawValue: "pass")!)
		XCTAssertEqual(inst.test?[0].action?[8].assert?.detail, "http://projectcrucible.org/permalink/2")
		XCTAssertEqual(inst.test?[0].action?[8].assert?.message, "Patient.name.family 'Chalmers'")
		XCTAssertEqual(inst.test?[0].action?[8].assert?.result, TestReportResultCodes(rawValue: "pass")!)
		XCTAssertEqual(inst.test?[0].action?[9].assert?.detail, "http://projectcrucible.org/permalink/2")
		XCTAssertEqual(inst.test?[0].action?[9].assert?.message, "Patient expected values.")
		XCTAssertEqual(inst.test?[0].action?[9].assert?.result, TestReportResultCodes(rawValue: "pass")!)
		XCTAssertEqual(inst.test?[0].description_fhir, "Read a Patient and validate response.")
		XCTAssertEqual(inst.test?[0].id, "01-ReadPatient")
		XCTAssertEqual(inst.test?[0].name, "Read Patient")
		XCTAssertEqual(inst.testScript?.reference, "TestScript/testscript-example")
		XCTAssertEqual(inst.tester, "HL7 Execution Engine")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
