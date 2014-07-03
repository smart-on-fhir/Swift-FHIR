//
//  DiagnosticOrder.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A request for a diagnostic service.
 *
 *  Scope and Usage A Diagnostic Order is a record of a request for a set of diagnostic investigations to be
 *  performed. The investigation will lead to a Diagnostic Report that summarizes the outcome of the
 *  investigation, and includes any useful data and/or images that are relevant to the treatment/management of the
 *  subject.
 *  
 *  The principal intention of the Diagnostic Order is to support ordering diagnostic investigations on patients
 *  (which includes non-human patients in veterinary medicine). However in many contexts, healthcare related
 *  processes include performing diagnostic investigations on groups of subjects, devices involved in the
 *  provision of healthcare, and even environmental locations such as ducts, bodies of water, etc. The Diagnostic
 *  Order supports all these usages.
 *  
 *  The general work flow that this resource facilitates is that a clinical system creates a diagnostic order. The
 *  diagnostic order is then exchanged, perhaps via intermediaries, with a system that represents a diagnostic
 *  service that can perform the investigation as a request to do so. The diagnostic service will update the
 *  request as the work is performed, and then finally issue a report that references the requests that it
 *  fulfills.
 */
class DiagnosticOrder: FHIRResource
{
	override var resourceName: String {
		get { return "DiagnosticOrder" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Who and/or what test is about */
	var subject: ResourceReference

	/*! Who ordered the test */
	var orderer: ResourceReference?

	/*! Identifiers assigned to this order */
	var identifier: Identifier[]?

	/*! The encounter that this diagnostic order is associated with */
	var encounter: ResourceReference?

	/*! Explanation/Justification for test */
	var clinicalNotes: String?

	/*! If the whole order relates to specific specimens */
	var specimen: ResourceReference[]?

	/*! requested | received | accepted | in progress | review | completed | suspended | rejected | failed */
	var status: String?

	/*! routine | urgent | stat | asap */
	var priority: String?

	/*! A list of events of interest in the lifecycle */
	var event: DiagnosticOrderEvent[]?

	/*! The items the orderer requested */
	var item: DiagnosticOrderItem[]?

	init(subject: ResourceReference) {
		self.subject = subject
	}
}


/*!
 *  A list of events of interest in the lifecycle.
 *
 *  A summary of the events of interest that have occurred as the request is processed. E.g. when the order was
 *  made, various processing steps (specimens received), when it was completed.
 */
class DiagnosticOrderEvent: FHIRElement
{
	/*! requested | received | accepted | in progress | review | completed | suspended | rejected | failed */
	var status: String

	/*! More information about the event and it's context */
	var description: CodeableConcept?

	/*! The date at which the event happened */
	var dateTime: NSDate

	/*! Who recorded or did this */
	var actor: ResourceReference?

	init(status: String, dateTime: NSDate) {
		self.status = status
		self.dateTime = dateTime
	}
}


/*!
 *  The items the orderer requested.
 *
 *  The specific diagnostic investigations that are requested as part of this request. Sometimes, there can only
 *  be one item per request, but in most contexts, more than one investigation can be requested.
 */
class DiagnosticOrderItem: FHIRElement
{
	/*! Code to indicate the item (test or panel) being ordered */
	var code: CodeableConcept

	/*! If this item relates to specific specimens */
	var specimen: ResourceReference[]?

	/*! Location of requested test (if applicable) */
	var bodySite: CodeableConcept?

	/*! requested | received | accepted | in progress | review | completed | suspended | rejected | failed */
	var status: String?

	/*! Events specific to this item */
	var event: DiagnosticOrderItemEvent[]?

	init(code: CodeableConcept) {
		self.code = code
	}
}


/*!
 *  Events specific to this item.
 *
 *  A summary of the events of interest that have occurred as this item of the request is processed.
 */
class DiagnosticOrderItemEvent: FHIRElement
{
}
