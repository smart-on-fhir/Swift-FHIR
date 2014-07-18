//
//  OperationOutcome.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-18.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Information about the success/failure of an action.
 *
 *  Scope and Usage Operation Outcomes are sets of error, warning and information messages that provide detailed
 *  information about the outcome of some attempted system operation. They are provided as a direct system
 *  response, or component of one, where they provide information about the outcome of the operation.
 *  
 *  Specifically, OperationOutcomes are used in the following circumstances:
 *  
 *  * When an RESTful operation fails
 *  * As the response on a validation operation, to provide information about the outcomes
 *  * As part of a message response, usually when the message has not been processed correctly
 */
class OperationOutcome: FHIRResource
{
	override class var resourceName: String {
		get { return "OperationOutcome" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! A single issue associated with the action */
	var issue: [OperationOutcomeIssue]?
	
	convenience init(issue: [OperationOutcomeIssue]?) {
		self.init(json: nil)
		if issue {
			self.issue = issue
		}
	}	
	
	init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["issue"] as? [NSDictionary] {
				self.issue = OperationOutcomeIssue.from(val) as? [OperationOutcomeIssue]
			}
		}
	}
}


/*!
 *  A single issue associated with the action.
 *
 *  An error, warning or information message that results from a system action.
 */
class OperationOutcomeIssue: FHIRElement
{	
	/*! fatal | error | warning | information */
	var severity: String?
	
	/*! Error or warning code */
	var type: Coding?
	
	/*! Additional description of the issue */
	var details: String?
	
	/*! XPath of element(s) related to issue */
	var location: [String]?
	
	convenience init(severity: String?) {
		self.init(json: nil)
		if severity {
			self.severity = severity
		}
	}	
	
	init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["severity"] as? String {
				self.severity = val
			}
			if let val = js["type"] as? NSDictionary {
				self.type = Coding(json: val)
			}
			if let val = js["details"] as? String {
				self.details = val
			}
			if let val = js["location"] as? [String] {
				self.location = val
			}
		}
	}
}

