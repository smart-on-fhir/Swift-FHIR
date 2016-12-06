//
//  OperationOutcome.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/OperationOutcome) on 2016-12-06.
//  2016, SMART Health IT.
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
		if let exist = json["issue"] {
			presentKeys.insert("issue")
			if let val = exist as? [FHIRJSON] {
				do {
					self.issue = try OperationOutcomeIssue.instantiate(fromArray: val, owner: self) as? [OperationOutcomeIssue]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "issue"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "issue", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "issue"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let issue = self.issue {
			json["issue"] = issue.map() { $0.asJSON(errors: &errors) }
		}
		else {
			errors.append(FHIRValidationError(missing: "issue"))
		}
		
		return json
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
	
	/// FluentPath of element(s) related to issue.
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
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				if let enumval = IssueType(rawValue: val) {
					self.code = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "code", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["details"] {
			presentKeys.insert("details")
			if let val = exist as? FHIRJSON {
				do {
					self.details = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "details"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "details", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["diagnostics"] {
			presentKeys.insert("diagnostics")
			if let val = exist as? String {
				self.diagnostics = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "diagnostics", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["expression"] {
			presentKeys.insert("expression")
			if let val = exist as? [String] {
				self.expression = FHIRString.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "expression", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["location"] {
			presentKeys.insert("location")
			if let val = exist as? [String] {
				self.location = FHIRString.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "location", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["severity"] {
			presentKeys.insert("severity")
			if let val = exist as? String {
				if let enumval = IssueSeverity(rawValue: val) {
					self.severity = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "severity", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "severity", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "severity"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let details = self.details {
			json["details"] = details.asJSON(errors: &errors)
		}
		if let diagnostics = self.diagnostics {
			json["diagnostics"] = diagnostics.asJSON()
		}
		if let expression = self.expression {
			json["expression"] = expression.map() { $0.asJSON() }
		}
		if let location = self.location {
			json["location"] = location.map() { $0.asJSON() }
		}
		if let severity = self.severity {
			json["severity"] = severity.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "severity"))
		}
		
		return json
	}
}

