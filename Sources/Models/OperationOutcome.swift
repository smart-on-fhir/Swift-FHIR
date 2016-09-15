//
//  OperationOutcome.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/OperationOutcome) on 2016-09-15.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Information about the success/failure of an action.
 *
 *  A collection of error, warning or information messages that result from a system action.
 */
open class OperationOutcome: DomainResource {
	override open class var resourceType: String {
		get { return "OperationOutcome" }
	}
	
	/// A single issue associated with the action.
	public var issue: [OperationOutcomeIssue]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(issue: [OperationOutcomeIssue]) {
		self.init(json: nil)
		self.issue = issue
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["issue"] {
				presentKeys.insert("issue")
				if let val = exist as? [FHIRJSON] {
					self.issue = OperationOutcomeIssue.instantiate(fromArray: val, owner: self) as? [OperationOutcomeIssue]
				}
				else {
					errors.append(FHIRJSONError(key: "issue", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "issue"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let issue = self.issue {
			json["issue"] = issue.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  A single issue associated with the action.
 *
 *  An error, warning or information message that results from a system action.
 */
open class OperationOutcomeIssue: BackboneElement {
	override open class var resourceType: String {
		get { return "OperationOutcomeIssue" }
	}
	
	/// Error or warning code.
	public var code: String?
	
	/// Additional details about the error.
	public var details: CodeableConcept?
	
	/// Additional diagnostic information about the issue.
	public var diagnostics: String?
	
	/// FluentPath of element(s) related to issue.
	public var expression: [String]?
	
	/// XPath of element(s) related to issue.
	public var location: [String]?
	
	/// fatal | error | warning | information.
	public var severity: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String, severity: String) {
		self.init(json: nil)
		self.code = code
		self.severity = severity
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist = js["details"] {
				presentKeys.insert("details")
				if let val = exist as? FHIRJSON {
					self.details = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "details", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["diagnostics"] {
				presentKeys.insert("diagnostics")
				if let val = exist as? String {
					self.diagnostics = val
				}
				else {
					errors.append(FHIRJSONError(key: "diagnostics", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["expression"] {
				presentKeys.insert("expression")
				if let val = exist as? [String] {
					self.expression = val
				}
				else {
					errors.append(FHIRJSONError(key: "expression", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? [String] {
					self.location = val
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["severity"] {
				presentKeys.insert("severity")
				if let val = exist as? String {
					self.severity = val
				}
				else {
					errors.append(FHIRJSONError(key: "severity", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "severity"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let details = self.details {
			json["details"] = details.asJSON()
		}
		if let diagnostics = self.diagnostics {
			json["diagnostics"] = diagnostics.asJSON()
		}
		if let expression = self.expression {
			var arr = [Any]()
			for val in expression {
				arr.append(val.asJSON())
			}
			json["expression"] = arr
		}
		if let location = self.location {
			var arr = [Any]()
			for val in location {
				arr.append(val.asJSON())
			}
			json["location"] = arr
		}
		if let severity = self.severity {
			json["severity"] = severity.asJSON()
		}
		
		return json
	}
}

