//
//  DiagnosticOrder.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (diagnosticorder.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A request for a diagnostic service.
 *
 *  A request for a diagnostic investigation service to be performed.
 */
public class DiagnosticOrder: FHIRResource
{
	override public class var resourceName: String {
		get { return "DiagnosticOrder" }
	}
	
	/// Explanation/Justification for test
	public var clinicalNotes: String?
	
	/// The encounter that this diagnostic order is associated with
	public var encounter: Reference?
	
	/// A list of events of interest in the lifecycle
	public var event: [DiagnosticOrderEvent]?
	
	/// Identifiers assigned to this order
	public var identifier: [Identifier]?
	
	/// The items the orderer requested
	public var item: [DiagnosticOrderItem]?
	
	/// Who ordered the test
	public var orderer: Reference?
	
	/// routine | urgent | stat | asap
	public var priority: String?
	
	/// If the whole order relates to specific specimens
	public var specimen: [Reference]?
	
	/// requested | received | accepted | in progress | review | completed | suspended | rejected | failed
	public var status: String?
	
	/// Who and/or what test is about
	public var subject: Reference?
	
	/// Supporting observations or conditions for this request
	public var supportingInformation: [Reference]?
	
	public convenience init(subject: Reference?) {
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
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["event"] as? [NSDictionary] {
				self.event = DiagnosticOrderEvent.from(val, owner: self) as? [DiagnosticOrderEvent]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["item"] as? [NSDictionary] {
				self.item = DiagnosticOrderItem.from(val, owner: self) as? [DiagnosticOrderItem]
			}
			if let val = js["orderer"] as? NSDictionary {
				self.orderer = Reference(json: val, owner: self)
			}
			if let val = js["priority"] as? String {
				self.priority = val
			}
			if let val = js["specimen"] as? [NSDictionary] {
				self.specimen = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["supportingInformation"] as? [NSDictionary] {
				self.supportingInformation = Reference.from(val, owner: self) as? [Reference]
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
	override public class var resourceName: String {
		get { return "DiagnosticOrderEvent" }
	}
	
	/// Who recorded or did this
	public var actor: Reference?
	
	/// The date at which the event happened
	public var dateTime: NSDate?
	
	/// More information about the event and its context
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
				self.actor = Reference(json: val, owner: self)
			}
			if let val = js["dateTime"] as? String {
				self.dateTime = NSDate(json: val)
			}
			if let val = js["description"] as? NSDictionary {
				self.description = CodeableConcept(json: val, owner: self)
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
	override public class var resourceName: String {
		get { return "DiagnosticOrderItem" }
	}
	
	/// Location of requested test (if applicable)
	public var bodySite: CodeableConcept?
	
	/// Code to indicate the item (test or panel) being ordered
	public var code: CodeableConcept?
	
	/// A list of events of interest in the lifecycle
	public var event: [DiagnosticOrderEvent]?
	
	/// If this item relates to specific specimens
	public var specimen: [Reference]?
	
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
				self.bodySite = CodeableConcept(json: val, owner: self)
			}
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["event"] as? [NSDictionary] {
				self.event = DiagnosticOrderEvent.from(val, owner: self) as? [DiagnosticOrderEvent]
			}
			if let val = js["specimen"] as? [NSDictionary] {
				self.specimen = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
}

