//
//  Coding.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (Coding.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A reference to a code defined by a terminology system.
 */
public class Coding: FHIRElement
{
	override public class var resourceName: String {
		get { return "Coding" }
	}
	
	/// Symbol in syntax defined by the system
	public var code: String?
	
	/// Representation defined by the system
	public var display: String?
	
	/// If this code was chosen directly by the user
	public var primary: Bool?
	
	/// Identity of the terminology system
	public var system: NSURL?
	
	/// Set this coding was chosen from
	public var valueSet: Reference?
	
	/// Version of the system - if relevant
	public var version: String?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["primary"] as? Bool {
				self.primary = val
			}
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["valueSet"] as? NSDictionary {
				self.valueSet = Reference(json: val, owner: self)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
}

