//
//  AdverseReaction.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (adversereaction.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Specific reactions to a substance.
 *
 *  Scope and Usage Adverse Reaction resources are used to provide information about specific reactions to a substance.
 *  These are normally associated with an AllergyIntolerance resource, but can be reported on their own when no
 *  assumption of further reactions is being made, or when specific events are being described.
 */
public class AdverseReaction: FHIRResource
{
	override public class var resourceName: String {
		get { return "AdverseReaction" }
	}
	
	/// When the reaction occurred
	public var date: NSDate?
	
	/// Indicates lack of reaction
	public var didNotOccurFlag: Bool?
	
	/// Suspected substance
	public var exposure: [AdverseReactionExposure]?
	
	/// External Ids for this adverse reaction
	public var identifier: [Identifier]?
	
	/// Who recorded the reaction
	public var recorder: FHIRReference<Practitioner>?
	
	/// Who had the reaction
	public var subject: FHIRReference<Patient>?
	
	/// What was reaction?
	public var symptom: [AdverseReactionSymptom]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	public convenience init(didNotOccurFlag: Bool?, subject: FHIRReference<Patient>?) {
		self.init(json: nil)
		if nil != didNotOccurFlag {
			self.didNotOccurFlag = didNotOccurFlag
		}
		if nil != subject {
			self.subject = subject
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["didNotOccurFlag"] as? Int {
				self.didNotOccurFlag = (1 == val)
			}
			if let val = js["exposure"] as? [NSDictionary] {
				self.exposure = AdverseReactionExposure.from(val) as? [AdverseReactionExposure]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["recorder"] as? NSDictionary {
				self.recorder = FHIRReference(json: val, owner: self)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["symptom"] as? [NSDictionary] {
				self.symptom = AdverseReactionSymptom.from(val) as? [AdverseReactionSymptom]
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
		}
	}
}


/**
 *  What was reaction?.
 *
 *  The signs and symptoms that were observed as part of the reaction.
 */
public class AdverseReactionSymptom: FHIRElement
{	
	/// E.g. Rash, vomiting
	public var code: CodeableConcept?
	
	/// severe | serious | moderate | minor
	public var severity: String?
	
	public convenience init(code: CodeableConcept?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["severity"] as? String {
				self.severity = val
			}
		}
	}
}


/**
 *  Suspected substance.
 *
 *  An exposure to a substance that preceded a reaction occurrence.
 */
public class AdverseReactionExposure: FHIRElement
{	
	/// likely | unlikely | confirmed | unknown
	public var causalityExpectation: String?
	
	/// When the exposure occurred
	public var date: NSDate?
	
	/// Presumed causative substance
	public var substance: FHIRReference<Substance>?
	
	/// drugadmin | immuniz | coincidental
	public var type: String?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["causalityExpectation"] as? String {
				self.causalityExpectation = val
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["substance"] as? NSDictionary {
				self.substance = FHIRReference(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
}

