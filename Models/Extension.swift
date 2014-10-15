//
//  Extension.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (type-Extension.profile.json) on 2014-10-15.
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
	public var value: FHIRElement?
	
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
			if let val = js["value"] as? NSDictionary {
				self.value = FHIRElement(json: val)
			}
		}
	}
}

