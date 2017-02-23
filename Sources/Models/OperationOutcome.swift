//
//  OperationOutcome.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/OperationOutcome) on 2017-02-23.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		issue = try createInstances(of: OperationOutcomeIssue.self, for: "issue", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? issue
		if (nil == issue || issue!.isEmpty) && !presentKeys.contains("issue") {
			errors.append(FHIRValidationError(missing: "issue"))
		}
		
		return errors.isEmpty ? nil : errors
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
	
	/// XPath of element(s) related to issue.
	public var location: [FHIRString]?
	
	/// Indicates whether the issue indicates a variation from successful processing.
	public var severity: IssueSeverity?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: IssueType, severity: IssueSeverity) {
		self.init()
		self.code = code
		self.severity = severity
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = createEnum(type: IssueType.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		details = try createInstance(type: CodeableConcept.self, for: "details", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? details
		diagnostics = try createInstance(type: FHIRString.self, for: "diagnostics", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? diagnostics
		expression = try createInstances(of: FHIRString.self, for: "expression", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expression
		location = try createInstances(of: FHIRString.self, for: "location", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? location
		severity = createEnum(type: IssueSeverity.self, for: "severity", in: json, presentKeys: &presentKeys, errors: &errors) ?? severity
		if nil == severity && !presentKeys.contains("severity") {
			errors.append(FHIRValidationError(missing: "severity"))
		}
		
		return errors.isEmpty ? nil : errors
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

