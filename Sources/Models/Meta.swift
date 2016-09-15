//
//  Meta.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Meta) on 2016-08-17.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["lastUpdated"] {
				presentKeys.insert("lastUpdated")
				if let val = exist as? String {
					self.lastUpdated = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "lastUpdated", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? [String] {
					self.profile = URL.instantiate(fromArray: val)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["security"] {
				presentKeys.insert("security")
				if let val = exist as? [FHIRJSON] {
					self.security = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "security", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["tag"] {
				presentKeys.insert("tag")
				if let val = exist as? [FHIRJSON] {
					self.tag = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "tag", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["versionId"] {
				presentKeys.insert("versionId")
				if let val = exist as? String {
					self.versionId = val
				}
				else {
					errors.append(FHIRJSONError(key: "versionId", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
			json["security"] = security.map() { $0.asJSON() }
		}
		if let tag = self.tag {
			json["tag"] = tag.map() { $0.asJSON() }
		}
		if let versionId = self.versionId {
			json["versionId"] = versionId.asJSON()
		}
		
		return json
	}
}

