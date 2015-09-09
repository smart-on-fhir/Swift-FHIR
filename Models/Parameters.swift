//
//  Parameters.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Parameters) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Operation Request or Response.
 *
 *  This special resource type is used to represent [operation](operations.html] request and response. It has no other
 *  use, and there is no RESTful end=point associated with it.
 */
public class Parameters: Resource
{
	override public class var resourceName: String {
		get { return "Parameters" }
	}
	
	/// Operation Parameter
	public var parameter: [ParametersParameter]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
public class ParametersParameter: FHIRElement
{
	override public class var resourceName: String {
		get { return "ParametersParameter" }
	}
	
	/// Name from the definition
	public var name: String?
	
	/// Named part of a parameter (e.g. Tuple)
	public var part: [ParametersParameterPart]?
	
	/// If parameter is a whole resource
	public var resource: Resource?
	
	/// If parameter is a data type
	public var valueAddress: Address?
	
	/// If parameter is a data type
	public var valueAttachment: Attachment?
	
	/// If parameter is a data type
	public var valueBase64Binary: Base64Binary?
	
	/// If parameter is a data type
	public var valueBoolean: Bool?
	
	/// If parameter is a data type
	public var valueCode: String?
	
	/// If parameter is a data type
	public var valueCodeableConcept: CodeableConcept?
	
	/// If parameter is a data type
	public var valueCoding: Coding?
	
	/// If parameter is a data type
	public var valueContactPoint: ContactPoint?
	
	/// If parameter is a data type
	public var valueDate: Date?
	
	/// If parameter is a data type
	public var valueDateTime: DateTime?
	
	/// If parameter is a data type
	public var valueDecimal: NSDecimalNumber?
	
	/// If parameter is a data type
	public var valueHumanName: HumanName?
	
	/// If parameter is a data type
	public var valueIdentifier: Identifier?
	
	/// If parameter is a data type
	public var valueInstant: Instant?
	
	/// If parameter is a data type
	public var valueInteger: Int?
	
	/// If parameter is a data type
	public var valuePeriod: Period?
	
	/// If parameter is a data type
	public var valueQuantity: Quantity?
	
	/// If parameter is a data type
	public var valueRange: Range?
	
	/// If parameter is a data type
	public var valueRatio: Ratio?
	
	/// If parameter is a data type
	public var valueReference: Reference?
	
	/// If parameter is a data type
	public var valueSignature: Signature?
	
	/// If parameter is a data type
	public var valueString: String?
	
	/// If parameter is a data type
	public var valueTime: Time?
	
	/// If parameter is a data type
	public var valueTiming: Timing?
	
	/// If parameter is a data type
	public var valueUri: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
					self.part = ParametersParameterPart.from(val, owner: self) as? [ParametersParameterPart]
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
			if let exist: AnyObject = js["valueHumanName"] {
				presentKeys.insert("valueHumanName")
				if let val = exist as? FHIRJSON {
					self.valueHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueHumanName", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["valuePeriod"] {
				presentKeys.insert("valuePeriod")
				if let val = exist as? FHIRJSON {
					self.valuePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valuePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
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
			json["part"] = ParametersParameterPart.asJSONArray(part)
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON()
		}
		if let valueAddress = self.valueAddress {
			json["valueAddress"] = valueAddress.asJSON()
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
		if let valueDate = self.valueDate {
			json["valueDate"] = valueDate.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueHumanName = self.valueHumanName {
			json["valueHumanName"] = valueHumanName.asJSON()
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
		if let valueReference = self.valueReference {
			json["valueReference"] = valueReference.asJSON()
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
		if let valueUri = self.valueUri {
			json["valueUri"] = valueUri.asJSON()
		}
		
		return json
	}
}


/**
 *  Named part of a parameter (e.g. Tuple).
 *
 *  A named part of a parameter. In many implementation context, a set of named parts is known as a "Tuple".
 */
public class ParametersParameterPart: FHIRElement
{
	override public class var resourceName: String {
		get { return "ParametersParameterPart" }
	}
	
	/// Name from the definition
	public var name: String?
	
	/// If part is a whole resource
	public var resource: Resource?
	
	/// Value of the part
	public var valueAddress: Address?
	
	/// Value of the part
	public var valueAttachment: Attachment?
	
	/// Value of the part
	public var valueBase64Binary: Base64Binary?
	
	/// Value of the part
	public var valueBoolean: Bool?
	
	/// Value of the part
	public var valueCode: String?
	
	/// Value of the part
	public var valueCodeableConcept: CodeableConcept?
	
	/// Value of the part
	public var valueCoding: Coding?
	
	/// Value of the part
	public var valueContactPoint: ContactPoint?
	
	/// Value of the part
	public var valueDate: Date?
	
	/// Value of the part
	public var valueDateTime: DateTime?
	
	/// Value of the part
	public var valueDecimal: NSDecimalNumber?
	
	/// Value of the part
	public var valueHumanName: HumanName?
	
	/// Value of the part
	public var valueIdentifier: Identifier?
	
	/// Value of the part
	public var valueInstant: Instant?
	
	/// Value of the part
	public var valueInteger: Int?
	
	/// Value of the part
	public var valuePeriod: Period?
	
	/// Value of the part
	public var valueQuantity: Quantity?
	
	/// Value of the part
	public var valueRange: Range?
	
	/// Value of the part
	public var valueRatio: Ratio?
	
	/// Value of the part
	public var valueReference: Reference?
	
	/// Value of the part
	public var valueSignature: Signature?
	
	/// Value of the part
	public var valueString: String?
	
	/// Value of the part
	public var valueTime: Time?
	
	/// Value of the part
	public var valueTiming: Timing?
	
	/// Value of the part
	public var valueUri: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			if let exist: AnyObject = js["valueHumanName"] {
				presentKeys.insert("valueHumanName")
				if let val = exist as? FHIRJSON {
					self.valueHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueHumanName", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["valuePeriod"] {
				presentKeys.insert("valuePeriod")
				if let val = exist as? FHIRJSON {
					self.valuePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valuePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let resource = self.resource {
			json["resource"] = resource.asJSON()
		}
		if let valueAddress = self.valueAddress {
			json["valueAddress"] = valueAddress.asJSON()
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
		if let valueDate = self.valueDate {
			json["valueDate"] = valueDate.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueHumanName = self.valueHumanName {
			json["valueHumanName"] = valueHumanName.asJSON()
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
		if let valueReference = self.valueReference {
			json["valueReference"] = valueReference.asJSON()
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
		if let valueUri = self.valueUri {
			json["valueUri"] = valueUri.asJSON()
		}
		
		return json
	}
}

