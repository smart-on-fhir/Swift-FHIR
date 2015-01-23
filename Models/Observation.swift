//
//  Observation.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3969 (observation.profile.json) on 2015-01-23.
//  2015, SMART Platforms.
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
	public var appliesDateTime: DateTime?
	
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
	public var issued: Instant?
	
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
	public var valueDateTime: DateTime?
	
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
	public var valueTime: Time?
	
	public convenience init(name: CodeableConcept?, status: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["appliesDateTime"] as? String {
				self.appliesDateTime = DateTime(string: val)
			}
			if let val = js["appliesPeriod"] as? JSONDictionary {
				self.appliesPeriod = Period(json: val, owner: self)
			}
			if let val = js["bodySite"] as? JSONDictionary {
				self.bodySite = CodeableConcept(json: val, owner: self)
			}
			if let val = js["comments"] as? String {
				self.comments = val
			}
			if let val = js["dataAbsentReason"] as? String {
				self.dataAbsentReason = val
			}
			if let val = js["encounter"] as? JSONDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["interpretation"] as? JSONDictionary {
				self.interpretation = CodeableConcept(json: val, owner: self)
			}
			if let val = js["issued"] as? String {
				self.issued = Instant(string: val)
			}
			if let val = js["method"] as? JSONDictionary {
				self.method = CodeableConcept(json: val, owner: self)
			}
			if let val = js["name"] as? JSONDictionary {
				self.name = CodeableConcept(json: val, owner: self)
			}
			if let val = js["performer"] as? [JSONDictionary] {
				self.performer = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["referenceRange"] as? [JSONDictionary] {
				self.referenceRange = ObservationReferenceRange.from(val, owner: self) as? [ObservationReferenceRange]
			}
			if let val = js["related"] as? [JSONDictionary] {
				self.related = ObservationRelated.from(val, owner: self) as? [ObservationRelated]
			}
			if let val = js["reliability"] as? String {
				self.reliability = val
			}
			if let val = js["specimen"] as? JSONDictionary {
				self.specimen = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["valueAttachment"] as? JSONDictionary {
				self.valueAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["valueCodeableConcept"] as? JSONDictionary {
				self.valueCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["valueDateTime"] as? String {
				self.valueDateTime = DateTime(string: val)
			}
			if let val = js["valuePeriod"] as? JSONDictionary {
				self.valuePeriod = Period(json: val, owner: self)
			}
			if let val = js["valueQuantity"] as? JSONDictionary {
				self.valueQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["valueRatio"] as? JSONDictionary {
				self.valueRatio = Ratio(json: val, owner: self)
			}
			if let val = js["valueSampledData"] as? JSONDictionary {
				self.valueSampledData = SampledData(json: val, owner: self)
			}
			if let val = js["valueString"] as? String {
				self.valueString = val
			}
			if let val = js["valueTime"] as? String {
				self.valueTime = Time(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let appliesDateTime = self.appliesDateTime {
			json["appliesDateTime"] = appliesDateTime.asJSON()
		}
		if let appliesPeriod = self.appliesPeriod {
			json["appliesPeriod"] = appliesPeriod.asJSON()
		}
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.asJSON()
		}
		if let comments = self.comments {
			json["comments"] = comments.asJSON()
		}
		if let dataAbsentReason = self.dataAbsentReason {
			json["dataAbsentReason"] = dataAbsentReason.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let interpretation = self.interpretation {
			json["interpretation"] = interpretation.asJSON()
		}
		if let issued = self.issued {
			json["issued"] = issued.asJSON()
		}
		if let method = self.method {
			json["method"] = method.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = Reference.asJSONArray(performer)
		}
		if let referenceRange = self.referenceRange {
			json["referenceRange"] = ObservationReferenceRange.asJSONArray(referenceRange)
		}
		if let related = self.related {
			json["related"] = ObservationRelated.asJSONArray(related)
		}
		if let reliability = self.reliability {
			json["reliability"] = reliability.asJSON()
		}
		if let specimen = self.specimen {
			json["specimen"] = specimen.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let valueAttachment = self.valueAttachment {
			json["valueAttachment"] = valueAttachment.asJSON()
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON()
		}
		if let valueRatio = self.valueRatio {
			json["valueRatio"] = valueRatio.asJSON()
		}
		if let valueSampledData = self.valueSampledData {
			json["valueSampledData"] = valueSampledData.asJSON()
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["age"] as? JSONDictionary {
				self.age = Range(json: val, owner: self)
			}
			if let val = js["high"] as? JSONDictionary {
				self.high = Quantity(json: val, owner: self)
			}
			if let val = js["low"] as? JSONDictionary {
				self.low = Quantity(json: val, owner: self)
			}
			if let val = js["meaning"] as? JSONDictionary {
				self.meaning = CodeableConcept(json: val, owner: self)
			}
			if let val = js["text"] as? String {
				self.text = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let age = self.age {
			json["age"] = age.asJSON()
		}
		if let high = self.high {
			json["high"] = high.asJSON()
		}
		if let low = self.low {
			json["low"] = low.asJSON()
		}
		if let meaning = self.meaning {
			json["meaning"] = meaning.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["target"] as? JSONDictionary {
				self.target = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

