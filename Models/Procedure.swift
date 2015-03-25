//
//  Procedure.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/Procedure) on 2015-03-25.
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
	public var bodySite: [ProcedureBodySite]?
	
	/// Classification of the procedure
	public var category: CodeableConcept?
	
	/// Complication following the procedure
	public var complication: [CodeableConcept]?
	
	/// Device changed in procedure
	public var device: [ProcedureDevice]?
	
	/// The encounter when procedure performed
	public var encounter: Reference?
	
	/// Instructions for follow up
	public var followUp: [CodeableConcept]?
	
	/// External Ids for this procedure
	public var identifier: [Identifier]?
	
	/// Reason procedure performed
	public var indication: [CodeableConcept]?
	
	/// Where the procedure happened
	public var location: Reference?
	
	/// Additional information about procedure
	public var notes: String?
	
	/// What was result of procedure?
	public var outcome: CodeableConcept?
	
	/// Who procedure was performed on
	public var patient: Reference?
	
	/// Date/Period the procedure was performed
	public var performedDateTime: DateTime?
	
	/// Date/Period the procedure was performed
	public var performedPeriod: Period?
	
	/// The people who performed the procedure
	public var performer: [ProcedurePerformer]?
	
	/// A procedure that is related to this one
	public var relatedItem: [ProcedureRelatedItem]?
	
	/// Any report that results from the procedure
	public var report: [Reference]?
	
	/// in-progress | aborted | completed | entered-in-error
	public var status: String?
	
	/// Identification of the procedure
	public var type: CodeableConcept?
	
	public convenience init(patient: Reference?, status: String?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
		if nil != status {
			self.status = status
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["bodySite"] as? [FHIRJSON] {
				self.bodySite = ProcedureBodySite.from(val, owner: self) as? [ProcedureBodySite]
			}
			if let val = js["category"] as? FHIRJSON {
				self.category = CodeableConcept(json: val, owner: self)
			}
			if let val = js["complication"] as? [FHIRJSON] {
				self.complication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["device"] as? [FHIRJSON] {
				self.device = ProcedureDevice.from(val, owner: self) as? [ProcedureDevice]
			}
			if let val = js["encounter"] as? FHIRJSON {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["followUp"] as? [FHIRJSON] {
				self.followUp = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["indication"] as? [FHIRJSON] {
				self.indication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["location"] as? FHIRJSON {
				self.location = Reference(json: val, owner: self)
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["outcome"] as? FHIRJSON {
				self.outcome = CodeableConcept(json: val, owner: self)
			}
			if let val = js["patient"] as? FHIRJSON {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["performedDateTime"] as? String {
				self.performedDateTime = DateTime(string: val)
			}
			if let val = js["performedPeriod"] as? FHIRJSON {
				self.performedPeriod = Period(json: val, owner: self)
			}
			if let val = js["performer"] as? [FHIRJSON] {
				self.performer = ProcedurePerformer.from(val, owner: self) as? [ProcedurePerformer]
			}
			if let val = js["relatedItem"] as? [FHIRJSON] {
				self.relatedItem = ProcedureRelatedItem.from(val, owner: self) as? [ProcedureRelatedItem]
			}
			if let val = js["report"] as? [FHIRJSON] {
				self.report = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let bodySite = self.bodySite {
			json["bodySite"] = ProcedureBodySite.asJSONArray(bodySite)
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let complication = self.complication {
			json["complication"] = CodeableConcept.asJSONArray(complication)
		}
		if let device = self.device {
			json["device"] = ProcedureDevice.asJSONArray(device)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let followUp = self.followUp {
			json["followUp"] = CodeableConcept.asJSONArray(followUp)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let indication = self.indication {
			json["indication"] = CodeableConcept.asJSONArray(indication)
		}
		if let location = self.location {
			json["location"] = location.asJSON()
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
		if let performedDateTime = self.performedDateTime {
			json["performedDateTime"] = performedDateTime.asJSON()
		}
		if let performedPeriod = self.performedPeriod {
			json["performedPeriod"] = performedPeriod.asJSON()
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
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Precise location details.
 *
 *  Detailed and structured anatomical location information. Multiple locations are allowed - e.g. multiple punch
 *  biopsies of a lesion.
 */
public class ProcedureBodySite: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProcedureBodySite" }
	}
	
	/// Precise location details
	public var siteCodeableConcept: CodeableConcept?
	
	/// Precise location details
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


/**
 *  Device changed in procedure.
 *
 *  A device change during the procedure.
 */
public class ProcedureDevice: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProcedureDevice" }
	}
	
	/// Kind of change to device
	public var action: CodeableConcept?
	
	/// Device that was changed
	public var manipulated: Reference?
	
	public convenience init(manipulated: Reference?) {
		self.init(json: nil)
		if nil != manipulated {
			self.manipulated = manipulated
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["action"] as? FHIRJSON {
				self.action = CodeableConcept(json: val, owner: self)
			}
			if let val = js["manipulated"] as? FHIRJSON {
				self.manipulated = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.asJSON()
		}
		if let manipulated = self.manipulated {
			json["manipulated"] = manipulated.asJSON()
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["person"] as? FHIRJSON {
				self.person = Reference(json: val, owner: self)
			}
			if let val = js["role"] as? FHIRJSON {
				self.role = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["target"] as? FHIRJSON {
				self.target = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
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

