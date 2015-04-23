//
//  Resource.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Resource) on 2015-04-23.
//  2015, SMART Health IT.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["implicitRules"] {
				presentKeys.addObject("implicitRules")
				if let val = exist as? String {
					self.implicitRules = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"implicitRules\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["language"] {
				presentKeys.addObject("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"language\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["meta"] {
				presentKeys.addObject("meta")
				if let val = exist as? FHIRJSON {
					self.meta = Meta(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"meta\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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

