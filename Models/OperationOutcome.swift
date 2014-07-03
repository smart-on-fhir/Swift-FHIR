//
//  OperationOutcome.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
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
	override var resourceName: String {
		get { return "OperationOutcome" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! A single issue associated with the action */
	var issue: OperationOutcomeIssue[]

	init(issue: OperationOutcomeIssue[]) {
		self.issue = issue
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
	var severity: String

	/*! Error or warning code */
	var type: Coding?

	/*! Additional description of the issue */
	var details: String?

	/*! XPath of element(s) related to issue */
	var location: String[]?

	init(severity: String) {
		self.severity = severity
	}
}
