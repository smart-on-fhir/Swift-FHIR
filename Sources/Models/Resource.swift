//
//  Resource.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Resource) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Base Resource.
 *
 *  This is the base resource type for everything.
 */
public class Resource: FHIRAbstractResource {
	override public class var resourceName: String {
		get { return "Resource" }
	}
	
	/// Logical id of this artifact.
	public var id: String?
	
	/// A set of rules under which this content was created.
	public var implicitRules: NSURL?
	
	/// Language of the resource content.
	public var language: String?
	
	/// Metadata about the resource.
	public var meta: Meta?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["id"] {
				presentKeys.insert("id")
				if let val = exist as? String {
					self.id = val
				}
				else {
					errors.append(FHIRJSONError(key: "id", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["implicitRules"] {
				presentKeys.insert("implicitRules")
				if let val = exist as? String {
					self.implicitRules = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "implicitRules", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["language"] {
				presentKeys.insert("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(FHIRJSONError(key: "language", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["meta"] {
				presentKeys.insert("meta")
				if let val = exist as? FHIRJSON {
					self.meta = Meta(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "meta", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let id = self.id {
			json["id"] = id.asJSON()
		}
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

