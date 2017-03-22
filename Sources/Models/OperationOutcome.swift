//
//  OperationOutcome.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/OperationOutcome) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Information about the success/failure of an action.

A collection of error, warning or information messages that result from a system action.
*/
open class OperationOutcome: DomainResource {
	override open class var resourceType: String {
		get { return "OperationOutcome" }
	}
	
	/// A single issue associated with the action.
	public var issue: [OperationOutcomeIssue]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(issue: [OperationOutcomeIssue]) {
		self.init()
		self.issue = issue
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		issue = createInstances(of: OperationOutcomeIssue.self, for: "issue", in: json, context: &instCtx, owner: self) ?? issue
		if (nil == issue || issue!.isEmpty) && !instCtx.containsKey("issue") {
			instCtx.addError(FHIRValidationError(missing: "issue"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "issue", using: self.issue, errors: &errors)
		if nil == issue || self.issue!.isEmpty {
			errors.append(FHIRValidationError(missing: "issue"))
		}
	}
}


/**
A single issue associated with the action.

An error, warning or information message that results from a system action.
*/
open class OperationOutcomeIssue: BackboneElement {
	override open class var resourceType: String {
		get { return "OperationOutcomeIssue" }
	}
	
	/// Describes the type of the issue. The system that creates an OperationOutcome SHALL choose the most applicable
	/// code from the IssueType value set, and may additional provide its own code for the error in the details element.
	public var code: IssueType?
	
	/// Additional details about the error.
	public var details: CodeableConcept?
	
	/// Additional diagnostic information about the issue.
	public var diagnostics: FHIRString?
	
	/// FHIRPath of element(s) related to issue.
	public var expression: [FHIRString]?
	
	/// Path of element(s) related to issue.
	public var location: [FHIRString]?
	
	/// Indicates whether the issue indicates a variation from successful processing.
	public var severity: IssueSeverity?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: IssueType, severity: IssueSeverity) {
		self.init()
		self.code = code
		self.severity = severity
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createEnum(type: IssueType.self, for: "code", in: json, context: &instCtx) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		details = createInstance(type: CodeableConcept.self, for: "details", in: json, context: &instCtx, owner: self) ?? details
		diagnostics = createInstance(type: FHIRString.self, for: "diagnostics", in: json, context: &instCtx, owner: self) ?? diagnostics
		expression = createInstances(of: FHIRString.self, for: "expression", in: json, context: &instCtx, owner: self) ?? expression
		location = createInstances(of: FHIRString.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		severity = createEnum(type: IssueSeverity.self, for: "severity", in: json, context: &instCtx) ?? severity
		if nil == severity && !instCtx.containsKey("severity") {
			instCtx.addError(FHIRValidationError(missing: "severity"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.details?.decorate(json: &json, withKey: "details", errors: &errors)
		self.diagnostics?.decorate(json: &json, withKey: "diagnostics", errors: &errors)
		arrayDecorate(json: &json, withKey: "expression", using: self.expression, errors: &errors)
		arrayDecorate(json: &json, withKey: "location", using: self.location, errors: &errors)
		self.severity?.decorate(json: &json, withKey: "severity", errors: &errors)
		if nil == self.severity {
			errors.append(FHIRValidationError(missing: "severity"))
		}
	}
}

