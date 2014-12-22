//
//  FamilyHistory.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (familyhistory.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Information about patient's relatives, relevant for patient.
 *
 *  Significant health events and conditions for people related to the subject relevant in the context of care for the
 *  subject.
 */
public class FamilyHistory: FHIRResource
{
	override public class var resourceName: String {
		get { return "FamilyHistory" }
	}
	
	/// When history was captured/updated
	public var date: NSDate?
	
	/// External Id(s) for this record
	public var identifier: [Identifier]?
	
	/// Additional details not covered elsewhere
	public var note: String?
	
	/// Patient history is about
	public var patient: Reference?
	
	/// Relative described by history
	public var relation: [FamilyHistoryRelation]?
	
	public convenience init(patient: Reference?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["relation"] as? [NSDictionary] {
				self.relation = FamilyHistoryRelation.from(val, owner: self) as? [FamilyHistoryRelation]
			}
		}
	}
}


/**
 *  Relative described by history.
 *
 *  The related person. Each FamilyHistory resource contains the entire family history for a single person.
 */
public class FamilyHistoryRelation: FHIRElement
{
	override public class var resourceName: String {
		get { return "FamilyHistoryRelation" }
	}
	
	/// (approximate) age
	public var ageAge: Age?
	
	/// (approximate) age
	public var ageRange: Range?
	
	/// (approximate) age
	public var ageString: String?
	
	/// (approximate) date of birth
	public var bornDate: NSDate?
	
	/// (approximate) date of birth
	public var bornPeriod: Period?
	
	/// (approximate) date of birth
	public var bornString: String?
	
	/// Condition that the related person had
	public var condition: [FamilyHistoryRelationCondition]?
	
	/// Dead? How old/when?
	public var deceasedAge: Age?
	
	/// Dead? How old/when?
	public var deceasedBoolean: Bool?
	
	/// Dead? How old/when?
	public var deceasedDate: NSDate?
	
	/// Dead? How old/when?
	public var deceasedRange: Range?
	
	/// Dead? How old/when?
	public var deceasedString: String?
	
	/// The family member described
	public var name: String?
	
	/// General note about related person
	public var note: String?
	
	/// Relationship to the subject
	public var relationship: CodeableConcept?
	
	public convenience init(relationship: CodeableConcept?) {
		self.init(json: nil)
		if nil != relationship {
			self.relationship = relationship
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["ageAge"] as? NSDictionary {
				self.ageAge = Age(json: val, owner: self)
			}
			if let val = js["ageRange"] as? NSDictionary {
				self.ageRange = Range(json: val, owner: self)
			}
			if let val = js["ageString"] as? String {
				self.ageString = val
			}
			if let val = js["bornDate"] as? String {
				self.bornDate = NSDate(json: val)
			}
			if let val = js["bornPeriod"] as? NSDictionary {
				self.bornPeriod = Period(json: val, owner: self)
			}
			if let val = js["bornString"] as? String {
				self.bornString = val
			}
			if let val = js["condition"] as? [NSDictionary] {
				self.condition = FamilyHistoryRelationCondition.from(val, owner: self) as? [FamilyHistoryRelationCondition]
			}
			if let val = js["deceasedAge"] as? NSDictionary {
				self.deceasedAge = Age(json: val, owner: self)
			}
			if let val = js["deceasedBoolean"] as? Bool {
				self.deceasedBoolean = val
			}
			if let val = js["deceasedDate"] as? String {
				self.deceasedDate = NSDate(json: val)
			}
			if let val = js["deceasedRange"] as? NSDictionary {
				self.deceasedRange = Range(json: val, owner: self)
			}
			if let val = js["deceasedString"] as? String {
				self.deceasedString = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["relationship"] as? NSDictionary {
				self.relationship = CodeableConcept(json: val, owner: self)
			}
		}
	}
}


/**
 *  Condition that the related person had.
 *
 *  The significant Conditions (or condition) that the family member had. This is a repeating section to allow a system
 *  to represent more than one condition per resource, though there is nothing stopping multiple resources - one per
 *  condition.
 */
public class FamilyHistoryRelationCondition: FHIRElement
{
	override public class var resourceName: String {
		get { return "FamilyHistoryRelationCondition" }
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
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["onsetAge"] as? NSDictionary {
				self.onsetAge = Age(json: val, owner: self)
			}
			if let val = js["onsetRange"] as? NSDictionary {
				self.onsetRange = Range(json: val, owner: self)
			}
			if let val = js["onsetString"] as? String {
				self.onsetString = val
			}
			if let val = js["outcome"] as? NSDictionary {
				self.outcome = CodeableConcept(json: val, owner: self)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
}

