//
//  ProcedureRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ProcedureRequest) on 2015-04-03.
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
	
	public convenience init(subject: Reference?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != subject {
			self.subject = subject
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["asNeededBoolean"] as? Bool {
				self.asNeededBoolean = val
			}
			if let val = js["asNeededCodeableConcept"] as? FHIRJSON {
				self.asNeededCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["bodySite"] as? [FHIRJSON] {
				self.bodySite = ProcedureRequestBodySite.from(val, owner: self) as? [ProcedureRequestBodySite]
			}
			if let val = js["encounter"] as? FHIRJSON {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["indication"] as? [FHIRJSON] {
				self.indication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["notes"] as? [String] {
				self.notes = val
			}
			if let val = js["orderedOn"] as? String {
				self.orderedOn = DateTime(string: val)
			}
			if let val = js["orderer"] as? FHIRJSON {
				self.orderer = Reference(json: val, owner: self)
			}
			if let val = js["performer"] as? FHIRJSON {
				self.performer = Reference(json: val, owner: self)
			}
			if let val = js["priority"] as? String {
				self.priority = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? FHIRJSON {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["timingDateTime"] as? String {
				self.timingDateTime = DateTime(string: val)
			}
			if let val = js["timingPeriod"] as? FHIRJSON {
				self.timingPeriod = Period(json: val, owner: self)
			}
			if let val = js["timingTiming"] as? FHIRJSON {
				self.timingTiming = Timing(json: val, owner: self)
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
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
	
	public convenience init(siteCodeableConcept: CodeableConcept?, siteReference: Reference?) {
		self.init(json: nil)
		if nil != siteCodeableConcept {
			self.siteCodeableConcept = siteCodeableConcept
		}
		if nil != siteReference {
			self.siteReference = siteReference
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["siteCodeableConcept"] as? FHIRJSON {
				self.siteCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["siteReference"] as? FHIRJSON {
				self.siteReference = Reference(json: val, owner: self)
			}
		}
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

