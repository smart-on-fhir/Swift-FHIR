//
//  ContactPoint.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ContactPoint) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Details of a Technology mediated contact point (phone, fax, email, etc).
 *
 *  Details for All kinds of technology mediated contact points for a person or organization, including telephone,
 *  email, etc.
 */
public class ContactPoint: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContactPoint" }
	}
	
	/// Time period when the contact point was/is in use
	public var period: Period?
	
	/// phone | fax | email | url
	public var system: String?
	
	/// home | work | temp | old | mobile - purpose of this contact point
	public var use: String?
	
	/// The actual contact point details
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["period"] {
				presentKeys.addObject("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"period\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["system"] {
				presentKeys.addObject("system")
				if let val = exist as? String {
					self.system = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"system\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["use"] {
				presentKeys.addObject("use")
				if let val = exist as? String {
					self.use = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"use\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.addObject("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"value\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}

