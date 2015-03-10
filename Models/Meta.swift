//
//  Meta.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/Meta) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Metadata about a resource.
 *
 *  The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes to
 *  the content may not always be associated with version changes to the resource.
 */
public class Meta: FHIRElement
{
	override public class var resourceName: String {
		get { return "Meta" }
	}
	
	/// True if the resource is deleted
	public var deleted: Bool?
	
	/// When the resource version last changed
	public var lastUpdated: Instant?
	
	/// Profiles this resource claims to conform to
	public var profile: [NSURL]?
	
	/// Security Labels applied to this resource
	public var security: [Coding]?
	
	/// Tags applied
	public var tag: [Coding]?
	
	/// Version specific identifier
	public var versionId: String?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["deleted"] as? Bool {
				self.deleted = val
			}
			if let val = js["lastUpdated"] as? String {
				self.lastUpdated = Instant(string: val)
			}
			if let val = js["profile"] as? [String] {
				self.profile = NSURL.from(val)
			}
			if let val = js["security"] as? [JSONDictionary] {
				self.security = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["tag"] as? [JSONDictionary] {
				self.tag = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["versionId"] as? String {
				self.versionId = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let deleted = self.deleted {
			json["deleted"] = deleted.asJSON()
		}
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

