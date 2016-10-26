//
//  TestReport.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/TestReport) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Describes a set of tests.
 *
 *  TestReport is a resource that includes summary information on the results of executing a TestScript.
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
	
	/// complete | pending | error.
	public var status: String?
	
	/// The results of running the series of required clean up steps.
	public var teardown: TestReportTeardown?
	
	/// A test executed from the test script.
	public var test: [TestReportTest]?
	
	/// Reference to the  version-specific TestScript that was executed to produce this TestReport.
	public var testScript: Reference?
	
	/// Name of the tester producing this report (Organization or individual).
	public var tester: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String, testScript: Reference) {
		self.init(json: nil)
		self.status = status
		self.testScript = testScript
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["issued"] {
				presentKeys.insert("issued")
				if let val = exist as? String {
					self.issued = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "issued", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["participant"] {
				presentKeys.insert("participant")
				if let val = exist as? [FHIRJSON] {
					self.participant = TestReportParticipant.instantiate(fromArray: val, owner: self) as? [TestReportParticipant]
				}
				else {
					errors.append(FHIRJSONError(key: "participant", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["score"] {
				presentKeys.insert("score")
				if let val = exist as? NSNumber {
					self.score = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "score", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["setup"] {
				presentKeys.insert("setup")
				if let val = exist as? FHIRJSON {
					self.setup = TestReportSetup(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "setup", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist = js["teardown"] {
				presentKeys.insert("teardown")
				if let val = exist as? FHIRJSON {
					self.teardown = TestReportTeardown(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "teardown", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["test"] {
				presentKeys.insert("test")
				if let val = exist as? [FHIRJSON] {
					self.test = TestReportTest.instantiate(fromArray: val, owner: self) as? [TestReportTest]
				}
				else {
					errors.append(FHIRJSONError(key: "test", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["testScript"] {
				presentKeys.insert("testScript")
				if let val = exist as? FHIRJSON {
					self.testScript = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "testScript", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "testScript"))
			}
			if let exist = js["tester"] {
				presentKeys.insert("tester")
				if let val = exist as? String {
					self.tester = val
				}
				else {
					errors.append(FHIRJSONError(key: "tester", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let issued = self.issued {
			json["issued"] = issued.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let participant = self.participant {
			json["participant"] = participant.map() { $0.asJSON() }
		}
		if let score = self.score {
			json["score"] = score.asJSON()
		}
		if let setup = self.setup {
			json["setup"] = setup.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let teardown = self.teardown {
			json["teardown"] = teardown.asJSON()
		}
		if let test = self.test {
			json["test"] = test.map() { $0.asJSON() }
		}
		if let testScript = self.testScript {
			json["testScript"] = testScript.asJSON()
		}
		if let tester = self.tester {
			json["tester"] = tester.asJSON()
		}
		
		return json
	}
}


/**
 *  A participant in the test execution, either the execution engine, a client, or a server.
 */
open class TestReportParticipant: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportParticipant" }
	}
	
	/// The display name of the participant.
	public var display: String?
	
	/// test-engine | client | server.
	public var type: String?
	
	/// The uri of the participant. An absolute URL is preferred.
	public var uri: URL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String, uri: URL) {
		self.init(json: nil)
		self.type = type
		self.uri = uri
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["display"] {
				presentKeys.insert("display")
				if let val = exist as? String {
					self.display = val
				}
				else {
					errors.append(FHIRJSONError(key: "display", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist = js["uri"] {
				presentKeys.insert("uri")
				if let val = exist as? String {
					self.uri = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "uri", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "uri"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let uri = self.uri {
			json["uri"] = uri.asJSON()
		}
		
		return json
	}
}


/**
 *  The results of the series of required setup operations before the tests were executed.
 */
open class TestReportSetup: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportSetup" }
	}
	
	/// A setup operation or assert that was executed.
	public var action: [TestReportSetupAction]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestReportSetupAction]) {
		self.init(json: nil)
		self.action = action
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = TestReportSetupAction.instantiate(fromArray: val, owner: self) as? [TestReportSetupAction]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "action"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  A setup operation or assert that was executed.
 *
 *  Action would contain either an operation or an assertion.
 */
open class TestReportSetupAction: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportSetupAction" }
	}
	
	/// The assertion to perform.
	public var assert: TestReportSetupActionAssert?
	
	/// The operation to perform.
	public var operation: TestReportSetupActionOperation?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["assert"] {
				presentKeys.insert("assert")
				if let val = exist as? FHIRJSON {
					self.assert = TestReportSetupActionAssert(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "assert", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["operation"] {
				presentKeys.insert("operation")
				if let val = exist as? FHIRJSON {
					self.operation = TestReportSetupActionOperation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "operation", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let assert = self.assert {
			json["assert"] = assert.asJSON()
		}
		if let operation = self.operation {
			json["operation"] = operation.asJSON()
		}
		
		return json
	}
}


/**
 *  The assertion to perform.
 *
 *  The results of the assertion performed on the previous operations.
 */
open class TestReportSetupActionAssert: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportSetupActionAssert" }
	}
	
	/// A link to further details on the result.
	public var detail: String?
	
	/// A message associated with the result.
	public var message: String?
	
	/// pass | skip | fail | warning | error.
	public var result: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(result: String) {
		self.init(json: nil)
		self.result = result
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? String {
					self.detail = val
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["message"] {
				presentKeys.insert("message")
				if let val = exist as? String {
					self.message = val
				}
				else {
					errors.append(FHIRJSONError(key: "message", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["result"] {
				presentKeys.insert("result")
				if let val = exist as? String {
					self.result = val
				}
				else {
					errors.append(FHIRJSONError(key: "result", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "result"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let detail = self.detail {
			json["detail"] = detail.asJSON()
		}
		if let message = self.message {
			json["message"] = message.asJSON()
		}
		if let result = self.result {
			json["result"] = result.asJSON()
		}
		
		return json
	}
}


/**
 *  The operation to perform.
 *
 *  The operation performed.
 */
open class TestReportSetupActionOperation: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportSetupActionOperation" }
	}
	
	/// A link to further details on the result.
	public var detail: URL?
	
	/// A message associated with the result.
	public var message: String?
	
	/// pass | skip | fail | warning | error.
	public var result: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(result: String) {
		self.init(json: nil)
		self.result = result
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? String {
					self.detail = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["message"] {
				presentKeys.insert("message")
				if let val = exist as? String {
					self.message = val
				}
				else {
					errors.append(FHIRJSONError(key: "message", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["result"] {
				presentKeys.insert("result")
				if let val = exist as? String {
					self.result = val
				}
				else {
					errors.append(FHIRJSONError(key: "result", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "result"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let detail = self.detail {
			json["detail"] = detail.asJSON()
		}
		if let message = self.message {
			json["message"] = message.asJSON()
		}
		if let result = self.result {
			json["result"] = result.asJSON()
		}
		
		return json
	}
}


/**
 *  The results of running the series of required clean up steps.
 *
 *  The results of the series of operations required to clean up after the all the tests were executed (successfully or
 *  otherwise).
 */
open class TestReportTeardown: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportTeardown" }
	}
	
	/// One or more teardown operations performed.
	public var action: [TestReportTeardownAction]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestReportTeardownAction]) {
		self.init(json: nil)
		self.action = action
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = TestReportTeardownAction.instantiate(fromArray: val, owner: self) as? [TestReportTeardownAction]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "action"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  One or more teardown operations performed.
 *
 *  The teardown action will only contain an operation.
 */
open class TestReportTeardownAction: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportTeardownAction" }
	}
	
	/// The teardown operation performed.
	public var operation: TestReportSetupActionOperation?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(operation: TestReportSetupActionOperation) {
		self.init(json: nil)
		self.operation = operation
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["operation"] {
				presentKeys.insert("operation")
				if let val = exist as? FHIRJSON {
					self.operation = TestReportSetupActionOperation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "operation", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "operation"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let operation = self.operation {
			json["operation"] = operation.asJSON()
		}
		
		return json
	}
}


/**
 *  A test executed from the test script.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestReportTestAction]) {
		self.init(json: nil)
		self.action = action
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = TestReportTestAction.instantiate(fromArray: val, owner: self) as? [TestReportTestAction]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "action"))
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON() }
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
 *  A test operation or assert that was performed.
 *
 *  Action would contain either an operation or an assertion.
 */
open class TestReportTestAction: BackboneElement {
	override open class var resourceType: String {
		get { return "TestReportTestAction" }
	}
	
	/// The assertion performed.
	public var assert: TestReportSetupActionAssert?
	
	/// The operation performed.
	public var operation: TestReportSetupActionOperation?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["assert"] {
				presentKeys.insert("assert")
				if let val = exist as? FHIRJSON {
					self.assert = TestReportSetupActionAssert(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "assert", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["operation"] {
				presentKeys.insert("operation")
				if let val = exist as? FHIRJSON {
					self.operation = TestReportSetupActionOperation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "operation", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let assert = self.assert {
			json["assert"] = assert.asJSON()
		}
		if let operation = self.operation {
			json["operation"] = operation.asJSON()
		}
		
		return json
	}
}

