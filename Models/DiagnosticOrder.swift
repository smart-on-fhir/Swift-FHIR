//
//  DiagnosticOrder.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-23.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
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
public class DiagnosticOrder: FHIRResource
{
	override public class var resourceName: String {
		get { return "DiagnosticOrder" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** Who and/or what test is about */
	public var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/** Who ordered the test */
	public var orderer: FHIRElement? {
		get { return resolveReference("orderer") }
		set {
			if newValue {
				didSetReference(newValue!, name: "orderer")
			}
		}
	}
	
	/** Identifiers assigned to this order */
	public var identifier: [Identifier]?
	
	/** The encounter that this diagnostic order is associated with */
	public var encounter: FHIRElement? {
		get { return resolveReference("encounter") }
		set {
			if newValue {
				didSetReference(newValue!, name: "encounter")
			}
		}
	}
	
	/** Explanation/Justification for test */
	public var clinicalNotes: String?
	
	/** If the whole order relates to specific specimens */
	public var specimen: [FHIRElement]? {
		get { return resolveReferences("specimen") }
		set {
			if newValue {
				didSetReferences(newValue!, name: "specimen")
			}
		}
	}
	
	/** requested | received | accepted | in progress | review | completed | suspended | rejected | failed */
	public var status: String?
	
	/** routine | urgent | stat | asap */
	public var priority: String?
	
	/** A list of events of interest in the lifecycle */
	public var event: [DiagnosticOrderEvent]?
	
	/** The items the orderer requested */
	public var item: [DiagnosticOrderItem]?
	
	public convenience init(subject: ResourceReference?) {
		self.init(json: nil)
		if subject {
			self.subject = subject
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["orderer"] as? NSDictionary {
				self.orderer = ResourceReference(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = ResourceReference(json: val)
			}
			if let val = js["clinicalNotes"] as? String {
				self.clinicalNotes = val
			}
			if let val = js["specimen"] as? [NSDictionary] {
				self.specimen = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["priority"] as? String {
				self.priority = val
			}
			if let val = js["event"] as? [NSDictionary] {
				self.event = DiagnosticOrderEvent.from(val) as? [DiagnosticOrderEvent]
			}
			if let val = js["item"] as? [NSDictionary] {
				self.item = DiagnosticOrderItem.from(val) as? [DiagnosticOrderItem]
			}
		}
	}
}


/**
 *  A list of events of interest in the lifecycle.
 *
 *  A summary of the events of interest that have occurred as the request is processed. E.g. when the order was
 *  made, various processing steps (specimens received), when it was completed.
 */
public class DiagnosticOrderEvent: FHIRElement
{	
	/** requested | received | accepted | in progress | review | completed | suspended | rejected | failed */
	public var status: String?
	
	/** More information about the event and it's context */
	public var description: CodeableConcept?
	
	/** The date at which the event happened */
	public var dateTime: NSDate?
	
	/** Who recorded or did this */
	public var actor: FHIRElement? {
		get { return resolveReference("actor") }
		set {
			if newValue {
				didSetReference(newValue!, name: "actor")
			}
		}
	}
	
	public convenience init(status: String?, dateTime: NSDate?) {
		self.init(json: nil)
		if status {
			self.status = status
		}
		if dateTime {
			self.dateTime = dateTime
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["description"] as? NSDictionary {
				self.description = CodeableConcept(json: val)
			}
			if let val = js["dateTime"] as? String {
				self.dateTime = NSDate(json: val)
			}
			if let val = js["actor"] as? NSDictionary {
				self.actor = ResourceReference(json: val)
			}
		}
	}
}


/**
 *  The items the orderer requested.
 *
 *  The specific diagnostic investigations that are requested as part of this request. Sometimes, there can only
 *  be one item per request, but in most contexts, more than one investigation can be requested.
 */
public class DiagnosticOrderItem: FHIRElement
{	
	/** Code to indicate the item (test or panel) being ordered */
	public var code: CodeableConcept?
	
	/** If this item relates to specific specimens */
	public var specimen: [FHIRElement]? {
		get { return resolveReferences("specimen") }
		set {
			if newValue {
				didSetReferences(newValue!, name: "specimen")
			}
		}
	}
	
	/** Location of requested test (if applicable) */
	public var bodySite: CodeableConcept?
	
	/** requested | received | accepted | in progress | review | completed | suspended | rejected | failed */
	public var status: String?
	
	/** Events specific to this item */
	public var event: [DiagnosticOrderItemEvent]?
	
	public convenience init(code: CodeableConcept?) {
		self.init(json: nil)
		if code {
			self.code = code
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["specimen"] as? [NSDictionary] {
				self.specimen = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["bodySite"] as? NSDictionary {
				self.bodySite = CodeableConcept(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["event"] as? [NSDictionary] {
				self.event = DiagnosticOrderItemEvent.from(val) as? [DiagnosticOrderItemEvent]
			}
		}
	}
}


/**
 *  Events specific to this item.
 *
 *  A summary of the events of interest that have occurred as this item of the request is processed.
 */
public class DiagnosticOrderItemEvent: FHIRElement
{	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
		}
	}
}

