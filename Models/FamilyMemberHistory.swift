//
//  FamilyMemberHistory.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Information about patient's relatives, relevant for patient.
 *
 *  Significant health events and conditions for a person related to the patient relevant in the context of care for the
 *  patient.
 */
public class FamilyMemberHistory: DomainResource
{
	override public class var resourceName: String {
		get { return "FamilyMemberHistory" }
	}
	
	/// (approximate) age
	public var ageAge: Age?
	
	/// (approximate) age
	public var ageRange: Range?
	
	/// (approximate) age
	public var ageString: String?
	
	/// (approximate) date of birth
	public var bornDate: Date?
	
	/// (approximate) date of birth
	public var bornPeriod: Period?
	
	/// (approximate) date of birth
	public var bornString: String?
	
	/// Condition that the related person had
	public var condition: [FamilyMemberHistoryCondition]?
	
	/// When history was captured/updated
	public var date: DateTime?
	
	/// Dead? How old/when?
	public var deceasedAge: Age?
	
	/// Dead? How old/when?
	public var deceasedBoolean: Bool?
	
	/// Dead? How old/when?
	public var deceasedDate: Date?
	
	/// Dead? How old/when?
	public var deceasedRange: Range?
	
	/// Dead? How old/when?
	public var deceasedString: String?
	
	/// male | female | other | unknown
	public var gender: String?
	
	/// External Id(s) for this record
	public var identifier: [Identifier]?
	
	/// The family member described
	public var name: String?
	
	/// General note about related person
	public var note: String?
	
	/// Patient history is about
	public var patient: Reference?
	
	/// Relationship to the subject
	public var relationship: CodeableConcept?
	
	public convenience init(patient: Reference?, relationship: CodeableConcept?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
		if nil != relationship {
			self.relationship = relationship
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["ageAge"] as? FHIRJSON {
				self.ageAge = Age(json: val, owner: self)
			}
			if let val = js["ageRange"] as? FHIRJSON {
				self.ageRange = Range(json: val, owner: self)
			}
			if let val = js["ageString"] as? String {
				self.ageString = val
			}
			if let val = js["bornDate"] as? String {
				self.bornDate = Date(string: val)
			}
			if let val = js["bornPeriod"] as? FHIRJSON {
				self.bornPeriod = Period(json: val, owner: self)
			}
			if let val = js["bornString"] as? String {
				self.bornString = val
			}
			if let val = js["condition"] as? [FHIRJSON] {
				self.condition = FamilyMemberHistoryCondition.from(val, owner: self) as? [FamilyMemberHistoryCondition]
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["deceasedAge"] as? FHIRJSON {
				self.deceasedAge = Age(json: val, owner: self)
			}
			if let val = js["deceasedBoolean"] as? Bool {
				self.deceasedBoolean = val
			}
			if let val = js["deceasedDate"] as? String {
				self.deceasedDate = Date(string: val)
			}
			if let val = js["deceasedRange"] as? FHIRJSON {
				self.deceasedRange = Range(json: val, owner: self)
			}
			if let val = js["deceasedString"] as? String {
				self.deceasedString = val
			}
			if let val = js["gender"] as? String {
				self.gender = val
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["patient"] as? FHIRJSON {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["relationship"] as? FHIRJSON {
				self.relationship = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let ageAge = self.ageAge {
			json["ageAge"] = ageAge.asJSON()
		}
		if let ageRange = self.ageRange {
			json["ageRange"] = ageRange.asJSON()
		}
		if let ageString = self.ageString {
			json["ageString"] = ageString.asJSON()
		}
		if let bornDate = self.bornDate {
			json["bornDate"] = bornDate.asJSON()
		}
		if let bornPeriod = self.bornPeriod {
			json["bornPeriod"] = bornPeriod.asJSON()
		}
		if let bornString = self.bornString {
			json["bornString"] = bornString.asJSON()
		}
		if let condition = self.condition {
			json["condition"] = FamilyMemberHistoryCondition.asJSONArray(condition)
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let deceasedAge = self.deceasedAge {
			json["deceasedAge"] = deceasedAge.asJSON()
		}
		if let deceasedBoolean = self.deceasedBoolean {
			json["deceasedBoolean"] = deceasedBoolean.asJSON()
		}
		if let deceasedDate = self.deceasedDate {
			json["deceasedDate"] = deceasedDate.asJSON()
		}
		if let deceasedRange = self.deceasedRange {
			json["deceasedRange"] = deceasedRange.asJSON()
		}
		if let deceasedString = self.deceasedString {
			json["deceasedString"] = deceasedString.asJSON()
		}
		if let gender = self.gender {
			json["gender"] = gender.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON()
		}
		
		return json
	}
}


/**
 *  Condition that the related person had.
 *
 *  The significant Conditions (or condition) that the family member had. This is a repeating section to allow a system
 *  to represent more than one condition per resource, though there is nothing stopping multiple resources - one per
 *  condition.
 */
public class FamilyMemberHistoryCondition: FHIRElement
{
	override public class var resourceName: String {
		get { return "FamilyMemberHistoryCondition" }
	}
	
	/// Extra information about condition
	public var note: String?
	
	/// When condition first manifested
	public var onsetAge: Age?
	
	/// When condition first manifested
	public var onsetRange: Range?
	
	/// When condition first manifested
	public var onsetString: String?
	
	/// deceased | permanent disability | etc.
	public var outcome: CodeableConcept?
	
	/// Condition suffered by relation
	public var type: CodeableConcept?
	
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["onsetAge"] as? FHIRJSON {
				self.onsetAge = Age(json: val, owner: self)
			}
			if let val = js["onsetRange"] as? FHIRJSON {
				self.onsetRange = Range(json: val, owner: self)
			}
			if let val = js["onsetString"] as? String {
				self.onsetString = val
			}
			if let val = js["outcome"] as? FHIRJSON {
				self.outcome = CodeableConcept(json: val, owner: self)
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let onsetAge = self.onsetAge {
			json["onsetAge"] = onsetAge.asJSON()
		}
		if let onsetRange = self.onsetRange {
			json["onsetRange"] = onsetRange.asJSON()
		}
		if let onsetString = self.onsetString {
			json["onsetString"] = onsetString.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

