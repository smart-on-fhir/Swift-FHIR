//
//  OperationOutcome.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/OperationOutcome) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Information about the success/failure of an action.
 *
 *  A collection of error, warning or information messages that result from a system action.
 */
public class OperationOutcome: DomainResource
{
	override public class var resourceName: String {
		get { return "OperationOutcome" }
	}
	
	/// A single issue associated with the action
	public var issue: [OperationOutcomeIssue]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(issue: [OperationOutcomeIssue]?) {
		self.init(json: nil)
		if nil != issue {
			self.issue = issue
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["issue"] {
				presentKeys.insert("issue")
				if let val = exist as? [FHIRJSON] {
					self.issue = OperationOutcomeIssue.from(val, owner: self) as? [OperationOutcomeIssue]
				}
				else {
					errors.append(FHIRJSONError(key: "issue", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "issue"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let issue = self.issue {
			json["issue"] = OperationOutcomeIssue.asJSONArray(issue)
		}
		
		return json
	}
}


/**
 *  A single issue associated with the action.
 *
 *  An error, warning or information message that results from a system action.
 */
public class OperationOutcomeIssue: FHIRElement
{
	override public class var resourceName: String {
		get { return "OperationOutcomeIssue" }
	}
	
	/// Error or warning code
	public var code: CodeableConcept?
	
	/// Additional diagnostic information about the issue
	public var details: String?
	
	/// XPath of element(s) related to issue
	public var location: [String]?
	
	/// fatal | error | warning | information
	public var severity: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept?, severity: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != severity {
			self.severity = severity
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist: AnyObject = js["details"] {
				presentKeys.insert("details")
				if let val = exist as? String {
					self.details = val
				}
				else {
					errors.append(FHIRJSONError(key: "details", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? [String] {
					self.location = val
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["severity"] {
				presentKeys.insert("severity")
				if let val = exist as? String {
					self.severity = val
				}
				else {
					errors.append(FHIRJSONError(key: "severity", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "severity"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let details = self.details {
			json["details"] = details.asJSON()
		}
		if let location = self.location {
			var arr = [AnyObject]()
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

