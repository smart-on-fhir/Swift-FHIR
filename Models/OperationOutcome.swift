//
//  OperationOutcome.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (operationoutcome.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Information about the success/failure of an action.
 *
 *  A collection of error, warning or information messages that result from a system action.
 */
public class OperationOutcome: FHIRResource
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
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["issue"] as? [NSDictionary] {
				self.issue = OperationOutcomeIssue.from(val, owner: self) as? [OperationOutcomeIssue]
			}
		}
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
	
	/// Additional description of the issue
	public var details: String?
	
	/// XPath of element(s) related to issue
	public var location: [String]?
	
	/// fatal | error | warning | information
	public var severity: String?
	
	/// Error or warning code
	public var type: Coding?
	
	public convenience init(severity: String?) {
		self.init(json: nil)
		if nil != severity {
			self.severity = severity
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["details"] as? String {
				self.details = val
			}
			if let val = js["location"] as? [String] {
				self.location = val
			}
			if let val = js["severity"] as? String {
				self.severity = val
			}
			if let val = js["type"] as? NSDictionary {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
}

