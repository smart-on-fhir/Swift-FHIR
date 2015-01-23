//
//  Extension.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3969 (Extension.profile.json) on 2015-01-23.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Optional Extensions Element - found in all resources..
 *
 *  Optional Extensions Element - found in all resources.
 */
public class Extension: FHIRElement
{
	override public class var resourceName: String {
		get { return "Extension" }
	}
	
	/// identifies the meaning of the extension
	public var url: NSURL?
	
	/// Value of extension
	public var valueAddress: Address?
	
	/// Value of extension
	public var valueAttachment: Attachment?
	
	/// Value of extension
	public var valueBase64Binary: Base64Binary?
	
	/// Value of extension
	public var valueBoolean: Bool?
	
	/// Value of extension
	public var valueCode: String?
	
	/// Value of extension
	public var valueCodeableConcept: CodeableConcept?
	
	/// Value of extension
	public var valueCoding: Coding?
	
	/// Value of extension
	public var valueContactPoint: ContactPoint?
	
	/// Value of extension
	public var valueDate: Date?
	
	/// Value of extension
	public var valueDateTime: DateTime?
	
	/// Value of extension
	public var valueDecimal: NSDecimalNumber?
	
	/// Value of extension
	public var valueHumanName: HumanName?
	
	/// Value of extension
	public var valueIdentifier: Identifier?
	
	/// Value of extension
	public var valueInstant: Instant?
	
	/// Value of extension
	public var valueInteger: Int?
	
	/// Value of extension
	public var valuePeriod: Period?
	
	/// Value of extension
	public var valueQuantity: Quantity?
	
	/// Value of extension
	public var valueRange: Range?
	
	/// Value of extension
	public var valueRatio: Ratio?
	
	/// Value of extension
	public var valueReference: Reference?
	
	/// Value of extension
	public var valueString: String?
	
	/// Value of extension
	public var valueTime: Time?
	
	/// Value of extension
	public var valueTiming: Timing?
	
	/// Value of extension
	public var valueUri: NSURL?
	
	public convenience init(url: NSURL?) {
		self.init(json: nil)
		if nil != url {
			self.url = url
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
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
		
		if let url = self.url {
			json["url"] = url.asJSON()
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

