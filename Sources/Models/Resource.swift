//
//  Resource.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Resource) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Base Resource.
 *
 *  This is the base resource type for everything.
 */
open class Resource: FHIRAbstractResource {
	override open class var resourceType: String {
		get { return "Resource" }
	}
	
	/// Logical id of this artifact.
	public var id: String?
	
	/// A set of rules under which this content was created.
	public var implicitRules: URL?
	
	/// Language of the resource content.
	public var language: String?
	
	/// Metadata about the resource.
	public var meta: Meta?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["id"] {
				presentKeys.insert("id")
				if let val = exist as? String {
					self.id = val
				}
				else {
					errors.append(FHIRJSONError(key: "id", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["implicitRules"] {
				presentKeys.insert("implicitRules")
				if let val = exist as? String {
					self.implicitRules = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "implicitRules", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["language"] {
				presentKeys.insert("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(FHIRJSONError(key: "language", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["meta"] {
				presentKeys.insert("meta")
				if let val = exist as? FHIRJSON {
					self.meta = Meta(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "meta", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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

