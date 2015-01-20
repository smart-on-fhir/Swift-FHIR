//
//  ContactPoint.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (ContactPoint.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["system"] as? String {
				self.system = val
			}
			if let val = js["use"] as? String {
				self.use = val
			}
			if let val = js["value"] as? String {
				self.value = val
			}
		}
	}
}

