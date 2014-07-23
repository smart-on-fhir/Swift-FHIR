//
//  AdverseReaction.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-23.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Specific reactions to a substance.
 *
 *  Scope and Usage Adverse Reaction resources are used to provide information about specific reactions to a
 *  substance. These are normally associated with an AllergyIntolerance resource, but can be reported on their own
 *  when no assumption of further reactions is being made, or when specific events are being described.
 */
public class AdverseReaction: FHIRResource
{
	override public class var resourceName: String {
		get { return "AdverseReaction" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** External Ids for this adverse reaction */
	public var identifier: [Identifier]?
	
	/** When the reaction occurred */
	public var date: NSDate?
	
	/** Who had the reaction */
	public var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/** Indicates lack of reaction */
	public var didNotOccurFlag: Bool?
	
	/** Who recorded the reaction */
	public var recorder: FHIRElement? {
		get { return resolveReference("recorder") }
		set {
			if newValue {
				didSetReference(newValue!, name: "recorder")
			}
		}
	}
	
	/** What was reaction? */
	public var symptom: [AdverseReactionSymptom]?
	
	/** Suspected substance */
	public var exposure: [AdverseReactionExposure]?
	
	public convenience init(subject: ResourceReference?, didNotOccurFlag: Bool?) {
		self.init(json: nil)
		if subject {
			self.subject = subject
		}
		if didNotOccurFlag {
			self.didNotOccurFlag = didNotOccurFlag
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["didNotOccurFlag"] as? Int {
				self.didNotOccurFlag = (1 == val)
			}
			if let val = js["recorder"] as? NSDictionary {
				self.recorder = ResourceReference(json: val)
			}
			if let val = js["symptom"] as? [NSDictionary] {
				self.symptom = AdverseReactionSymptom.from(val) as? [AdverseReactionSymptom]
			}
			if let val = js["exposure"] as? [NSDictionary] {
				self.exposure = AdverseReactionExposure.from(val) as? [AdverseReactionExposure]
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
	/** E.g. Rash, vomiting */
	public var code: CodeableConcept?
	
	/** severe | serious | moderate | minor */
	public var severity: String?
	
	public convenience init(code: CodeableConcept?) {
		self.init(json: nil)
		if code {
			self.code = code
		}
	}	
	
	public init(json: NSDictionary?) {
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
	/** When the exposure occurred */
	public var date: NSDate?
	
	/** drugadmin | immuniz | coincidental */
	public var type: String?
	
	/** likely | unlikely | confirmed | unknown */
	public var causalityExpectation: String?
	
	/** Presumed causative substance */
	public var substance: FHIRElement? {
		get { return resolveReference("substance") }
		set {
			if newValue {
				didSetReference(newValue!, name: "substance")
			}
		}
	}
	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["causalityExpectation"] as? String {
				self.causalityExpectation = val
			}
			if let val = js["substance"] as? NSDictionary {
				self.substance = ResourceReference(json: val)
			}
		}
	}
}

