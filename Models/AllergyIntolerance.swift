//
//  AllergyIntolerance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Drug, food, environmental and others.
 *
 *  Scope and Usage Allergy/Intolerance resources are used to provide information about adverse sensitivities to
 *  substances that lead to physiologic changes that are clinically observable. An adverse sensitivity is defined
 *  as:
 *  
 *  A condition expected to result in undesirable physiologic reaction to an amount of a substance that would not
 *  produce a reaction in most individuals. The substance is the trigger of an immunologic response that produces
 *  the observed physiologic changes, or in some instances nonimmunologic mechanisms that produce clinically
 *  identical physiologic changes. The immunologic response might be considered the actual cause of the reaction,
 *  but it is exposure to the trigger substance that is clinically observable.
 *  
 *  This definition excludes clinically identical episodes that may be caused by physical agents, such as heat,
 *  cold, sunlight, or vibration, by exercise activity, or by infectious agents. Those conditions caused by
 *  physical agents or infectious would be captured on the problem list (List/Condition Resources). The
 *  allergy/intolerance list is a list of conditions that represent a propensity unique to this individual for a
 *  reaction upon future exposure to a specified substance.
 *  
 *  Note that this specification draws a distinction between the patients condition/problem list and an
 *  allergy/intolerance list, even though allergies and intolerances are also conditions. This is because the
 *  distinction is a long established clinical workflow, even to patients. Asking an individual "if they have any
 *  problems" is not going to invoke an account of their past reactions to medications or foods. Instead, they are
 *  asked if they "have any allergies". An allergy/intolerance is also different in that a potential harm from
 *  exposure to an external substance that may be ordered by a provider in the course of their care but is not
 *  inherent to exposure to that substance for the general population.
 */
public class AllergyIntolerance: FHIRResource
{
	override public class var resourceName: String {
		get { return "AllergyIntolerance" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** External Ids for this item */
	public var identifier: [Identifier]?
	
	/** fatal | high | medium | low */
	public var criticality: String?
	
	/** allergy | intolerance | unknown */
	public var sensitivityType: String?
	
	/** When recorded */
	public var recordedDate: NSDate?
	
	/** suspected | confirmed | refuted | resolved */
	public var status: String?
	
	/** Who the sensitivity is for */
	public var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/** Who recorded the sensitivity */
	public var recorder: FHIRElement? {
		get { return resolveReference("recorder") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "recorder")
			}
		}
	}
	
	/** The substance that causes the sensitivity */
	public var substance: FHIRElement? {
		get { return resolveReference("substance") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "substance")
			}
		}
	}
	
	/** Reactions associated with the sensitivity */
	public var reaction: [FHIRElement]? {
		get { return resolveReferences("reaction") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "reaction")
			}
		}
	}
	
	/** Observations that confirm or refute */
	public var sensitivityTest: [FHIRElement]? {
		get { return resolveReferences("sensitivityTest") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "sensitivityTest")
			}
		}
	}
	
	public convenience init(sensitivityType: String?, status: String?, subject: ResourceReference?, substance: ResourceReference?) {
		self.init(json: nil)
		if nil != sensitivityType {
			self.sensitivityType = sensitivityType
		}
		if nil != status {
			self.status = status
		}
		if nil != subject {
			self.subject = subject
		}
		if nil != substance {
			self.substance = substance
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["criticality"] as? String {
				self.criticality = val
			}
			if let val = js["sensitivityType"] as? String {
				self.sensitivityType = val
			}
			if let val = js["recordedDate"] as? String {
				self.recordedDate = NSDate(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["recorder"] as? NSDictionary {
				self.recorder = ResourceReference(json: val)
			}
			if let val = js["substance"] as? NSDictionary {
				self.substance = ResourceReference(json: val)
			}
			if let val = js["reaction"] as? [NSDictionary] {
				self.reaction = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["sensitivityTest"] as? [NSDictionary] {
				self.sensitivityTest = ResourceReference.from(val) as? [ResourceReference]
			}
		}
	}
}

