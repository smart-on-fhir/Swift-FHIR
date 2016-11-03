//
//  Meta.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/Meta) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Metadata about a resource.
 *
 *  The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes to
 *  the content may not always be associated with version changes to the resource.
 */
open class Meta: Element {
	override open class var resourceType: String {
		get { return "Meta" }
	}
	
	/// When the resource version last changed.
	public var lastUpdated: Instant?
	
	/// Profiles this resource claims to conform to.
	public var profile: [URL]?
	
	/// Security Labels applied to this resource.
	public var security: [Coding]?
	
	/// Tags applied to this resource.
	public var tag: [Coding]?
	
	/// Version specific identifier.
	public var versionId: String?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["lastUpdated"] {
			presentKeys.insert("lastUpdated")
			if let val = exist as? String {
				self.lastUpdated = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "lastUpdated", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? [String] {
				self.profile = URL.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "profile", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["security"] {
			presentKeys.insert("security")
			if let val = exist as? [FHIRJSON] {
				do {
					self.security = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "security"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "security", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["tag"] {
			presentKeys.insert("tag")
			if let val = exist as? [FHIRJSON] {
				do {
					self.tag = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "tag"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "tag", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["versionId"] {
			presentKeys.insert("versionId")
			if let val = exist as? String {
				self.versionId = val
			}
			else {
				errors.append(FHIRValidationError(key: "versionId", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let lastUpdated = self.lastUpdated {
			json["lastUpdated"] = lastUpdated.asJSON()
		}
		if let profile = self.profile {
			var arr = [Any]()
			for val in profile {
				arr.append(val.asJSON())
			}
			json["profile"] = arr
		}
		if let security = self.security {
			json["security"] = security.map() { $0.asJSON(errors: &errors) }
		}
		if let tag = self.tag {
			json["tag"] = tag.map() { $0.asJSON(errors: &errors) }
		}
		if let versionId = self.versionId {
			json["versionId"] = versionId.asJSON()
		}
		
		return json
	}
}

