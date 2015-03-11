//
//  Procedure.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/Procedure) on 2015-03-11.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  An action that is performed on a patient.
 *
 *  An action that is performed on a patient. This can be a physical 'thing' like an operation, or less invasive like
 *  counseling or hypnotherapy.
 */
public class Procedure: DomainResource
{
	override public class var resourceName: String {
		get { return "Procedure" }
	}
	
	/// Precise location details
	public var bodySite: [CodeableConcept]?
	
	/// Complication following the procedure
	public var complication: [CodeableConcept]?
	
	/// The date the procedure was performed
	public var date: Period?
	
	/// The encounter when procedure performed
	public var encounter: Reference?
	
	/// Instructions for follow up
	public var followUp: String?
	
	/// External Ids for this procedure
	public var identifier: [Identifier]?
	
	/// Reason procedure performed
	public var indication: [CodeableConcept]?
	
	/// Additional information about procedure
	public var notes: String?
	
	/// What was result of procedure?
	public var outcome: String?
	
	/// Who procedure was performed on
	public var patient: Reference?
	
	/// The people who performed the procedure
	public var performer: [ProcedurePerformer]?
	
	/// A procedure that is related to this one
	public var relatedItem: [ProcedureRelatedItem]?
	
	/// Any report that results from the procedure
	public var report: [Reference]?
	
	/// Identification of the procedure
	public var type: CodeableConcept?
	
	public convenience init(patient: Reference?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["bodySite"] as? [JSONDictionary] {
				self.bodySite = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["complication"] as? [JSONDictionary] {
				self.complication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["date"] as? JSONDictionary {
				self.date = Period(json: val, owner: self)
			}
			if let val = js["encounter"] as? JSONDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["followUp"] as? String {
				self.followUp = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["indication"] as? [JSONDictionary] {
				self.indication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["outcome"] as? String {
				self.outcome = val
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["performer"] as? [JSONDictionary] {
				self.performer = ProcedurePerformer.from(val, owner: self) as? [ProcedurePerformer]
			}
			if let val = js["relatedItem"] as? [JSONDictionary] {
				self.relatedItem = ProcedureRelatedItem.from(val, owner: self) as? [ProcedureRelatedItem]
			}
			if let val = js["report"] as? [JSONDictionary] {
				self.report = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let bodySite = self.bodySite {
			json["bodySite"] = CodeableConcept.asJSONArray(bodySite)
		}
		if let complication = self.complication {
			json["complication"] = CodeableConcept.asJSONArray(complication)
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let followUp = self.followUp {
			json["followUp"] = followUp.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let indication = self.indication {
			json["indication"] = CodeableConcept.asJSONArray(indication)
		}
		if let notes = self.notes {
			json["notes"] = notes.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = ProcedurePerformer.asJSONArray(performer)
		}
		if let relatedItem = self.relatedItem {
			json["relatedItem"] = ProcedureRelatedItem.asJSONArray(relatedItem)
		}
		if let report = self.report {
			json["report"] = Reference.asJSONArray(report)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  The people who performed the procedure.
 *
 *  Limited to 'real' people rather than equipment.
 */
public class ProcedurePerformer: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProcedurePerformer" }
	}
	
	/// The reference to the practitioner
	public var person: Reference?
	
	/// The role the person was in
	public var role: CodeableConcept?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["person"] as? JSONDictionary {
				self.person = Reference(json: val, owner: self)
			}
			if let val = js["role"] as? JSONDictionary {
				self.role = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let person = self.person {
			json["person"] = person.asJSON()
		}
		if let role = self.role {
			json["role"] = role.asJSON()
		}
		
		return json
	}
}


/**
 *  A procedure that is related to this one.
 *
 *  Procedures may be related to other items such as procedures or medications. For example treating wound dehiscence
 *  following a previous procedure.
 */
public class ProcedureRelatedItem: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProcedureRelatedItem" }
	}
	
	/// The related item - e.g. a procedure
	public var target: Reference?
	
	/// caused-by | because-of
	public var type: String?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["target"] as? JSONDictionary {
				self.target = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

