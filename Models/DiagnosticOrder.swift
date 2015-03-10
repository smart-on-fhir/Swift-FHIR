//
//  DiagnosticOrder.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/DiagnosticOrder) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A request for a diagnostic service.
 *
 *  A record of a request for a diagnostic investigation service to be performed.
 */
public class DiagnosticOrder: DomainResource
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
	
	/// proposed | draft | planned | requested | received | accepted | in-progress | review | completed | cancelled | suspended | rejected | failed
	public var status: String?
	
	/// Who and/or what test is about
	public var subject: Reference?
	
	/// Additional clinical information
	public var supportingInformation: [Reference]?
	
	public convenience init(subject: Reference?) {
		self.init(json: nil)
		if nil != subject {
			self.subject = subject
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["clinicalNotes"] as? String {
				self.clinicalNotes = val
			}
			if let val = js["encounter"] as? JSONDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["event"] as? [JSONDictionary] {
				self.event = DiagnosticOrderEvent.from(val, owner: self) as? [DiagnosticOrderEvent]
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["item"] as? [JSONDictionary] {
				self.item = DiagnosticOrderItem.from(val, owner: self) as? [DiagnosticOrderItem]
			}
			if let val = js["orderer"] as? JSONDictionary {
				self.orderer = Reference(json: val, owner: self)
			}
			if let val = js["priority"] as? String {
				self.priority = val
			}
			if let val = js["specimen"] as? [JSONDictionary] {
				self.specimen = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["supportingInformation"] as? [JSONDictionary] {
				self.supportingInformation = Reference.from(val, owner: self) as? [Reference]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let clinicalNotes = self.clinicalNotes {
			json["clinicalNotes"] = clinicalNotes.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let event = self.event {
			json["event"] = DiagnosticOrderEvent.asJSONArray(event)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let item = self.item {
			json["item"] = DiagnosticOrderItem.asJSONArray(item)
		}
		if let orderer = self.orderer {
			json["orderer"] = orderer.asJSON()
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let specimen = self.specimen {
			json["specimen"] = Reference.asJSONArray(specimen)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let supportingInformation = self.supportingInformation {
			json["supportingInformation"] = Reference.asJSONArray(supportingInformation)
		}
		
		return json
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
	public var dateTime: DateTime?
	
	/// More information about the event and its context
	public var description_fhir: CodeableConcept?
	
	/// proposed | draft | planned | requested | received | accepted | in-progress | review | completed | cancelled | suspended | rejected | failed
	public var status: String?
	
	public convenience init(dateTime: DateTime?, status: String?) {
		self.init(json: nil)
		if nil != dateTime {
			self.dateTime = dateTime
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["actor"] as? JSONDictionary {
				self.actor = Reference(json: val, owner: self)
			}
			if let val = js["dateTime"] as? String {
				self.dateTime = DateTime(string: val)
			}
			if let val = js["description"] as? JSONDictionary {
				self.description_fhir = CodeableConcept(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let actor = self.actor {
			json["actor"] = actor.asJSON()
		}
		if let dateTime = self.dateTime {
			json["dateTime"] = dateTime.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
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
	public var bodySiteCodeableConcept: CodeableConcept?
	
	/// Location of requested test (if applicable)
	public var bodySiteReference: Reference?
	
	/// Code to indicate the item (test or panel) being ordered
	public var code: CodeableConcept?
	
	/// A list of events of interest in the lifecycle
	public var event: [DiagnosticOrderEvent]?
	
	/// If this item relates to specific specimens
	public var specimen: [Reference]?
	
	/// proposed | draft | planned | requested | received | accepted | in-progress | review | completed | cancelled | suspended | rejected | failed
	public var status: String?
	
	public convenience init(code: CodeableConcept?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["bodySiteCodeableConcept"] as? JSONDictionary {
				self.bodySiteCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["bodySiteReference"] as? JSONDictionary {
				self.bodySiteReference = Reference(json: val, owner: self)
			}
			if let val = js["code"] as? JSONDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["event"] as? [JSONDictionary] {
				self.event = DiagnosticOrderEvent.from(val, owner: self) as? [DiagnosticOrderEvent]
			}
			if let val = js["specimen"] as? [JSONDictionary] {
				self.specimen = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let bodySiteCodeableConcept = self.bodySiteCodeableConcept {
			json["bodySiteCodeableConcept"] = bodySiteCodeableConcept.asJSON()
		}
		if let bodySiteReference = self.bodySiteReference {
			json["bodySiteReference"] = bodySiteReference.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let event = self.event {
			json["event"] = DiagnosticOrderEvent.asJSONArray(event)
		}
		if let specimen = self.specimen {
			json["specimen"] = Reference.asJSONArray(specimen)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}

