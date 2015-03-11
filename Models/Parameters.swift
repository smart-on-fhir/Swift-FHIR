//
//  Parameters.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/Parameters) on 2015-03-11.
//  2015, SMART Platforms.
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["parameter"] as? [JSONDictionary] {
				self.parameter = ParametersParameter.from(val, owner: self) as? [ParametersParameter]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
	public var valueString: String?
	
	/// If parameter is a data type
	public var valueTime: Time?
	
	/// If parameter is a data type
	public var valueTiming: Timing?
	
	/// If parameter is a data type
	public var valueUri: NSURL?
	
	public convenience init(name: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["part"] as? [JSONDictionary] {
				self.part = ParametersParameterPart.from(val, owner: self) as? [ParametersParameterPart]
			}
			if let val = js["resource"] as? JSONDictionary {
				self.resource = Resource(json: val, owner: self)
			}
			if let val = js["valueAddress"] as? JSONDictionary {
				self.valueAddress = Address(json: val, owner: self)
			}
			if let val = js["valueAttachment"] as? JSONDictionary {
				self.valueAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["valueBase64Binary"] as? String {
				self.valueBase64Binary = Base64Binary(string: val)
			}
			if let val = js["valueBoolean"] as? Bool {
				self.valueBoolean = val
			}
			if let val = js["valueCode"] as? String {
				self.valueCode = val
			}
			if let val = js["valueCodeableConcept"] as? JSONDictionary {
				self.valueCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["valueCoding"] as? JSONDictionary {
				self.valueCoding = Coding(json: val, owner: self)
			}
			if let val = js["valueContactPoint"] as? JSONDictionary {
				self.valueContactPoint = ContactPoint(json: val, owner: self)
			}
			if let val = js["valueDate"] as? String {
				self.valueDate = Date(string: val)
			}
			if let val = js["valueDateTime"] as? String {
				self.valueDateTime = DateTime(string: val)
			}
			if let val = js["valueDecimal"] as? NSNumber {
				self.valueDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["valueHumanName"] as? JSONDictionary {
				self.valueHumanName = HumanName(json: val, owner: self)
			}
			if let val = js["valueIdentifier"] as? JSONDictionary {
				self.valueIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["valueInstant"] as? String {
				self.valueInstant = Instant(string: val)
			}
			if let val = js["valueInteger"] as? Int {
				self.valueInteger = val
			}
			if let val = js["valuePeriod"] as? JSONDictionary {
				self.valuePeriod = Period(json: val, owner: self)
			}
			if let val = js["valueQuantity"] as? JSONDictionary {
				self.valueQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["valueRange"] as? JSONDictionary {
				self.valueRange = Range(json: val, owner: self)
			}
			if let val = js["valueRatio"] as? JSONDictionary {
				self.valueRatio = Ratio(json: val, owner: self)
			}
			if let val = js["valueReference"] as? JSONDictionary {
				self.valueReference = Reference(json: val, owner: self)
			}
			if let val = js["valueString"] as? String {
				self.valueString = val
			}
			if let val = js["valueTime"] as? String {
				self.valueTime = Time(string: val)
			}
			if let val = js["valueTiming"] as? JSONDictionary {
				self.valueTiming = Timing(json: val, owner: self)
			}
			if let val = js["valueUri"] as? String {
				self.valueUri = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
	public var valueString: String?
	
	/// Value of the part
	public var valueTime: Time?
	
	/// Value of the part
	public var valueTiming: Timing?
	
	/// Value of the part
	public var valueUri: NSURL?
	
	public convenience init(name: String?, valueAddress: Address?, valueAttachment: Attachment?, valueBase64Binary: Base64Binary?, valueBoolean: Bool?, valueCode: String?, valueCodeableConcept: CodeableConcept?, valueCoding: Coding?, valueContactPoint: ContactPoint?, valueDate: Date?, valueDateTime: DateTime?, valueDecimal: NSDecimalNumber?, valueHumanName: HumanName?, valueIdentifier: Identifier?, valueInstant: Instant?, valueInteger: Int?, valuePeriod: Period?, valueQuantity: Quantity?, valueRange: Range?, valueRatio: Ratio?, valueReference: Reference?, valueString: String?, valueTime: Time?, valueTiming: Timing?, valueUri: NSURL?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != valueAddress {
			self.valueAddress = valueAddress
		}
		if nil != valueAttachment {
			self.valueAttachment = valueAttachment
		}
		if nil != valueBase64Binary {
			self.valueBase64Binary = valueBase64Binary
		}
		if nil != valueBoolean {
			self.valueBoolean = valueBoolean
		}
		if nil != valueCode {
			self.valueCode = valueCode
		}
		if nil != valueCodeableConcept {
			self.valueCodeableConcept = valueCodeableConcept
		}
		if nil != valueCoding {
			self.valueCoding = valueCoding
		}
		if nil != valueContactPoint {
			self.valueContactPoint = valueContactPoint
		}
		if nil != valueDate {
			self.valueDate = valueDate
		}
		if nil != valueDateTime {
			self.valueDateTime = valueDateTime
		}
		if nil != valueDecimal {
			self.valueDecimal = valueDecimal
		}
		if nil != valueHumanName {
			self.valueHumanName = valueHumanName
		}
		if nil != valueIdentifier {
			self.valueIdentifier = valueIdentifier
		}
		if nil != valueInstant {
			self.valueInstant = valueInstant
		}
		if nil != valueInteger {
			self.valueInteger = valueInteger
		}
		if nil != valuePeriod {
			self.valuePeriod = valuePeriod
		}
		if nil != valueQuantity {
			self.valueQuantity = valueQuantity
		}
		if nil != valueRange {
			self.valueRange = valueRange
		}
		if nil != valueRatio {
			self.valueRatio = valueRatio
		}
		if nil != valueReference {
			self.valueReference = valueReference
		}
		if nil != valueString {
			self.valueString = valueString
		}
		if nil != valueTime {
			self.valueTime = valueTime
		}
		if nil != valueTiming {
			self.valueTiming = valueTiming
		}
		if nil != valueUri {
			self.valueUri = valueUri
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["valueAddress"] as? JSONDictionary {
				self.valueAddress = Address(json: val, owner: self)
			}
			if let val = js["valueAttachment"] as? JSONDictionary {
				self.valueAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["valueBase64Binary"] as? String {
				self.valueBase64Binary = Base64Binary(string: val)
			}
			if let val = js["valueBoolean"] as? Bool {
				self.valueBoolean = val
			}
			if let val = js["valueCode"] as? String {
				self.valueCode = val
			}
			if let val = js["valueCodeableConcept"] as? JSONDictionary {
				self.valueCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["valueCoding"] as? JSONDictionary {
				self.valueCoding = Coding(json: val, owner: self)
			}
			if let val = js["valueContactPoint"] as? JSONDictionary {
				self.valueContactPoint = ContactPoint(json: val, owner: self)
			}
			if let val = js["valueDate"] as? String {
				self.valueDate = Date(string: val)
			}
			if let val = js["valueDateTime"] as? String {
				self.valueDateTime = DateTime(string: val)
			}
			if let val = js["valueDecimal"] as? NSNumber {
				self.valueDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["valueHumanName"] as? JSONDictionary {
				self.valueHumanName = HumanName(json: val, owner: self)
			}
			if let val = js["valueIdentifier"] as? JSONDictionary {
				self.valueIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["valueInstant"] as? String {
				self.valueInstant = Instant(string: val)
			}
			if let val = js["valueInteger"] as? Int {
				self.valueInteger = val
			}
			if let val = js["valuePeriod"] as? JSONDictionary {
				self.valuePeriod = Period(json: val, owner: self)
			}
			if let val = js["valueQuantity"] as? JSONDictionary {
				self.valueQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["valueRange"] as? JSONDictionary {
				self.valueRange = Range(json: val, owner: self)
			}
			if let val = js["valueRatio"] as? JSONDictionary {
				self.valueRatio = Ratio(json: val, owner: self)
			}
			if let val = js["valueReference"] as? JSONDictionary {
				self.valueReference = Reference(json: val, owner: self)
			}
			if let val = js["valueString"] as? String {
				self.valueString = val
			}
			if let val = js["valueTime"] as? String {
				self.valueTime = Time(string: val)
			}
			if let val = js["valueTiming"] as? JSONDictionary {
				self.valueTiming = Timing(json: val, owner: self)
			}
			if let val = js["valueUri"] as? String {
				self.valueUri = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
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

