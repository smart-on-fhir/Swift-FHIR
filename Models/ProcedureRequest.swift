//
//  ProcedureRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ProcedureRequest) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A request for a procedure to be performed.
 *
 *  A request for a procedure to be performed. May be a proposal or an order.
 */
public class ProcedureRequest: DomainResource
{
	override public class var resourceName: String {
		get { return "ProcedureRequest" }
	}
	
	/// PRN
	public var asNeededBoolean: Bool?
	
	/// PRN
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Target body sites
	public var bodySite: [ProcedureRequestBodySite]?
	
	/// Encounter
	public var encounter: Reference?
	
	/// Identifier
	public var identifier: [Identifier]?
	
	/// Indication
	public var indication: [CodeableConcept]?
	
	/// Notes
	public var notes: [String]?
	
	/// When Requested
	public var orderedOn: DateTime?
	
	/// Ordering Party
	public var orderer: Reference?
	
	/// Performer
	public var performer: Reference?
	
	/// routine | urgent | stat | asap
	public var priority: String?
	
	/// proposed | draft | requested | received | accepted | in-progress | completed | suspended | rejected | aborted
	public var status: String?
	
	/// Subject
	public var subject: Reference?
	
	/// Procedure timing schedule
	public var timingDateTime: DateTime?
	
	/// Procedure timing schedule
	public var timingPeriod: Period?
	
	/// Procedure timing schedule
	public var timingTiming: Timing?
	
	/// Procedure Type
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(subject: Reference?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != subject {
			self.subject = subject
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["asNeededBoolean"] {
				presentKeys.addObject("asNeededBoolean")
				if let val = exist as? Bool {
					self.asNeededBoolean = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"asNeededBoolean\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["asNeededCodeableConcept"] {
				presentKeys.addObject("asNeededCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.asNeededCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"asNeededCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["bodySite"] {
				presentKeys.addObject("bodySite")
				if let val = exist as? [FHIRJSON] {
					self.bodySite = ProcedureRequestBodySite.from(val, owner: self) as? [ProcedureRequestBodySite]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bodySite\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["indication"] {
				presentKeys.addObject("indication")
				if let val = exist as? [FHIRJSON] {
					self.indication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"indication\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["notes"] {
				presentKeys.addObject("notes")
				if let val = exist as? [String] {
					self.notes = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"notes\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["orderedOn"] {
				presentKeys.addObject("orderedOn")
				if let val = exist as? String {
					self.orderedOn = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"orderedOn\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["performer"] {
				presentKeys.addObject("performer")
				if let val = exist as? FHIRJSON {
					self.performer = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"performer\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["timingDateTime"] {
				presentKeys.addObject("timingDateTime")
				if let val = exist as? String {
					self.timingDateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"timingDateTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["timingPeriod"] {
				presentKeys.addObject("timingPeriod")
				if let val = exist as? FHIRJSON {
					self.timingPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"timingPeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["timingTiming"] {
				presentKeys.addObject("timingTiming")
				if let val = exist as? FHIRJSON {
					self.timingTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"timingTiming\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let asNeededBoolean = self.asNeededBoolean {
			json["asNeededBoolean"] = asNeededBoolean.asJSON()
		}
		if let asNeededCodeableConcept = self.asNeededCodeableConcept {
			json["asNeededCodeableConcept"] = asNeededCodeableConcept.asJSON()
		}
		if let bodySite = self.bodySite {
			json["bodySite"] = ProcedureRequestBodySite.asJSONArray(bodySite)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let indication = self.indication {
			json["indication"] = CodeableConcept.asJSONArray(indication)
		}
		if let notes = self.notes {
			var arr = [AnyObject]()
			for val in notes {
				arr.append(val.asJSON())
			}
			json["notes"] = arr
		}
		if let orderedOn = self.orderedOn {
			json["orderedOn"] = orderedOn.asJSON()
		}
		if let orderer = self.orderer {
			json["orderer"] = orderer.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = performer.asJSON()
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let timingDateTime = self.timingDateTime {
			json["timingDateTime"] = timingDateTime.asJSON()
		}
		if let timingPeriod = self.timingPeriod {
			json["timingPeriod"] = timingPeriod.asJSON()
		}
		if let timingTiming = self.timingTiming {
			json["timingTiming"] = timingTiming.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Target body sites.
 *
 *  Indicates the sites on the subject's body where the procedure should be performed ( i.e. the target sites).
 */
public class ProcedureRequestBodySite: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProcedureRequestBodySite" }
	}
	
	/// Target body site
	public var siteCodeableConcept: CodeableConcept?
	
	/// Target body site
	public var siteReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(siteCodeableConcept: CodeableConcept?, siteReference: Reference?) {
		self.init(json: nil)
		if nil != siteCodeableConcept {
			self.siteCodeableConcept = siteCodeableConcept
		}
		if nil != siteReference {
			self.siteReference = siteReference
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["siteCodeableConcept"] {
				presentKeys.addObject("siteCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.siteCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"siteCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["siteReference"] {
				presentKeys.addObject("siteReference")
				if let val = exist as? FHIRJSON {
					self.siteReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"siteReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.siteCodeableConcept && nil == self.siteReference {
				errors.append(fhir_generateJSONError("\(self) expects at least one of nonoptional JSON property \"site[x]\" but none was found"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let siteCodeableConcept = self.siteCodeableConcept {
			json["siteCodeableConcept"] = siteCodeableConcept.asJSON()
		}
		if let siteReference = self.siteReference {
			json["siteReference"] = siteReference.asJSON()
		}
		
		return json
	}
}

