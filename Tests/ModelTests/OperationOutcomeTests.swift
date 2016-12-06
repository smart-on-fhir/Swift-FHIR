//
//  OperationOutcomeTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class OperationOutcomeTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.OperationOutcome {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.OperationOutcome {
		return try SwiftFHIR.OperationOutcome(json: json)
	}
	
	func testOperationOutcome1() {
		do {
			let instance = try runOperationOutcome1()
			try runOperationOutcome1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test OperationOutcome successfully, but threw")
		}
	}
	
	@discardableResult
	func runOperationOutcome1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.OperationOutcome {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "operationoutcome-example-allok.json")
		
		XCTAssertEqual(inst.id, "allok")
		XCTAssertEqual(inst.issue?[0].code, IssueType(rawValue: "informational")!)
		XCTAssertEqual(inst.issue?[0].details?.text, "All OK")
		XCTAssertEqual(inst.issue?[0].severity, IssueSeverity(rawValue: "information")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		
		return inst
	}
	
	func testOperationOutcome2() {
		do {
			let instance = try runOperationOutcome2()
			try runOperationOutcome2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test OperationOutcome successfully, but threw")
		}
	}
	
	@discardableResult
	func runOperationOutcome2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.OperationOutcome {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "operationoutcome-example-break-the-glass.json")
		
		XCTAssertEqual(inst.id, "break-the-glass")
		XCTAssertEqual(inst.issue?[0].code, IssueType(rawValue: "suppressed")!)
		XCTAssertEqual(inst.issue?[0].details?.coding?[0].code, "ETREAT")
		XCTAssertEqual(inst.issue?[0].details?.coding?[0].display, "Emergency Treatment")
		XCTAssertEqual(inst.issue?[0].details?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3-ActReason")
		XCTAssertEqual(inst.issue?[0].details?.text, "Additional information may be available using the Break-The-Glass Protocol")
		XCTAssertEqual(inst.issue?[0].severity, IssueSeverity(rawValue: "information")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testOperationOutcome3() {
		do {
			let instance = try runOperationOutcome3()
			try runOperationOutcome3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test OperationOutcome successfully, but threw")
		}
	}
	
	@discardableResult
	func runOperationOutcome3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.OperationOutcome {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "operationoutcome-example-exception.json")
		
		XCTAssertEqual(inst.id, "exception")
		XCTAssertEqual(inst.issue?[0].code, IssueType(rawValue: "exception")!)
		XCTAssertEqual(inst.issue?[0].details?.text, "SQL Link Communication Error (dbx = 34234)")
		XCTAssertEqual(inst.issue?[0].severity, IssueSeverity(rawValue: "error")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		
		return inst
	}
	
	func testOperationOutcome4() {
		do {
			let instance = try runOperationOutcome4()
			try runOperationOutcome4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test OperationOutcome successfully, but threw")
		}
	}
	
	@discardableResult
	func runOperationOutcome4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.OperationOutcome {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "operationoutcome-example-searchfail.json")
		
		XCTAssertEqual(inst.id, "searchfail")
		XCTAssertEqual(inst.issue?[0].code, IssueType(rawValue: "code-invalid")!)
		XCTAssertEqual(inst.issue?[0].details?.text, "The \"name\" parameter has the modifier \"exact\" which is not supported by this server")
		XCTAssertEqual(inst.issue?[0].location?[0], "http.name:exact")
		XCTAssertEqual(inst.issue?[0].severity, IssueSeverity(rawValue: "fatal")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testOperationOutcome5() {
		do {
			let instance = try runOperationOutcome5()
			try runOperationOutcome5(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test OperationOutcome successfully, but threw")
		}
	}
	
	@discardableResult
	func runOperationOutcome5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.OperationOutcome {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "operationoutcome-example-validationfail.json")
		
		XCTAssertEqual(inst.id, "validationfail")
		XCTAssertEqual(inst.issue?[0].code, IssueType(rawValue: "structure")!)
		XCTAssertEqual(inst.issue?[0].details?.text, "Error parsing resource XML (Unknown Content \"label\"")
		XCTAssertEqual(inst.issue?[0].location?[0], "/f:Patient/f:identifier")
		XCTAssertEqual(inst.issue?[0].severity, IssueSeverity(rawValue: "error")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testOperationOutcome6() {
		do {
			let instance = try runOperationOutcome6()
			try runOperationOutcome6(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test OperationOutcome successfully, but threw")
		}
	}
	
	@discardableResult
	func runOperationOutcome6(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.OperationOutcome {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "operationoutcome-example.json")
		
		XCTAssertEqual(inst.id, "101")
		XCTAssertEqual(inst.issue?[0].code, IssueType(rawValue: "code-invalid")!)
		XCTAssertEqual(inst.issue?[0].details?.text, "The code \"W\" is not known and not legal in this context")
		XCTAssertEqual(inst.issue?[0].diagnostics, "Acme.Interop.FHIRProcessors.Patient.processGender line 2453")
		XCTAssertEqual(inst.issue?[0].location?[0], "/f:Person/f:gender")
		XCTAssertEqual(inst.issue?[0].severity, IssueSeverity(rawValue: "error")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		
		return inst
	}
}
