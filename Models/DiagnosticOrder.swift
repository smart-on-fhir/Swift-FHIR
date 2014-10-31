//
//  DiagnosticOrder.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (diagnosticorder.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A request for a diagnostic service.
 *
 *  Scope and Usage A Diagnostic Order is a record of a request for a set of diagnostic investigations to be performed.
 *  The investigation will lead to a Diagnostic Report that summarizes the outcome of the investigation, and includes
 *  any useful data and/or images that are relevant to the treatment/management of the subject.
 *  
 *  The principal intention of the Diagnostic Order is to support ordering diagnostic investigations on patients (which
 *  includes non-human patients in veterinary medicine). However in many contexts, healthcare related processes include
 *  performing diagnostic investigations on groups of subjects, devices involved in the provision of healthcare, and
 *  even environmental locations such as ducts, bodies of water, etc. The Diagnostic Order supports all these usages.
 *  
 *  The general work flow that this resource facilitates is that a clinical system creates a diagnostic order. The
 *  diagnostic order is then exchanged, perhaps via intermediaries, with a system that represents a diagnostic service
 *  that can perform the investigation as a request to do so. The diagnostic service will update the request as the work
 *  is performed, and then finally issue a report that references the requests that it fulfills.
 */
public class DiagnosticOrder: FHIRResource
{
	override public class var resourceName: String {
		get { return "DiagnosticOrder" }
	}
	
	/// Explanation/Justification for test
	public var clinicalNotes: String?
	
	/// The encounter that this diagnostic order is associated with
	public var encounter: FHIRReference<Encounter>?
	
	/// A list of events of interest in the lifecycle
	public var event: [DiagnosticOrderEvent]?
	
	/// Identifiers assigned to this order
	public var identifier: [Identifier]?
	
	/// The items the orderer requested
	public var item: [DiagnosticOrderItem]?
	
	/// Who ordered the test
	public var orderer: FHIRReference<Practitioner>?
	
	/// routine | urgent | stat | asap
	public var priority: String?
	
	/// If the whole order relates to specific specimens
	public var specimen: [FHIRReference<Specimen>]?
	
	/// requested | received | accepted | in progress | review | completed | suspended | rejected | failed
	public var status: String?
	
	/// Who and/or what test is about
	public var subject: FHIRReference<Patient>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	public convenience init(subject: FHIRReference<Patient>?) {
		self.init(json: nil)
		if nil != subject {
			self.subject = subject
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["clinicalNotes"] as? String {
				self.clinicalNotes = val
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = FHIRReference(json: val, owner: self)
			}
			if let val = js["event"] as? [NSDictionary] {
				self.event = DiagnosticOrderEvent.from(val) as? [DiagnosticOrderEvent]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["item"] as? [NSDictionary] {
				self.item = DiagnosticOrderItem.from(val) as? [DiagnosticOrderItem]
			}
			if let val = js["orderer"] as? NSDictionary {
				self.orderer = FHIRReference(json: val, owner: self)
			}
			if let val = js["priority"] as? String {
				self.priority = val
			}
			if let val = js["specimen"] as? [NSDictionary] {
				self.specimen = FHIRReference.from(val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
		}
	}
}


/**
 *  A list of events of interest in the lifecycle.
 *
 *  A summary of the events of interest that have occurred as the request is processed. E.g. when the order was made,
 *  various processing steps (specimens received), when it was completed.
 */
public class DiagnosticOrderEvent: FHIRElement
{	
	/// Who recorded or did this
	public var actor: FHIRReference<Practitioner>?
	
	/// The date at which the event happened
	public var dateTime: NSDate?
	
	/// More information about the event and it's context
	public var description: CodeableConcept?
	
	/// requested | received | accepted | in progress | review | completed | suspended | rejected | failed
	public var status: String?
	
	public convenience init(dateTime: NSDate?, status: String?) {
		self.init(json: nil)
		if nil != dateTime {
			self.dateTime = dateTime
		}
		if nil != status {
			self.status = status
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["actor"] as? NSDictionary {
				self.actor = FHIRReference(json: val, owner: self)
			}
			if let val = js["dateTime"] as? String {
				self.dateTime = NSDate(json: val)
			}
			if let val = js["description"] as? NSDictionary {
				self.description = CodeableConcept(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
}


/**
 *  The items the orderer requested.
 *
 *  The specific diagnostic investigations that are requested as part of this request. Sometimes, there can only be one
 *  item per request, but in most contexts, more than one investigation can be requested.
 */
public class DiagnosticOrderItem: FHIRElement
{	
	/// Location of requested test (if applicable)
	public var bodySite: CodeableConcept?
	
	/// Code to indicate the item (test or panel) being ordered
	public var code: CodeableConcept?
	
	/// Events specific to this item
	public var event: [DiagnosticOrderItemEvent]?
	
	/// If this item relates to specific specimens
	public var specimen: [FHIRReference<Specimen>]?
	
	/// requested | received | accepted | in progress | review | completed | suspended | rejected | failed
	public var status: String?
	
	public convenience init(code: CodeableConcept?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["bodySite"] as? NSDictionary {
				self.bodySite = CodeableConcept(json: val)
			}
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["event"] as? [NSDictionary] {
				self.event = DiagnosticOrderItemEvent.from(val) as? [DiagnosticOrderItemEvent]
			}
			if let val = js["specimen"] as? [NSDictionary] {
				self.specimen = FHIRReference.from(val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
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

}

