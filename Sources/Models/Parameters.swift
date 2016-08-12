//
//  Parameters.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Parameters) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Operation Request or Response.
 *
 *  This special resource type is used to represent an operation request and response (operations.html). It has no other
 *  use, and there is no RESTful endpoint associated with it.
 */
public class Parameters: Resource {
	override public class var resourceName: String {
		get { return "Parameters" }
	}
	
	/// Operation Parameter.
	public var parameter: [ParametersParameter]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["parameter"] {
				presentKeys.insert("parameter")
				if let val = exist as? [FHIRJSON] {
					self.parameter = ParametersParameter.from(val, owner: self) as? [ParametersParameter]
				}
				else {
					errors.append(FHIRJSONError(key: "parameter", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let parameter = self.parameter {
			json["parameter"] = ParametersParameter.asJSONArray(parameter)
		}
		
		return json
	}
}


/**
 *  Operation Parameter.
 *
 *  A parameter passed to or received from the operation.
 */
public class ParametersParameter: BackboneElement {
	override public class var resourceName: String {
		get { return "ParametersParameter" }
	}
	
	/// Name from the definition.
	public var name: String?
	
	/// Named part of a multi-part parameter.
	public var part: [ParametersParameter]?
	
	/// If parameter is a whole resource.
	public var resource: Resource?
	
	/// If parameter is a data type.
	public var valueAddress: Address?
	
	/// If parameter is a data type.
	public var valueAge: Age?
	
	/// If parameter is a data type.
	public var valueAnnotation: Annotation?
	
	/// If parameter is a data type.
	public var valueAttachment: Attachment?
	
	/// If parameter is a data type.
	public var valueBase64Binary: Base64Binary?
	
	/// If parameter is a data type.
	public var valueBoolean: Bool?
	
	/// If parameter is a data type.
	public var valueCode: String?
	
	/// If parameter is a data type.
	public var valueCodeableConcept: CodeableConcept?
	
	/// If parameter is a data type.
	public var valueCoding: Coding?
	
	/// If parameter is a data type.
	public var valueContactPoint: ContactPoint?
	
	/// If parameter is a data type.
	public var valueCount: Count?
	
	/// If parameter is a data type.
	public var valueDate: Date?
	
	/// If parameter is a data type.
	public var valueDateTime: DateTime?
	
	/// If parameter is a data type.
	public var valueDecimal: NSDecimalNumber?
	
	/// If parameter is a data type.
	public var valueDistance: Distance?
	
	/// If parameter is a data type.
	public var valueDuration: Duration?
	
	/// If parameter is a data type.
	public var valueHumanName: HumanName?
	
	/// If parameter is a data type.
	public var valueId: String?
	
	/// If parameter is a data type.
	public var valueIdentifier: Identifier?
	
	/// If parameter is a data type.
	public var valueInstant: Instant?
	
	/// If parameter is a data type.
	public var valueInteger: Int?
	
	/// If parameter is a data type.
	public var valueMarkdown: String?
	
	/// If parameter is a data type.
	public var valueMeta: Meta?
	
	/// If parameter is a data type.
	public var valueMoney: Money?
	
	/// If parameter is a data type.
	public var valueOid: String?
	
	/// If parameter is a data type.
	public var valuePeriod: Period?
	
	/// If parameter is a data type.
	public var valuePositiveInt: UInt?
	
	/// If parameter is a data type.
	public var valueQuantity: Quantity?
	
	/// If parameter is a data type.
	public var valueRange: Range?
	
	/// If parameter is a data type.
	public var valueRatio: Ratio?
	
	/// If parameter is a data type.
	public var valueReference: Reference?
	
	/// If parameter is a data type.
	public var valueSampledData: SampledData?
	
	/// If parameter is a data type.
	public var valueSignature: Signature?
	
	/// If parameter is a data type.
	public var valueString: String?
	
	/// If parameter is a data type.
	public var valueTime: Time?
	
	/// If parameter is a data type.
	public var valueTiming: Timing?
	
	/// If parameter is a data type.
	public var valueUnsignedInt: UInt?
	
	/// If parameter is a data type.
	public var valueUri: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String) {
		self.init(json: nil)
		self.name = name
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["part"] {
				presentKeys.insert("part")
				if let val = exist as? [FHIRJSON] {
					self.part = ParametersParameter.from(val, owner: self) as? [ParametersParameter]
				}
				else {
					errors.append(FHIRJSONError(key: "part", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? FHIRJSON {
					self.resource = Resource.instantiateFrom(val, owner: self) as? Resource
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueAddress"] {
				presentKeys.insert("valueAddress")
				if let val = exist as? FHIRJSON {
					self.valueAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAddress", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueAge"] {
				presentKeys.insert("valueAge")
				if let val = exist as? FHIRJSON {
					self.valueAge = Age(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAge", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueAnnotation"] {
				presentKeys.insert("valueAnnotation")
				if let val = exist as? FHIRJSON {
					self.valueAnnotation = Annotation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAnnotation", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueAttachment"] {
				presentKeys.insert("valueAttachment")
				if let val = exist as? FHIRJSON {
					self.valueAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAttachment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueBase64Binary"] {
				presentKeys.insert("valueBase64Binary")
				if let val = exist as? String {
					self.valueBase64Binary = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueBase64Binary", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueBoolean"] {
				presentKeys.insert("valueBoolean")
				if let val = exist as? Bool {
					self.valueBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueBoolean", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueCode"] {
				presentKeys.insert("valueCode")
				if let val = exist as? String {
					self.valueCode = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueCode", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueCodeableConcept"] {
				presentKeys.insert("valueCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.valueCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueCoding"] {
				presentKeys.insert("valueCoding")
				if let val = exist as? FHIRJSON {
					self.valueCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueCoding", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueContactPoint"] {
				presentKeys.insert("valueContactPoint")
				if let val = exist as? FHIRJSON {
					self.valueContactPoint = ContactPoint(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueContactPoint", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueCount"] {
				presentKeys.insert("valueCount")
				if let val = exist as? FHIRJSON {
					self.valueCount = Count(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueCount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDate"] {
				presentKeys.insert("valueDate")
				if let val = exist as? String {
					self.valueDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDateTime"] {
				presentKeys.insert("valueDateTime")
				if let val = exist as? String {
					self.valueDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDecimal"] {
				presentKeys.insert("valueDecimal")
				if let val = exist as? NSNumber {
					self.valueDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDecimal", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDistance"] {
				presentKeys.insert("valueDistance")
				if let val = exist as? FHIRJSON {
					self.valueDistance = Distance(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDistance", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDuration"] {
				presentKeys.insert("valueDuration")
				if let val = exist as? FHIRJSON {
					self.valueDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDuration", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueHumanName"] {
				presentKeys.insert("valueHumanName")
				if let val = exist as? FHIRJSON {
					self.valueHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueHumanName", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueId"] {
				presentKeys.insert("valueId")
				if let val = exist as? String {
					self.valueId = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueIdentifier"] {
				presentKeys.insert("valueIdentifier")
				if let val = exist as? FHIRJSON {
					self.valueIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueInstant"] {
				presentKeys.insert("valueInstant")
				if let val = exist as? String {
					self.valueInstant = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueInstant", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueInteger"] {
				presentKeys.insert("valueInteger")
				if let val = exist as? Int {
					self.valueInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueInteger", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueMarkdown"] {
				presentKeys.insert("valueMarkdown")
				if let val = exist as? String {
					self.valueMarkdown = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueMarkdown", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueMeta"] {
				presentKeys.insert("valueMeta")
				if let val = exist as? FHIRJSON {
					self.valueMeta = Meta(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueMeta", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueMoney"] {
				presentKeys.insert("valueMoney")
				if let val = exist as? FHIRJSON {
					self.valueMoney = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueMoney", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueOid"] {
				presentKeys.insert("valueOid")
				if let val = exist as? String {
					self.valueOid = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueOid", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valuePeriod"] {
				presentKeys.insert("valuePeriod")
				if let val = exist as? FHIRJSON {
					self.valuePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valuePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valuePositiveInt"] {
				presentKeys.insert("valuePositiveInt")
				if let val = exist as? UInt {
					self.valuePositiveInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "valuePositiveInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueQuantity"] {
				presentKeys.insert("valueQuantity")
				if let val = exist as? FHIRJSON {
					self.valueQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueRange"] {
				presentKeys.insert("valueRange")
				if let val = exist as? FHIRJSON {
					self.valueRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueRatio"] {
				presentKeys.insert("valueRatio")
				if let val = exist as? FHIRJSON {
					self.valueRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueRatio", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueReference"] {
				presentKeys.insert("valueReference")
				if let val = exist as? FHIRJSON {
					self.valueReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueSampledData"] {
				presentKeys.insert("valueSampledData")
				if let val = exist as? FHIRJSON {
					self.valueSampledData = SampledData(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueSampledData", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueSignature"] {
				presentKeys.insert("valueSignature")
				if let val = exist as? FHIRJSON {
					self.valueSignature = Signature(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueSignature", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueString"] {
				presentKeys.insert("valueString")
				if let val = exist as? String {
					self.valueString = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueString", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueTime"] {
				presentKeys.insert("valueTime")
				if let val = exist as? String {
					self.valueTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueTiming"] {
				presentKeys.insert("valueTiming")
				if let val = exist as? FHIRJSON {
					self.valueTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueTiming", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueUnsignedInt"] {
				presentKeys.insert("valueUnsignedInt")
				if let val = exist as? UInt {
					self.valueUnsignedInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueUnsignedInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueUri"] {
				presentKeys.insert("valueUri")
				if let val = exist as? String {
					self.valueUri = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueUri", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let part = self.part {
			json["part"] = ParametersParameter.asJSONArray(part)
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON()
		}
		if let valueAddress = self.valueAddress {
			json["valueAddress"] = valueAddress.asJSON()
		}
		if let valueAge = self.valueAge {
			json["valueAge"] = valueAge.asJSON()
		}
		if let valueAnnotation = self.valueAnnotation {
			json["valueAnnotation"] = valueAnnotation.asJSON()
		}
		if let valueAttachment = self.valueAttachment {
			json["valueAttachment"] = valueAttachment.asJSON()
		}
		if let valueBase64Binary = self.valueBase64Binary {
			json["valueBase64Binary"] = valueBase64Binary.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCode = self.valueCode {
			json["valueCode"] = valueCode.asJSON()
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON()
		}
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.asJSON()
		}
		if let valueContactPoint = self.valueContactPoint {
			json["valueContactPoint"] = valueContactPoint.asJSON()
		}
		if let valueCount = self.valueCount {
			json["valueCount"] = valueCount.asJSON()
		}
		if let valueDate = self.valueDate {
			json["valueDate"] = valueDate.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueDistance = self.valueDistance {
			json["valueDistance"] = valueDistance.asJSON()
		}
		if let valueDuration = self.valueDuration {
			json["valueDuration"] = valueDuration.asJSON()
		}
		if let valueHumanName = self.valueHumanName {
			json["valueHumanName"] = valueHumanName.asJSON()
		}
		if let valueId = self.valueId {
			json["valueId"] = valueId.asJSON()
		}
		if let valueIdentifier = self.valueIdentifier {
			json["valueIdentifier"] = valueIdentifier.asJSON()
		}
		if let valueInstant = self.valueInstant {
			json["valueInstant"] = valueInstant.asJSON()
		}
		if let valueInteger = self.valueInteger {
			json["valueInteger"] = valueInteger.asJSON()
		}
		if let valueMarkdown = self.valueMarkdown {
			json["valueMarkdown"] = valueMarkdown.asJSON()
		}
		if let valueMeta = self.valueMeta {
			json["valueMeta"] = valueMeta.asJSON()
		}
		if let valueMoney = self.valueMoney {
			json["valueMoney"] = valueMoney.asJSON()
		}
		if let valueOid = self.valueOid {
			json["valueOid"] = valueOid.asJSON()
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON()
		}
		if let valuePositiveInt = self.valuePositiveInt {
			json["valuePositiveInt"] = valuePositiveInt.asJSON()
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
		if let valueReference = self.valueReference {
			json["valueReference"] = valueReference.asJSON()
		}
		if let valueSampledData = self.valueSampledData {
			json["valueSampledData"] = valueSampledData.asJSON()
		}
		if let valueSignature = self.valueSignature {
			json["valueSignature"] = valueSignature.asJSON()
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		if let valueTiming = self.valueTiming {
			json["valueTiming"] = valueTiming.asJSON()
		}
		if let valueUnsignedInt = self.valueUnsignedInt {
			json["valueUnsignedInt"] = valueUnsignedInt.asJSON()
		}
		if let valueUri = self.valueUri {
			json["valueUri"] = valueUri.asJSON()
		}
		
		return json
	}
}

