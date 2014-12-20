//
//  Extension.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (Extension.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
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
	public var valueDate: NSDate?
	
	/// Value of extension
	public var valueDateTime: NSDate?
	
	/// Value of extension
	public var valueDecimal: NSDecimalNumber?
	
	/// Value of extension
	public var valueHumanName: HumanName?
	
	/// Value of extension
	public var valueIdentifier: Identifier?
	
	/// Value of extension
	public var valueInstant: NSDate?
	
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
	public var valueTime: NSDate?
	
	/// Value of extension
	public var valueTiming: Timing?
	
	/// Value of extension
	public var valueUri: NSURL?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["valueAddress"] as? NSDictionary {
				self.valueAddress = Address(json: val, owner: self)
			}
			if let val = js["valueAttachment"] as? NSDictionary {
				self.valueAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["valueBase64Binary"] as? String {
				self.valueBase64Binary = Base64Binary(json: val)
			}
			if let val = js["valueBoolean"] as? Bool {
				self.valueBoolean = val
			}
			if let val = js["valueCode"] as? String {
				self.valueCode = val
			}
			if let val = js["valueCodeableConcept"] as? NSDictionary {
				self.valueCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["valueCoding"] as? NSDictionary {
				self.valueCoding = Coding(json: val, owner: self)
			}
			if let val = js["valueContactPoint"] as? NSDictionary {
				self.valueContactPoint = ContactPoint(json: val, owner: self)
			}
			if let val = js["valueDate"] as? String {
				self.valueDate = NSDate(json: val)
			}
			if let val = js["valueDateTime"] as? String {
				self.valueDateTime = NSDate(json: val)
			}
			if let val = js["valueDecimal"] as? NSNumber {
				self.valueDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["valueHumanName"] as? NSDictionary {
				self.valueHumanName = HumanName(json: val, owner: self)
			}
			if let val = js["valueIdentifier"] as? NSDictionary {
				self.valueIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["valueInstant"] as? String {
				self.valueInstant = NSDate(json: val)
			}
			if let val = js["valueInteger"] as? Int {
				self.valueInteger = val
			}
			if let val = js["valuePeriod"] as? NSDictionary {
				self.valuePeriod = Period(json: val, owner: self)
			}
			if let val = js["valueQuantity"] as? NSDictionary {
				self.valueQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["valueRange"] as? NSDictionary {
				self.valueRange = Range(json: val, owner: self)
			}
			if let val = js["valueRatio"] as? NSDictionary {
				self.valueRatio = Ratio(json: val, owner: self)
			}
			if let val = js["valueReference"] as? NSDictionary {
				self.valueReference = Reference(json: val, owner: self)
			}
			if let val = js["valueString"] as? String {
				self.valueString = val
			}
			if let val = js["valueTime"] as? String {
				self.valueTime = NSDate(json: val)
			}
			if let val = js["valueTiming"] as? NSDictionary {
				self.valueTiming = Timing(json: val, owner: self)
			}
			if let val = js["valueUri"] as? String {
				self.valueUri = NSURL(json: val)
			}
		}
	}
}

