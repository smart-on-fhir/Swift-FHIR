//
//  DiagnosticOrder.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/DiagnosticOrder) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A request for a diagnostic service.
 *
 *  A record of a request for a diagnostic investigation service to be performed.
 */
public class DiagnosticOrder: DomainResource {
	override public class var resourceType: String {
		get { return "DiagnosticOrder" }
	}
	
	/// The encounter that this diagnostic order is associated with.
	public var encounter: Reference?
	
	/// A list of events of interest in the lifecycle.
	public var event: [DiagnosticOrderEvent]?
	
	/// Identifiers assigned to this order.
	public var identifier: [Identifier]?
	
	/// The items the orderer requested.
	public var item: [DiagnosticOrderItem]?
	
	/// Other notes and comments.
	public var note: [Annotation]?
	
	/// Who ordered the test.
	public var orderer: Reference?
	
	/// routine | urgent | stat | asap.
	public var priority: String?
	
	/// Explanation/Justification for test.
	public var reason: [CodeableConcept]?
	
	/// If the whole order relates to specific specimens.
	public var specimen: [Reference]?
	
	/// proposed | draft | planned | requested | received | accepted | in-progress | review | completed | cancelled | suspended | rejected | failed.
	public var status: String?
	
	/// Who and/or what test is about.
	public var subject: Reference?
	
	/// Additional clinical information.
	public var supportingInformation: [Reference]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(subject: Reference) {
		self.init(json: nil)
		self.subject = subject
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["event"] {
				presentKeys.insert("event")
				if let val = exist as? [FHIRJSON] {
					self.event = DiagnosticOrderEvent.instantiate(fromArray: val, owner: self) as? [DiagnosticOrderEvent]
				}
				else {
					errors.append(FHIRJSONError(key: "event", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = DiagnosticOrderItem.instantiate(fromArray: val, owner: self) as? [DiagnosticOrderItem]
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["orderer"] {
				presentKeys.insert("orderer")
				if let val = exist as? FHIRJSON {
					self.orderer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "orderer", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["priority"] {
				presentKeys.insert("priority")
				if let val = exist as? String {
					self.priority = val
				}
				else {
					errors.append(FHIRJSONError(key: "priority", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? [FHIRJSON] {
					self.reason = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["specimen"] {
				presentKeys.insert("specimen")
				if let val = exist as? [FHIRJSON] {
					self.specimen = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "specimen", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "subject"))
			}
			if let exist = js["supportingInformation"] {
				presentKeys.insert("supportingInformation")
				if let val = exist as? [FHIRJSON] {
					self.supportingInformation = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "supportingInformation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
		if let note = self.note {
			json["note"] = Annotation.asJSONArray(note)
		}
		if let orderer = self.orderer {
			json["orderer"] = orderer.asJSON()
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = CodeableConcept.asJSONArray(reason)
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
 *  A summary of the events of interest that have occurred as the request is processed; e.g. when the order was made,
 *  various processing steps (specimens received), when it was completed.
 */
public class DiagnosticOrderEvent: BackboneElement {
	override public class var resourceType: String {
		get { return "DiagnosticOrderEvent" }
	}
	
	/// Who recorded or did this.
	public var actor: Reference?
	
	/// The date at which the event happened.
	public var dateTime: DateTime?
	
	/// More information about the event and its context.
	public var description_fhir: CodeableConcept?
	
	/// proposed | draft | planned | requested | received | accepted | in-progress | review | completed | cancelled | suspended | rejected | failed.
	public var status: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(dateTime: DateTime, status: String) {
		self.init(json: nil)
		self.dateTime = dateTime
		self.status = status
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["actor"] {
				presentKeys.insert("actor")
				if let val = exist as? FHIRJSON {
					self.actor = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "actor", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["dateTime"] {
				presentKeys.insert("dateTime")
				if let val = exist as? String {
					self.dateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "dateTime", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "dateTime"))
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? FHIRJSON {
					self.description_fhir = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class DiagnosticOrderItem: BackboneElement {
	override public class var resourceType: String {
		get { return "DiagnosticOrderItem" }
	}
	
	/// Location of requested test (if applicable).
	public var bodySite: CodeableConcept?
	
	/// Code to indicate the item (test or panel) being ordered.
	public var code: CodeableConcept?
	
	/// Events specific to this item.
	public var event: [DiagnosticOrderEvent]?
	
	/// If this item relates to specific specimens.
	public var specimen: [Reference]?
	
	/// proposed | draft | planned | requested | received | accepted | in-progress | review | completed | cancelled | suspended | rejected | failed.
	public var status: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init(json: nil)
		self.code = code
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["bodySite"] {
				presentKeys.insert("bodySite")
				if let val = exist as? FHIRJSON {
					self.bodySite = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "bodySite", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist = js["event"] {
				presentKeys.insert("event")
				if let val = exist as? [FHIRJSON] {
					self.event = DiagnosticOrderEvent.instantiate(fromArray: val, owner: self) as? [DiagnosticOrderEvent]
				}
				else {
					errors.append(FHIRJSONError(key: "event", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["specimen"] {
				presentKeys.insert("specimen")
				if let val = exist as? [FHIRJSON] {
					self.specimen = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "specimen", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.asJSON()
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

