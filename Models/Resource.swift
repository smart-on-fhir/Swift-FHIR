//
//  Resource.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/Resource) on 2015-03-25.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Base Resource.
 *
 *  Base Resource for everything.
 */
public class Resource: FHIRResource
{
	override public class var resourceName: String {
		get { return "Resource" }
	}
	
	/// A set of rules under which this content was created
	public var implicitRules: NSURL?
	
	/// Language of the resource content
	public var language: String?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["implicitRules"] as? String {
				self.implicitRules = NSURL(string: val)
			}
			if let val = js["language"] as? String {
				self.language = val
			}
			if let val = js["meta"] as? FHIRJSON {
				self.meta = Meta(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let implicitRules = self.implicitRules {
			json["implicitRules"] = implicitRules.asJSON()
		}
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		if let meta = self.meta {
			json["meta"] = meta.asJSON()
		}
		
		return json
	}
}

