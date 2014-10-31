//
//  Extension.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (type-Extension.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Optional Extensions Element - found in all resources..
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
	public var valueBase64Binary: String?
	
	/// Value of extension
	public var valueBoolean: Bool?
	
	/// Value of extension
	public var valueCode: String?
	
	/// Value of extension
	public var valueCodeableConcept: CodeableConcept?
	
	/// Value of extension
	public var valueCoding: Coding?
	
	/// Value of extension
	public var valueContact: Contact?
	
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
	public var valueResource: FHIRResource?
	
	/// Value of extension
	public var valueSchedule: Schedule?
	
	/// Value of extension
	public var valueString: String?
	
	/// Value of extension
	public var valueUri: NSURL?
	
	public convenience init(url: NSURL?) {
		self.init(json: nil)
		if nil != url {
			self.url = url
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["url"] as? String {
				self.url = NSURL(json: val)
			}
			if let val = js["valueAddress"] as? NSDictionary {
				self.valueAddress = Address(json: val)
			}
			if let val = js["valueAttachment"] as? NSDictionary {
				self.valueAttachment = Attachment(json: val)
			}
			if let val = js["valueBase64Binary"] as? String {
				self.valueBase64Binary = val
			}
			if let val = js["valueBoolean"] as? Int {
				self.valueBoolean = (1 == val)
			}
			if let val = js["valueCode"] as? String {
				self.valueCode = val
			}
			if let val = js["valueCodeableConcept"] as? NSDictionary {
				self.valueCodeableConcept = CodeableConcept(json: val)
			}
			if let val = js["valueCoding"] as? NSDictionary {
				self.valueCoding = Coding(json: val)
			}
			if let val = js["valueContact"] as? NSDictionary {
				self.valueContact = Contact(json: val)
			}
			if let val = js["valueDate"] as? String {
				self.valueDate = NSDate(json: val)
			}
			if let val = js["valueDateTime"] as? String {
				self.valueDateTime = NSDate(json: val)
			}
			if let val = js["valueDecimal"] as? Double {
				self.valueDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["valueHumanName"] as? NSDictionary {
				self.valueHumanName = HumanName(json: val)
			}
			if let val = js["valueIdentifier"] as? NSDictionary {
				self.valueIdentifier = Identifier(json: val)
			}
			if let val = js["valueInstant"] as? String {
				self.valueInstant = NSDate(json: val)
			}
			if let val = js["valueInteger"] as? Int {
				self.valueInteger = val
			}
			if let val = js["valuePeriod"] as? NSDictionary {
				self.valuePeriod = Period(json: val)
			}
			if let val = js["valueQuantity"] as? NSDictionary {
				self.valueQuantity = Quantity(json: val)
			}
			if let val = js["valueRange"] as? NSDictionary {
				self.valueRange = Range(json: val)
			}
			if let val = js["valueRatio"] as? NSDictionary {
				self.valueRatio = Ratio(json: val)
			}
			if let val = js["valueResource"] as? NSDictionary {
				self.valueResource = FHIRResource(json: val)
			}
			if let val = js["valueSchedule"] as? NSDictionary {
				self.valueSchedule = Schedule(json: val)
			}
			if let val = js["valueString"] as? String {
				self.valueString = val
			}
			if let val = js["valueUri"] as? String {
				self.valueUri = NSURL(json: val)
			}
		}
	}
}

