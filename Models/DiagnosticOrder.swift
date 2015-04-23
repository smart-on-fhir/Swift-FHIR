//
//  DiagnosticOrder.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/DiagnosticOrder) on 2015-04-23.
//  2015, SMART Health IT.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(subject: Reference?) {
		self.init(json: nil)
		if nil != subject {
			self.subject = subject
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["clinicalNotes"] {
				presentKeys.addObject("clinicalNotes")
				if let val = exist as? String {
					self.clinicalNotes = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"clinicalNotes\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.addObject("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"encounter\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["event"] {
				presentKeys.addObject("event")
				if let val = exist as? [FHIRJSON] {
					self.event = DiagnosticOrderEvent.from(val, owner: self) as? [DiagnosticOrderEvent]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"event\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.addObject("item")
				if let val = exist as? [FHIRJSON] {
					self.item = DiagnosticOrderItem.from(val, owner: self) as? [DiagnosticOrderItem]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"item\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["orderer"] {
				presentKeys.addObject("orderer")
				if let val = exist as? FHIRJSON {
					self.orderer = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"orderer\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["priority"] {
				presentKeys.addObject("priority")
				if let val = exist as? String {
					self.priority = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"priority\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["specimen"] {
				presentKeys.addObject("specimen")
				if let val = exist as? [FHIRJSON] {
					self.specimen = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"specimen\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.addObject("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subject\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"subject\" but it is missing"))
			}
			if let exist: AnyObject = js["supportingInformation"] {
				presentKeys.addObject("supportingInformation")
				if let val = exist as? [FHIRJSON] {
					self.supportingInformation = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"supportingInformation\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(dateTime: DateTime?, status: String?) {
		self.init(json: nil)
		if nil != dateTime {
			self.dateTime = dateTime
		}
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["actor"] {
				presentKeys.addObject("actor")
				if let val = exist as? FHIRJSON {
					self.actor = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"actor\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["dateTime"] {
				presentKeys.addObject("dateTime")
				if let val = exist as? String {
					self.dateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"dateTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"dateTime\" but it is missing"))
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? FHIRJSON {
					self.description_fhir = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
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
	
	/// Events specific to this item
	public var event: [DiagnosticOrderEvent]?
	
	/// If this item relates to specific specimens
	public var specimen: [Reference]?
	
	/// proposed | draft | planned | requested | received | accepted | in-progress | review | completed | cancelled | suspended | rejected | failed
	public var status: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: CodeableConcept?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["bodySiteCodeableConcept"] {
				presentKeys.addObject("bodySiteCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.bodySiteCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bodySiteCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["bodySiteReference"] {
				presentKeys.addObject("bodySiteReference")
				if let val = exist as? FHIRJSON {
					self.bodySiteReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bodySiteReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["event"] {
				presentKeys.addObject("event")
				if let val = exist as? [FHIRJSON] {
					self.event = DiagnosticOrderEvent.from(val, owner: self) as? [DiagnosticOrderEvent]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"event\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["specimen"] {
				presentKeys.addObject("specimen")
				if let val = exist as? [FHIRJSON] {
					self.specimen = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"specimen\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

