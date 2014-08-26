//
//  Observation.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 (observation.profile.json) on 2014-08-26.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Measurements and simple assertions.
 *
 *  Scope and Usage Observations are a central element in healthcare, used to support diagnosis, monitor progress,
 *  determine baselines and patterns and even capture demographic characteristics. Most observations are simple
 *  name/value pair assertions with some metadata, but some observations group other observations together
 *  logically, or even are multi-component observations. Note that the resources DiagnosticReport and
 *  DeviceObservationReport provide a clinical or workflow context for a set of observations. Expected uses for
 *  the Observation resource include:
 *  
 *  * Vital signs: temperature, blood pressure, respiration rate
 *  * Laboratory Data and other Diagnostic Measures
 *  * Measurements emitted by Devices
 *  * Clinical assessments such as APGAR
 *  * Personal characteristics: height, weight, eye-color
 *  * Diagnoses (Note: trackable conditions, allergies, adverse reactions and more complex structures are handled
 *  elsewhere)
 *  * Social history: tobacco use, family supports, cognitive status
 *  * Core characteristics: pregnancy status, death assertion
 */
public class Observation: FHIRResource
{
	override public class var resourceName: String {
		get { return "Observation" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** Type of observation (code / type) */
	public var name: CodeableConcept?
	
	/** Actual result */
	public var valueQuantity: Quantity?
	
	/** Actual result */
	public var valueCodeableConcept: CodeableConcept?
	
	/** Actual result */
	public var valueAttachment: Attachment?
	
	/** Actual result */
	public var valueRatio: Ratio?
	
	/** Actual result */
	public var valuePeriod: Period?
	
	/** Actual result */
	public var valueSampledData: SampledData?
	
	/** Actual result */
	public var valueString: String?
	
	/** High, low, normal, etc. */
	public var interpretation: CodeableConcept?
	
	/** Comments about result */
	public var comments: String?
	
	/** Physiologically Relevant time/time-period for observation */
	public var appliesDateTime: NSDate?
	
	/** Physiologically Relevant time/time-period for observation */
	public var appliesPeriod: Period?
	
	/** Date/Time this was made available */
	public var issued: Int?
	
	/** registered | preliminary | final | amended + */
	public var status: String?
	
	/** ok | ongoing | early | questionable | calibrating | error + */
	public var reliability: String?
	
	/** Observed body part */
	public var bodySite: CodeableConcept?
	
	/** How it was done */
	public var method: CodeableConcept?
	
	/** Unique Id for this particular observation */
	public var identifier: Identifier?
	
	/** Who and/or what this is about */
	public var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/** Specimen used for this observation */
	public var specimen: FHIRElement? {
		get { return resolveReference("specimen") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "specimen")
			}
		}
	}
	
	/** Who did the observation */
	public var performer: [FHIRElement]? {
		get { return resolveReferences("performer") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "performer")
			}
		}
	}
	
	/** Provides guide for interpretation */
	public var referenceRange: [ObservationReferenceRange]?
	
	/** Observations related to this observation */
	public var related: [ObservationRelated]?
	
	public convenience init(name: CodeableConcept?, status: String?, reliability: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != status {
			self.status = status
		}
		if nil != reliability {
			self.reliability = reliability
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["name"] as? NSDictionary {
				self.name = CodeableConcept(json: val)
			}
			if let val = js["valueQuantity"] as? NSDictionary {
				self.valueQuantity = Quantity(json: val)
			}
			if let val = js["valueCodeableConcept"] as? NSDictionary {
				self.valueCodeableConcept = CodeableConcept(json: val)
			}
			if let val = js["valueAttachment"] as? NSDictionary {
				self.valueAttachment = Attachment(json: val)
			}
			if let val = js["valueRatio"] as? NSDictionary {
				self.valueRatio = Ratio(json: val)
			}
			if let val = js["valuePeriod"] as? NSDictionary {
				self.valuePeriod = Period(json: val)
			}
			if let val = js["valueSampledData"] as? NSDictionary {
				self.valueSampledData = SampledData(json: val)
			}
			if let val = js["valueString"] as? String {
				self.valueString = val
			}
			if let val = js["interpretation"] as? NSDictionary {
				self.interpretation = CodeableConcept(json: val)
			}
			if let val = js["comments"] as? String {
				self.comments = val
			}
			if let val = js["appliesDateTime"] as? String {
				self.appliesDateTime = NSDate(json: val)
			}
			if let val = js["appliesPeriod"] as? NSDictionary {
				self.appliesPeriod = Period(json: val)
			}
			if let val = js["issued"] as? Int {
				self.issued = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["reliability"] as? String {
				self.reliability = val
			}
			if let val = js["bodySite"] as? NSDictionary {
				self.bodySite = CodeableConcept(json: val)
			}
			if let val = js["method"] as? NSDictionary {
				self.method = CodeableConcept(json: val)
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["specimen"] as? NSDictionary {
				self.specimen = ResourceReference(json: val)
			}
			if let val = js["performer"] as? [NSDictionary] {
				self.performer = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["referenceRange"] as? [NSDictionary] {
				self.referenceRange = ObservationReferenceRange.from(val) as? [ObservationReferenceRange]
			}
			if let val = js["related"] as? [NSDictionary] {
				self.related = ObservationRelated.from(val) as? [ObservationRelated]
			}
		}
	}
}


/**
 *  Provides guide for interpretation.
 *
 *  Guidance on how to interpret the value by comparison to a normal or recommended range.
 */
public class ObservationReferenceRange: FHIRElement
{	
	/** Low Range, if relevant */
	public var low: Quantity?
	
	/** High Range, if relevant */
	public var high: Quantity?
	
	/** Indicates the meaning/use of this range of this range */
	public var meaning: CodeableConcept?
	
	/** Applicable age range, if relevant */
	public var age: Range?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["low"] as? NSDictionary {
				self.low = Quantity(json: val)
			}
			if let val = js["high"] as? NSDictionary {
				self.high = Quantity(json: val)
			}
			if let val = js["meaning"] as? NSDictionary {
				self.meaning = CodeableConcept(json: val)
			}
			if let val = js["age"] as? NSDictionary {
				self.age = Range(json: val)
			}
		}
	}
}


/**
 *  Observations related to this observation.
 *
 *  Related observations - either components, or previous observations, or statements of derivation.
 */
public class ObservationRelated: FHIRElement
{	
	/** has-component | has-member | derived-from | sequel-to | replaces | qualified-by | interfered-by */
	public var type: String?
	
	/** Observation that is related to this one */
	public var target: FHIRElement? {
		get { return resolveReference("target") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "target")
			}
		}
	}
	
	public convenience init(target: ResourceReference?) {
		self.init(json: nil)
		if nil != target {
			self.target = target
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["target"] as? NSDictionary {
				self.target = ResourceReference(json: val)
			}
		}
	}
}

