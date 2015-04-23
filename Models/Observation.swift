//
//  Observation.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Observation) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Measurements and simple assertions.
 *
 *  Measurements and simple assertions made about a patient, device or other subject.
 */
public class Observation: DomainResource
{
	override public class var resourceName: String {
		get { return "Observation" }
	}
	
	/// Physiologically Relevant time/time-period for observation
	public var appliesDateTime: DateTime?
	
	/// Physiologically Relevant time/time-period for observation
	public var appliesPeriod: Period?
	
	/// Observed body part
	public var bodySiteCodeableConcept: CodeableConcept?
	
	/// Observed body part
	public var bodySiteReference: Reference?
	
	/// Type of observation (code / type)
	public var code: CodeableConcept?
	
	/// Comments about result
	public var comments: String?
	
	/// Why the result is missing
	public var dataAbsentReason: CodeableConcept?
	
	/// (Measurement) Device
	public var device: Reference?
	
	/// Healthcare event during which this observation is made
	public var encounter: Reference?
	
	/// Unique Id for this particular observation
	public var identifier: [Identifier]?
	
	/// High, low, normal, etc.
	public var interpretation: CodeableConcept?
	
	/// Date/Time this was made available
	public var issued: Instant?
	
	/// How it was done
	public var method: CodeableConcept?
	
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
	public var valueRange: Range?
	
	/// Actual result
	public var valueRatio: Ratio?
	
	/// Actual result
	public var valueSampledData: SampledData?
	
	/// Actual result
	public var valueString: String?
	
	/// Actual result
	public var valueTime: Time?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: CodeableConcept?, status: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["appliesDateTime"] {
				presentKeys.addObject("appliesDateTime")
				if let val = exist as? String {
					self.appliesDateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"appliesDateTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["appliesPeriod"] {
				presentKeys.addObject("appliesPeriod")
				if let val = exist as? FHIRJSON {
					self.appliesPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"appliesPeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["bodySiteCodeableConcept"] {
				presentKeys.addObject("bodySiteCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.bodySiteCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bodySiteCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["bodySiteReference"] {
				presentKeys.addObject("bodySiteReference")
				if let val = exist as? FHIRJSON {
					self.bodySiteReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bodySiteReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["comments"] {
				presentKeys.addObject("comments")
				if let val = exist as? String {
					self.comments = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"comments\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["dataAbsentReason"] {
				presentKeys.addObject("dataAbsentReason")
				if let val = exist as? FHIRJSON {
					self.dataAbsentReason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"dataAbsentReason\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["device"] {
				presentKeys.addObject("device")
				if let val = exist as? FHIRJSON {
					self.device = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"device\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.addObject("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"encounter\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["interpretation"] {
				presentKeys.addObject("interpretation")
				if let val = exist as? FHIRJSON {
					self.interpretation = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"interpretation\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["issued"] {
				presentKeys.addObject("issued")
				if let val = exist as? String {
					self.issued = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"issued\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["method"] {
				presentKeys.addObject("method")
				if let val = exist as? FHIRJSON {
					self.method = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"method\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["performer"] {
				presentKeys.addObject("performer")
				if let val = exist as? [FHIRJSON] {
					self.performer = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"performer\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["referenceRange"] {
				presentKeys.addObject("referenceRange")
				if let val = exist as? [FHIRJSON] {
					self.referenceRange = ObservationReferenceRange.from(val, owner: self) as? [ObservationReferenceRange]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"referenceRange\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["related"] {
				presentKeys.addObject("related")
				if let val = exist as? [FHIRJSON] {
					self.related = ObservationRelated.from(val, owner: self) as? [ObservationRelated]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"related\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["reliability"] {
				presentKeys.addObject("reliability")
				if let val = exist as? String {
					self.reliability = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reliability\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["specimen"] {
				presentKeys.addObject("specimen")
				if let val = exist as? FHIRJSON {
					self.specimen = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"specimen\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.addObject("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subject\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueAttachment"] {
				presentKeys.addObject("valueAttachment")
				if let val = exist as? FHIRJSON {
					self.valueAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueAttachment\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueCodeableConcept"] {
				presentKeys.addObject("valueCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.valueCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueDateTime"] {
				presentKeys.addObject("valueDateTime")
				if let val = exist as? String {
					self.valueDateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueDateTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valuePeriod"] {
				presentKeys.addObject("valuePeriod")
				if let val = exist as? FHIRJSON {
					self.valuePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valuePeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueQuantity"] {
				presentKeys.addObject("valueQuantity")
				if let val = exist as? FHIRJSON {
					self.valueQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueQuantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueRange"] {
				presentKeys.addObject("valueRange")
				if let val = exist as? FHIRJSON {
					self.valueRange = Range(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueRange\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueRatio"] {
				presentKeys.addObject("valueRatio")
				if let val = exist as? FHIRJSON {
					self.valueRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueRatio\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueSampledData"] {
				presentKeys.addObject("valueSampledData")
				if let val = exist as? FHIRJSON {
					self.valueSampledData = SampledData(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueSampledData\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueString"] {
				presentKeys.addObject("valueString")
				if let val = exist as? String {
					self.valueString = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueString\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueTime"] {
				presentKeys.addObject("valueTime")
				if let val = exist as? String {
					self.valueTime = Time(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let appliesDateTime = self.appliesDateTime {
			json["appliesDateTime"] = appliesDateTime.asJSON()
		}
		if let appliesPeriod = self.appliesPeriod {
			json["appliesPeriod"] = appliesPeriod.asJSON()
		}
		if let bodySiteCodeableConcept = self.bodySiteCodeableConcept {
			json["bodySiteCodeableConcept"] = bodySiteCodeableConcept.asJSON()
		}
		if let bodySiteReference = self.bodySiteReference {
			json["bodySiteReference"] = bodySiteReference.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let comments = self.comments {
			json["comments"] = comments.asJSON()
		}
		if let dataAbsentReason = self.dataAbsentReason {
			json["dataAbsentReason"] = dataAbsentReason.asJSON()
		}
		if let device = self.device {
			json["device"] = device.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
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
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON()
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["age"] {
				presentKeys.addObject("age")
				if let val = exist as? FHIRJSON {
					self.age = Range(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"age\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["high"] {
				presentKeys.addObject("high")
				if let val = exist as? FHIRJSON {
					self.high = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"high\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["low"] {
				presentKeys.addObject("low")
				if let val = exist as? FHIRJSON {
					self.low = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"low\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["meaning"] {
				presentKeys.addObject("meaning")
				if let val = exist as? FHIRJSON {
					self.meaning = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"meaning\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.addObject("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"text\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(target: Reference?) {
		self.init(json: nil)
		if nil != target {
			self.target = target
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["target"] {
				presentKeys.addObject("target")
				if let val = exist as? FHIRJSON {
					self.target = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"target\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"target\" but it is missing"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

