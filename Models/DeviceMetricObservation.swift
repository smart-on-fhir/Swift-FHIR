//
//  DeviceMetricObservation.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (observation-device-metric-devicemetricobservation.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  None.
 */
public class DeviceMetricObservation: Observation
{
	override public class var resourceName: String {
		get { return "DeviceMetricObservation" }
	}
	
	/// None
	public var appliesDateTime: NSDate?
	
	/// None
	public var bodySite: CodeableConcept?
	
	/// None
	public var comments: String?
	
	/// None
	public var dataAbsentReason: String?
	
	/// None
	public var encounter: Reference?
	
	/// None
	public var identifier: Identifier?
	
	/// None
	public var interpretation: CodeableConcept?
	
	/// None
	public var issued: NSDate?
	
	/// None
	public var method: CodeableConcept?
	
	/// None
	public var name: CodeableConcept?
	
	/// None
	public var performer: Reference?
	
	/// None
	public var referenceRange: DeviceMetricObservationReferenceRange?
	
	/// None
	public var related: DeviceMetricObservationRelated?
	
	/// None
	public var reliability: String?
	
	/// None
	public var specimen: Reference?
	
	/// None
	public var status: String?
	
	/// None
	public var subject: Reference?
	
	/// None
	public var valueAttachment: [Attachment]?
	
	/// None
	public var valueCodeableConcept: [CodeableConcept]?
	
	/// None
	public var valueDateTime: [NSDate]?
	
	/// None
	public var valuePeriod: [Period]?
	
	/// None
	public var valueQuantity: [Quantity]?
	
	/// None
	public var valueRatio: [Ratio]?
	
	/// None
	public var valueSampledData: [SampledData]?
	
	/// None
	public var valueString: [String]?
	
	/// None
	public var valueTime: [NSDate]?
	
	public convenience init(appliesDateTime: NSDate?, name: CodeableConcept?, performer: Reference?, reliability: String?, status: String?, subject: Reference?) {
		self.init(json: nil)
		if nil != appliesDateTime {
			self.appliesDateTime = appliesDateTime
		}
		if nil != name {
			self.name = name
		}
		if nil != performer {
			self.performer = performer
		}
		if nil != reliability {
			self.reliability = reliability
		}
		if nil != status {
			self.status = status
		}
		if nil != subject {
			self.subject = subject
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["appliesDateTime"] as? String {
				self.appliesDateTime = NSDate(json: val)
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
			if let val = js["performer"] as? NSDictionary {
				self.performer = Reference(json: val, owner: self)
			}
			if let val = js["referenceRange"] as? NSDictionary {
				self.referenceRange = DeviceMetricObservationReferenceRange(json: val, owner: self)
			}
			if let val = js["related"] as? NSDictionary {
				self.related = DeviceMetricObservationRelated(json: val, owner: self)
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
			if let val = js["valueAttachment"] as? [NSDictionary] {
				self.valueAttachment = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["valueCodeableConcept"] as? [NSDictionary] {
				self.valueCodeableConcept = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["valueDateTime"] as? [String] {
				self.valueDateTime = NSDate.from(val)
			}
			if let val = js["valuePeriod"] as? [NSDictionary] {
				self.valuePeriod = Period.from(val, owner: self) as? [Period]
			}
			if let val = js["valueQuantity"] as? [NSDictionary] {
				self.valueQuantity = Quantity.from(val, owner: self) as? [Quantity]
			}
			if let val = js["valueRatio"] as? [NSDictionary] {
				self.valueRatio = Ratio.from(val, owner: self) as? [Ratio]
			}
			if let val = js["valueSampledData"] as? [NSDictionary] {
				self.valueSampledData = SampledData.from(val, owner: self) as? [SampledData]
			}
			if let val = js["valueString"] as? [String] {
				self.valueString = val
			}
			if let val = js["valueTime"] as? [String] {
				self.valueTime = NSDate.from(val)
			}
		}
	}
}


/**
 *  None.
 */
public class DeviceMetricObservationRelated: FHIRElement
{
	override public class var resourceName: String {
		get { return "DeviceMetricObservationRelated" }
	}
	
	/// None
	public var code: String?
	
	/// None
	public var target: Reference?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["target"] as? NSDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
}

