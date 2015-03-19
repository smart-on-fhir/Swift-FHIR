//
//  OperationOutcome.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/OperationOutcome) on 2015-03-19.
//  2015, SMART Platforms.
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
	
	public convenience init(issue: [OperationOutcomeIssue]?) {
		self.init(json: nil)
		if nil != issue {
			self.issue = issue
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["issue"] as? [JSONDictionary] {
				self.issue = OperationOutcomeIssue.from(val, owner: self) as? [OperationOutcomeIssue]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
	
	public convenience init(code: CodeableConcept?, severity: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != severity {
			self.severity = severity
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? JSONDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["details"] as? String {
				self.details = val
			}
			if let val = js["location"] as? [String] {
				self.location = val
			}
			if let val = js["severity"] as? String {
				self.severity = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

