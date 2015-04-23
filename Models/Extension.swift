//
//  Extension.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Extension) on 2015-04-23.
//  2015, SMART Health IT.
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
	public var valueSignature: Signature?
	
	/// Value of extension
	public var valueString: String?
	
	/// Value of extension
	public var valueTime: Time?
	
	/// Value of extension
	public var valueTiming: Timing?
	
	/// Value of extension
	public var valueUri: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(url: NSURL?) {
		self.init(json: nil)
		if nil != url {
			self.url = url
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["url"] {
				presentKeys.addObject("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"url\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"url\" but it is missing"))
			}
			if let exist: AnyObject = js["valueAddress"] {
				presentKeys.addObject("valueAddress")
				if let val = exist as? FHIRJSON {
					self.valueAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueAddress\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["valueBase64Binary"] {
				presentKeys.addObject("valueBase64Binary")
				if let val = exist as? String {
					self.valueBase64Binary = Base64Binary(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueBase64Binary\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueBoolean"] {
				presentKeys.addObject("valueBoolean")
				if let val = exist as? Bool {
					self.valueBoolean = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueBoolean\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueCode"] {
				presentKeys.addObject("valueCode")
				if let val = exist as? String {
					self.valueCode = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueCode\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["valueCoding"] {
				presentKeys.addObject("valueCoding")
				if let val = exist as? FHIRJSON {
					self.valueCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueCoding\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueContactPoint"] {
				presentKeys.addObject("valueContactPoint")
				if let val = exist as? FHIRJSON {
					self.valueContactPoint = ContactPoint(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueContactPoint\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueDate"] {
				presentKeys.addObject("valueDate")
				if let val = exist as? String {
					self.valueDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueDate\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["valueDecimal"] {
				presentKeys.addObject("valueDecimal")
				if let val = exist as? NSNumber {
					self.valueDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueDecimal\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueHumanName"] {
				presentKeys.addObject("valueHumanName")
				if let val = exist as? FHIRJSON {
					self.valueHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueHumanName\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueIdentifier"] {
				presentKeys.addObject("valueIdentifier")
				if let val = exist as? FHIRJSON {
					self.valueIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueIdentifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueInstant"] {
				presentKeys.addObject("valueInstant")
				if let val = exist as? String {
					self.valueInstant = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueInstant\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueInteger"] {
				presentKeys.addObject("valueInteger")
				if let val = exist as? Int {
					self.valueInteger = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueInteger\" to be `Int`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["valueReference"] {
				presentKeys.addObject("valueReference")
				if let val = exist as? FHIRJSON {
					self.valueReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueSignature"] {
				presentKeys.addObject("valueSignature")
				if let val = exist as? FHIRJSON {
					self.valueSignature = Signature(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueSignature\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["valueTiming"] {
				presentKeys.addObject("valueTiming")
				if let val = exist as? FHIRJSON {
					self.valueTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueTiming\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueUri"] {
				presentKeys.addObject("valueUri")
				if let val = exist as? String {
					self.valueUri = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueUri\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

