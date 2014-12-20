//
//  Identifier.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (Identifier.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  An identifier intended for computation.
 *
 *  A technical identifier - identifies some entity uniquely and unambiguously.
 */
public class Identifier: FHIRElement
{
	override public class var resourceName: String {
		get { return "Identifier" }
	}
	
	/// Organization that issued id (may be just text)
	public var assigner: Reference?
	
	/// Description of identifier
	public var label: String?
	
	/// Time period when id is/was valid for use
	public var period: Period?
	
	/// The namespace for the identifier
	public var system: NSURL?
	
	/// usual | official | temp | secondary (If known)
	public var use: String?
	
	/// The value that is unique
	public var value: String?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["assigner"] as? NSDictionary {
				self.assigner = Reference(json: val, owner: self)
			}
			if let val = js["label"] as? String {
				self.label = val
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
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

