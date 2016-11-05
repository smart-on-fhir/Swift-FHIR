//
//  TestReport.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/TestReport) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
Describes a set of tests.

TestReport is a resource that includes summary information on the results of executing a TestScript.
*/
open class TestReport: DomainResource {
	override open class var resourceType: String {
		get { return "TestReport" }
	}
	
	/// External identifier.
	public var identifier: Identifier?
	
	/// When the TestScript was executed and this TestReport was generated.
	public var issued: DateTime?
	
	/// Informal name of the executed TestScript.
	public var name: String?
	
	/// A participant in the test execution, either the execution engine, a client, or a server.
	public var participant: [TestReportParticipant]?
	
	/// The final score (percentage of tests passed) resulting from the execution of the TestScript.
	public var score: NSDecimalNumber?
	
	/// The results of the series of required setup operations before the tests were executed.
	public var setup: TestReportSetup?
	
	/// The status of the TestReport.
	public var status: TestReportStatus?
	
	/// The results of running the series of required clean up steps.
	public var teardown: TestReportTeardown?
	
	/// A test executed from the test script.
	public var test: [TestReportTest]?
	
	/// Reference to the  version-specific TestScript that was executed to produce this TestReport.
	public var testScript: Reference?
	
	/// Name of the tester producing this report (Organization or individual).
	public var tester: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: TestReportStatus, testScript: Reference) {
		self.init()
		self.status = status
		self.testScript = testScript
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["issued"] {
			presentKeys.insert("issued")
			if let val = exist as? String {
				self.issued = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "issued", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["participant"] {
			presentKeys.insert("participant")
			if let val = exist as? [FHIRJSON] {
				do {
					self.participant = try TestReportParticipant.instantiate(fromArray: val, owner: self) as? [TestReportParticipant]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "participant"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "participant", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["score"] {
			presentKeys.insert("score")
			if let val = exist as? NSNumber {
				self.score = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "score", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["setup"] {
			presentKeys.insert("setup")
			if let val = exist as? FHIRJSON {
				do {
					self.setup = try TestReportSetup(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "setup"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "setup", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = TestReportStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["teardown"] {
			presentKeys.insert("teardown")
			if let val = exist as? FHIRJSON {
				do {
					self.teardown = try TestReportTeardown(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "teardown"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "teardown", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["test"] {
			presentKeys.insert("test")
			if let val = exist as? [FHIRJSON] {
				do {
					self.test = try TestReportTest.instantiate(fromArray: val, owner: self) as? [TestReportTest]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "test"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "test", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["testScript"] {
			presentKeys.insert("testScript")
			if let val = exist as? FHIRJSON {
				do {
					self.testScript = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "testScript"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "testScript", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "testScript"))
		}
		if let exist = json["tester"] {
			presentKeys.insert("tester")
			if let val = exist as? String {
				self.tester = val
			}
			else {
				errors.append(FHIRValidationError(key: "tester", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let issued = self.issued {
			json["issued"] = issued.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let participant = self.participant {
			json["participant"] = participant.map() { $0.asJSON(errors: &errors) }
		}
		if let score = self.score {
			json["score"] = score.asJSON()
		}
		if let setup = self.setup {
			json["setup"] = setup.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let teardown = self.teardown {
			json["teardown"] = teardown.asJSON(errors: &errors)
		}
		if let test = self.test {
			json["test"] = test.map() { $0.asJSON(errors: &errors) }
		}
		if let testScript = self.testScript {
			json["testScript"] = testScript.asJSON(errors: &errors)
		}
		if let tester = self.tester {
			json["tester"] = tester.asJSON()
		}
		
		return json
	}
}


/**
A participant in the test execution, either the execution engine, a client, or a server.
*/
open class TestReportParticipant: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportParticipant" }
	}
	
	/// The display name of the participant.
	public var display: String?
	
	/// The type of participant.
	public var type: TestReportParticipantType?
	
	/// The uri of the participant. An absolute URL is preferred.
	public var uri: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: TestReportParticipantType, uri: URL) {
		self.init()
		self.type = type
		self.uri = uri
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["display"] {
			presentKeys.insert("display")
			if let val = exist as? String {
				self.display = val
			}
			else {
				errors.append(FHIRValidationError(key: "display", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = TestReportParticipantType(rawValue: val) {
					self.type = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "type", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["uri"] {
			presentKeys.insert("uri")
			if let val = exist as? String {
				self.uri = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "uri", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "uri"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		if let uri = self.uri {
			json["uri"] = uri.asJSON()
		}
		
		return json
	}
}


/**
The results of the series of required setup operations before the tests were executed.
*/
open class TestReportSetup: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportSetup" }
	}
	
	/// A setup operation or assert that was executed.
	public var action: [TestReportSetupAction]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestReportSetupAction]) {
		self.init()
		self.action = action
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? [FHIRJSON] {
				do {
					self.action = try TestReportSetupAction.instantiate(fromArray: val, owner: self) as? [TestReportSetupAction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "action"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "action"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
A setup operation or assert that was executed.

Action would contain either an operation or an assertion.
*/
open class TestReportSetupAction: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportSetupAction" }
	}
	
	/// The assertion to perform.
	public var assert: TestReportSetupActionAssert?
	
	/// The operation to perform.
	public var operation: TestReportSetupActionOperation?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["assert"] {
			presentKeys.insert("assert")
			if let val = exist as? FHIRJSON {
				do {
					self.assert = try TestReportSetupActionAssert(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "assert"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "assert", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["operation"] {
			presentKeys.insert("operation")
			if let val = exist as? FHIRJSON {
				do {
					self.operation = try TestReportSetupActionOperation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "operation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "operation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let assert = self.assert {
			json["assert"] = assert.asJSON(errors: &errors)
		}
		if let operation = self.operation {
			json["operation"] = operation.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
The assertion to perform.

The results of the assertion performed on the previous operations.
*/
open class TestReportSetupActionAssert: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportSetupActionAssert" }
	}
	
	/// A link to further details on the result.
	public var detail: String?
	
	/// A message associated with the result.
	public var message: String?
	
	/// The result of this assertion.
	public var result: TestReportResultCodes?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(result: TestReportResultCodes) {
		self.init()
		self.result = result
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["detail"] {
			presentKeys.insert("detail")
			if let val = exist as? String {
				self.detail = val
			}
			else {
				errors.append(FHIRValidationError(key: "detail", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["message"] {
			presentKeys.insert("message")
			if let val = exist as? String {
				self.message = val
			}
			else {
				errors.append(FHIRValidationError(key: "message", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["result"] {
			presentKeys.insert("result")
			if let val = exist as? String {
				if let enumval = TestReportResultCodes(rawValue: val) {
					self.result = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "result", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "result", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "result"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let detail = self.detail {
			json["detail"] = detail.asJSON()
		}
		if let message = self.message {
			json["message"] = message.asJSON()
		}
		if let result = self.result {
			json["result"] = result.rawValue
		}
		
		return json
	}
}


/**
The operation to perform.

The operation performed.
*/
open class TestReportSetupActionOperation: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportSetupActionOperation" }
	}
	
	/// A link to further details on the result.
	public var detail: URL?
	
	/// A message associated with the result.
	public var message: String?
	
	/// The result of this operation.
	public var result: TestReportResultCodes?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(result: TestReportResultCodes) {
		self.init()
		self.result = result
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["detail"] {
			presentKeys.insert("detail")
			if let val = exist as? String {
				self.detail = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "detail", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["message"] {
			presentKeys.insert("message")
			if let val = exist as? String {
				self.message = val
			}
			else {
				errors.append(FHIRValidationError(key: "message", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["result"] {
			presentKeys.insert("result")
			if let val = exist as? String {
				if let enumval = TestReportResultCodes(rawValue: val) {
					self.result = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "result", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "result", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "result"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let detail = self.detail {
			json["detail"] = detail.asJSON()
		}
		if let message = self.message {
			json["message"] = message.asJSON()
		}
		if let result = self.result {
			json["result"] = result.rawValue
		}
		
		return json
	}
}


/**
The results of running the series of required clean up steps.

The results of the series of operations required to clean up after the all the tests were executed (successfully or
otherwise).
*/
open class TestReportTeardown: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportTeardown" }
	}
	
	/// One or more teardown operations performed.
	public var action: [TestReportTeardownAction]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestReportTeardownAction]) {
		self.init()
		self.action = action
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? [FHIRJSON] {
				do {
					self.action = try TestReportTeardownAction.instantiate(fromArray: val, owner: self) as? [TestReportTeardownAction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "action"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "action"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
One or more teardown operations performed.

The teardown action will only contain an operation.
*/
open class TestReportTeardownAction: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportTeardownAction" }
	}
	
	/// The teardown operation performed.
	public var operation: TestReportSetupActionOperation?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(operation: TestReportSetupActionOperation) {
		self.init()
		self.operation = operation
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["operation"] {
			presentKeys.insert("operation")
			if let val = exist as? FHIRJSON {
				do {
					self.operation = try TestReportSetupActionOperation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "operation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "operation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "operation"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let operation = self.operation {
			json["operation"] = operation.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
A test executed from the test script.
*/
open class TestReportTest: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportTest" }
	}
	
	/// A test operation or assert that was performed.
	public var action: [TestReportTestAction]?
	
	/// Tracking/reporting short description of the test.
	public var description_fhir: String?
	
	/// Tracking/logging name of this test.
	public var name: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestReportTestAction]) {
		self.init()
		self.action = action
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? [FHIRJSON] {
				do {
					self.action = try TestReportTestAction.instantiate(fromArray: val, owner: self) as? [TestReportTestAction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "action"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "action"))
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON(errors: &errors) }
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		
		return json
	}
}


/**
A test operation or assert that was performed.

Action would contain either an operation or an assertion.
*/
open class TestReportTestAction: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportTestAction" }
	}
	
	/// The assertion performed.
	public var assert: TestReportSetupActionAssert?
	
	/// The operation performed.
	public var operation: TestReportSetupActionOperation?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["assert"] {
			presentKeys.insert("assert")
			if let val = exist as? FHIRJSON {
				do {
					self.assert = try TestReportSetupActionAssert(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "assert"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "assert", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["operation"] {
			presentKeys.insert("operation")
			if let val = exist as? FHIRJSON {
				do {
					self.operation = try TestReportSetupActionOperation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "operation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "operation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let assert = self.assert {
			json["assert"] = assert.asJSON(errors: &errors)
		}
		if let operation = self.operation {
			json["operation"] = operation.asJSON(errors: &errors)
		}
		
		return json
	}
}

