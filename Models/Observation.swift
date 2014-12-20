//
//  Observation.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (observation.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Measurements and simple assertions.
 *
 *  Measurements and simple assertions made about a patient, device or other subject.
 */
public class Observation: FHIRResource
{
	override public class var resourceName: String {
		get { return "Observation" }
	}
	
	/// Physiologically Relevant time/time-period for observation
	public var appliesDateTime: NSDate?
	
	/// Physiologically Relevant time/time-period for observation
	public var appliesPeriod: Period?
	
	/// Observed body part
	public var bodySite: CodeableConcept?
	
	/// Comments about result
	public var comments: String?
	
	/// unknown | asked | temp | notasked +
	public var dataAbsentReason: String?
	
	/// Healthcare event related to the observation
	public var encounter: Reference?
	
	/// Unique Id for this particular observation
	public var identifier: Identifier?
	
	/// High, low, normal, etc.
	public var interpretation: CodeableConcept?
	
	/// Date/Time this was made available
	public var issued: NSDate?
	
	/// How it was done
	public var method: CodeableConcept?
	
	/// Type of observation (code / type)
	public var name: CodeableConcept?
	
	/// Who did the observation
	public var performer: [Reference]?
	
	/// Provides guide for interpretation
	public var referenceRange: [ObservationReferenceRange]?
	
	/// Observations related to this observation
	public var related: [ObservationRelated]?
	
	/// ok | ongoing | early | questionable | calibrating | error +
	public var reliability: String?
	
	/// Specimen used for this observation
	public var specimen: Reference?
	
	/// registered | preliminary | final | amended +
	public var status: String?
	
	/// Who and/or what this is about
	public var subject: Reference?
	
	/// Actual result
	public var valueAttachment: Attachment?
	
	/// Actual result
	public var valueCodeableConcept: CodeableConcept?
	
	/// Actual result
	public var valueDateTime: NSDate?
	
	/// Actual result
	public var valuePeriod: Period?
	
	/// Actual result
	public var valueQuantity: Quantity?
	
	/// Actual result
	public var valueRatio: Ratio?
	
	/// Actual result
	public var valueSampledData: SampledData?
	
	/// Actual result
	public var valueString: String?
	
	/// Actual result
	public var valueTime: NSDate?
	
	public convenience init(name: CodeableConcept?, status: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != status {
			self.status = status
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["appliesDateTime"] as? String {
				self.appliesDateTime = NSDate(json: val)
			}
			if let val = js["appliesPeriod"] as? NSDictionary {
				self.appliesPeriod = Period(json: val, owner: self)
			}
			if let val = js["bodySite"] as? NSDictionary {
				self.bodySite = CodeableConcept(json: val, owner: self)
			}
			if let val = js["comments"] as? String {
				self.comments = val
			}
			if let val = js["dataAbsentReason"] as? String {
				self.dataAbsentReason = val
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["interpretation"] as? NSDictionary {
				self.interpretation = CodeableConcept(json: val, owner: self)
			}
			if let val = js["issued"] as? String {
				self.issued = NSDate(json: val)
			}
			if let val = js["method"] as? NSDictionary {
				self.method = CodeableConcept(json: val, owner: self)
			}
			if let val = js["name"] as? NSDictionary {
				self.name = CodeableConcept(json: val, owner: self)
			}
			if let val = js["performer"] as? [NSDictionary] {
				self.performer = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["referenceRange"] as? [NSDictionary] {
				self.referenceRange = ObservationReferenceRange.from(val, owner: self) as? [ObservationReferenceRange]
			}
			if let val = js["related"] as? [NSDictionary] {
				self.related = ObservationRelated.from(val, owner: self) as? [ObservationRelated]
			}
			if let val = js["reliability"] as? String {
				self.reliability = val
			}
			if let val = js["specimen"] as? NSDictionary {
				self.specimen = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["valueAttachment"] as? NSDictionary {
				self.valueAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["valueCodeableConcept"] as? NSDictionary {
				self.valueCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["valueDateTime"] as? String {
				self.valueDateTime = NSDate(json: val)
			}
			if let val = js["valuePeriod"] as? NSDictionary {
				self.valuePeriod = Period(json: val, owner: self)
			}
			if let val = js["valueQuantity"] as? NSDictionary {
				self.valueQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["valueRatio"] as? NSDictionary {
				self.valueRatio = Ratio(json: val, owner: self)
			}
			if let val = js["valueSampledData"] as? NSDictionary {
				self.valueSampledData = SampledData(json: val, owner: self)
			}
			if let val = js["valueString"] as? String {
				self.valueString = val
			}
			if let val = js["valueTime"] as? String {
				self.valueTime = NSDate(json: val)
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
	override public class var resourceName: String {
		get { return "ObservationReferenceRange" }
	}
	
	/// Applicable age range, if relevant
	public var age: Range?
	
	/// High Range, if relevant
	public var high: Quantity?
	
	/// Low Range, if relevant
	public var low: Quantity?
	
	/// Indicates the meaning/use of this range of this range
	public var meaning: CodeableConcept?
	
	/// Text based reference range in an observation
	public var text: String?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["age"] as? NSDictionary {
				self.age = Range(json: val, owner: self)
			}
			if let val = js["high"] as? NSDictionary {
				self.high = Quantity(json: val, owner: self)
			}
			if let val = js["low"] as? NSDictionary {
				self.low = Quantity(json: val, owner: self)
			}
			if let val = js["meaning"] as? NSDictionary {
				self.meaning = CodeableConcept(json: val, owner: self)
			}
			if let val = js["text"] as? String {
				self.text = val
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
	override public class var resourceName: String {
		get { return "ObservationRelated" }
	}
	
	/// Observation that is related to this one
	public var target: Reference?
	
	/// has-component | has-member | derived-from | sequel-to | replaces | qualified-by | interfered-by
	public var type: String?
	
	public convenience init(target: Reference?) {
		self.init(json: nil)
		if nil != target {
			self.target = target
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["target"] as? NSDictionary {
				self.target = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
}

