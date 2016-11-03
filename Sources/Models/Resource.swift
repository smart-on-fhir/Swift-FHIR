//
//  Resource.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/Resource) on 2016-11-03.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["id"] {
			presentKeys.insert("id")
			if let val = exist as? String {
				self.id = val
			}
			else {
				errors.append(FHIRValidationError(key: "id", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["implicitRules"] {
			presentKeys.insert("implicitRules")
			if let val = exist as? String {
				self.implicitRules = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "implicitRules", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["language"] {
			presentKeys.insert("language")
			if let val = exist as? String {
				self.language = val
			}
			else {
				errors.append(FHIRValidationError(key: "language", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["meta"] {
			presentKeys.insert("meta")
			if let val = exist as? FHIRJSON {
				do {
					self.meta = try Meta(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "meta"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "meta", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
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
			json["meta"] = meta.asJSON(errors: &errors)
		}
		
		return json
	}
}

