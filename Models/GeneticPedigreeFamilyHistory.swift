//
//  GeneticPedigreeFamilyHistory.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (family-history-genetics-geneticpedigreefamilyhistory.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  None.
 */
public class GeneticPedigreeFamilyHistory: FamilyHistory
{
	override public class var resourceName: String {
		get { return "GeneticPedigreeFamilyHistory" }
	}
	
	/// None
	public var note: String?
	
	/// None
	public var relation: [GeneticPedigreeFamilyHistoryRelation]?
	
	/// None
	public var subject: Reference?
	
	public convenience init(relation: [GeneticPedigreeFamilyHistoryRelation]?, subject: Reference?) {
		self.init(json: nil)
		if nil != relation {
			self.relation = relation
		}
		if nil != subject {
			self.subject = subject
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["relation"] as? [NSDictionary] {
				self.relation = GeneticPedigreeFamilyHistoryRelation.from(val, owner: self) as? [GeneticPedigreeFamilyHistoryRelation]
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
		}
	}
}


/**
 *  None.
 */
public class GeneticPedigreeFamilyHistoryRelation: FHIRElement
{
	override public class var resourceName: String {
		get { return "GeneticPedigreeFamilyHistoryRelation" }
	}
	
	/// None
	public var bornDate: NSDate?
	
	/// None
	public var bornPeriod: Period?
	
	/// None
	public var bornString: String?
	
	/// None
	public var condition: [GeneticPedigreeFamilyHistoryRelationCondition]?
	
	/// None
	public var deceasedAge: Age?
	
	/// None
	public var deceasedBoolean: Bool?
	
	/// None
	public var deceasedRange: Range?
	
	/// None
	public var deceasedString: String?
	
	/// None
	public var name: String?
	
	/// None
	public var note: String?
	
	/// None
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
				self.condition = GeneticPedigreeFamilyHistoryRelationCondition.from(val, owner: self) as? [GeneticPedigreeFamilyHistoryRelationCondition]
			}
			if let val = js["deceasedAge"] as? NSDictionary {
				self.deceasedAge = Age(json: val, owner: self)
			}
			if let val = js["deceasedBoolean"] as? Bool {
				self.deceasedBoolean = val
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
 *  None.
 */
public class GeneticPedigreeFamilyHistoryRelationCondition: FHIRElement
{
	override public class var resourceName: String {
		get { return "GeneticPedigreeFamilyHistoryRelationCondition" }
	}
	
	/// None
	public var note: String?
	
	/// None
	public var onsetAge: Age?
	
	/// None
	public var onsetRange: Range?
	
	/// None
	public var onsetString: String?
	
	/// None
	public var outcome: CodeableConcept?
	
	/// None
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

