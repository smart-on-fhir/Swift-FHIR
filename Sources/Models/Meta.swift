//
//  Meta.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Meta) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Metadata about a resource.
 *
 *  The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes to
 *  the content may not always be associated with version changes to the resource.
 */
public class Meta: Element {
	override public class var resourceName: String {
		get { return "Meta" }
	}
	
	/// When the resource version last changed.
	public var lastUpdated: Instant?
	
	/// Profiles this resource claims to conform to.
	public var profile: [NSURL]?
	
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["lastUpdated"] {
				presentKeys.insert("lastUpdated")
				if let val = exist as? String {
					self.lastUpdated = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "lastUpdated", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? [String] {
					self.profile = NSURL.from(val)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["security"] {
				presentKeys.insert("security")
				if let val = exist as? [FHIRJSON] {
					self.security = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "security", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["tag"] {
				presentKeys.insert("tag")
				if let val = exist as? [FHIRJSON] {
					self.tag = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "tag", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["versionId"] {
				presentKeys.insert("versionId")
				if let val = exist as? String {
					self.versionId = val
				}
				else {
					errors.append(FHIRJSONError(key: "versionId", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let lastUpdated = self.lastUpdated {
			json["lastUpdated"] = lastUpdated.asJSON()
		}
		if let profile = self.profile {
			var arr = [AnyObject]()
			for val in profile {
				arr.append(val.asJSON())
			}
			json["profile"] = arr
		}
		if let security = self.security {
			json["security"] = Coding.asJSONArray(security)
		}
		if let tag = self.tag {
			json["tag"] = Coding.asJSONArray(tag)
		}
		if let versionId = self.versionId {
			json["versionId"] = versionId.asJSON()
		}
		
		return json
	}
}

