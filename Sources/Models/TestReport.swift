//
//  TestReport.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/TestReport) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Describes the results of a TestScript execution.

A summary of information based on the results of executing a TestScript.
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
	public var name: FHIRString?
	
	/// A participant in the test execution, either the execution engine, a client, or a server.
	public var participant: [TestReportParticipant]?
	
	/// The overall result from the execution of the TestScript.
	public var result: TestReportResult?
	
	/// The final score (percentage of tests passed) resulting from the execution of the TestScript.
	public var score: FHIRDecimal?
	
	/// The results of the series of required setup operations before the tests were executed.
	public var setup: TestReportSetup?
	
	/// The current state of this test report.
	public var status: TestReportStatus?
	
	/// The results of running the series of required clean up steps.
	public var teardown: TestReportTeardown?
	
	/// A test executed from the test script.
	public var test: [TestReportTest]?
	
	/// Reference to the  version-specific TestScript that was executed to produce this TestReport.
	public var testScript: Reference?
	
	/// Name of the tester producing this report (Organization or individual).
	public var tester: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(result: TestReportResult, status: TestReportStatus, testScript: Reference) {
		self.init()
		self.result = result
		self.status = status
		self.testScript = testScript
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		issued = createInstance(type: DateTime.self, for: "issued", in: json, context: &instCtx, owner: self) ?? issued
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		participant = createInstances(of: TestReportParticipant.self, for: "participant", in: json, context: &instCtx, owner: self) ?? participant
		result = createEnum(type: TestReportResult.self, for: "result", in: json, context: &instCtx) ?? result
		if nil == result && !instCtx.containsKey("result") {
			instCtx.addError(FHIRValidationError(missing: "result"))
		}
		score = createInstance(type: FHIRDecimal.self, for: "score", in: json, context: &instCtx, owner: self) ?? score
		setup = createInstance(type: TestReportSetup.self, for: "setup", in: json, context: &instCtx, owner: self) ?? setup
		status = createEnum(type: TestReportStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		teardown = createInstance(type: TestReportTeardown.self, for: "teardown", in: json, context: &instCtx, owner: self) ?? teardown
		test = createInstances(of: TestReportTest.self, for: "test", in: json, context: &instCtx, owner: self) ?? test
		testScript = createInstance(type: Reference.self, for: "testScript", in: json, context: &instCtx, owner: self) ?? testScript
		if nil == testScript && !instCtx.containsKey("testScript") {
			instCtx.addError(FHIRValidationError(missing: "testScript"))
		}
		tester = createInstance(type: FHIRString.self, for: "tester", in: json, context: &instCtx, owner: self) ?? tester
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.issued?.decorate(json: &json, withKey: "issued", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "participant", using: self.participant, errors: &errors)
		self.result?.decorate(json: &json, withKey: "result", errors: &errors)
		if nil == self.result {
			errors.append(FHIRValidationError(missing: "result"))
		}
		self.score?.decorate(json: &json, withKey: "score", errors: &errors)
		self.setup?.decorate(json: &json, withKey: "setup", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.teardown?.decorate(json: &json, withKey: "teardown", errors: &errors)
		arrayDecorate(json: &json, withKey: "test", using: self.test, errors: &errors)
		self.testScript?.decorate(json: &json, withKey: "testScript", errors: &errors)
		if nil == self.testScript {
			errors.append(FHIRValidationError(missing: "testScript"))
		}
		self.tester?.decorate(json: &json, withKey: "tester", errors: &errors)
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
	public var display: FHIRString?
	
	/// The type of participant.
	public var type: TestReportParticipantType?
	
	/// The uri of the participant. An absolute URL is preferred.
	public var uri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: TestReportParticipantType, uri: FHIRURL) {
		self.init()
		self.type = type
		self.uri = uri
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		display = createInstance(type: FHIRString.self, for: "display", in: json, context: &instCtx, owner: self) ?? display
		type = createEnum(type: TestReportParticipantType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		uri = createInstance(type: FHIRURL.self, for: "uri", in: json, context: &instCtx, owner: self) ?? uri
		if nil == uri && !instCtx.containsKey("uri") {
			instCtx.addError(FHIRValidationError(missing: "uri"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.display?.decorate(json: &json, withKey: "display", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.uri?.decorate(json: &json, withKey: "uri", errors: &errors)
		if nil == self.uri {
			errors.append(FHIRValidationError(missing: "uri"))
		}
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstances(of: TestReportSetupAction.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		if (nil == action || action!.isEmpty) && !instCtx.containsKey("action") {
			instCtx.addError(FHIRValidationError(missing: "action"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		if nil == action || self.action!.isEmpty {
			errors.append(FHIRValidationError(missing: "action"))
		}
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		assert = createInstance(type: TestReportSetupActionAssert.self, for: "assert", in: json, context: &instCtx, owner: self) ?? assert
		operation = createInstance(type: TestReportSetupActionOperation.self, for: "operation", in: json, context: &instCtx, owner: self) ?? operation
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.assert?.decorate(json: &json, withKey: "assert", errors: &errors)
		self.operation?.decorate(json: &json, withKey: "operation", errors: &errors)
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
	public var detail: FHIRString?
	
	/// A message associated with the result.
	public var message: FHIRString?
	
	/// The result of this assertion.
	public var result: TestReportActionResult?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(result: TestReportActionResult) {
		self.init()
		self.result = result
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		detail = createInstance(type: FHIRString.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
		message = createInstance(type: FHIRString.self, for: "message", in: json, context: &instCtx, owner: self) ?? message
		result = createEnum(type: TestReportActionResult.self, for: "result", in: json, context: &instCtx) ?? result
		if nil == result && !instCtx.containsKey("result") {
			instCtx.addError(FHIRValidationError(missing: "result"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.detail?.decorate(json: &json, withKey: "detail", errors: &errors)
		self.message?.decorate(json: &json, withKey: "message", errors: &errors)
		self.result?.decorate(json: &json, withKey: "result", errors: &errors)
		if nil == self.result {
			errors.append(FHIRValidationError(missing: "result"))
		}
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
	public var detail: FHIRURL?
	
	/// A message associated with the result.
	public var message: FHIRString?
	
	/// The result of this operation.
	public var result: TestReportActionResult?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(result: TestReportActionResult) {
		self.init()
		self.result = result
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		detail = createInstance(type: FHIRURL.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
		message = createInstance(type: FHIRString.self, for: "message", in: json, context: &instCtx, owner: self) ?? message
		result = createEnum(type: TestReportActionResult.self, for: "result", in: json, context: &instCtx) ?? result
		if nil == result && !instCtx.containsKey("result") {
			instCtx.addError(FHIRValidationError(missing: "result"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.detail?.decorate(json: &json, withKey: "detail", errors: &errors)
		self.message?.decorate(json: &json, withKey: "message", errors: &errors)
		self.result?.decorate(json: &json, withKey: "result", errors: &errors)
		if nil == self.result {
			errors.append(FHIRValidationError(missing: "result"))
		}
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstances(of: TestReportTeardownAction.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		if (nil == action || action!.isEmpty) && !instCtx.containsKey("action") {
			instCtx.addError(FHIRValidationError(missing: "action"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		if nil == action || self.action!.isEmpty {
			errors.append(FHIRValidationError(missing: "action"))
		}
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		operation = createInstance(type: TestReportSetupActionOperation.self, for: "operation", in: json, context: &instCtx, owner: self) ?? operation
		if nil == operation && !instCtx.containsKey("operation") {
			instCtx.addError(FHIRValidationError(missing: "operation"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.operation?.decorate(json: &json, withKey: "operation", errors: &errors)
		if nil == self.operation {
			errors.append(FHIRValidationError(missing: "operation"))
		}
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
	public var description_fhir: FHIRString?
	
	/// Tracking/logging name of this test.
	public var name: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: [TestReportTestAction]) {
		self.init()
		self.action = action
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstances(of: TestReportTestAction.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		if (nil == action || action!.isEmpty) && !instCtx.containsKey("action") {
			instCtx.addError(FHIRValidationError(missing: "action"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		if nil == action || self.action!.isEmpty {
			errors.append(FHIRValidationError(missing: "action"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		assert = createInstance(type: TestReportSetupActionAssert.self, for: "assert", in: json, context: &instCtx, owner: self) ?? assert
		operation = createInstance(type: TestReportSetupActionOperation.self, for: "operation", in: json, context: &instCtx, owner: self) ?? operation
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.assert?.decorate(json: &json, withKey: "assert", errors: &errors)
		self.operation?.decorate(json: &json, withKey: "operation", errors: &errors)
	}
}

