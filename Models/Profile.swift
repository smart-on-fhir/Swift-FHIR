//
//  Profile.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (profile.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Resource Profile.
 *
 *  A Resource Profile - a statement of use of one or more FHIR Resources.  It may include constraints on Resources and
 *  Data Types, Terminology Binding Statements and Extension Definitions.
 */
public class Profile: FHIRResource
{
	override public class var resourceName: String {
		get { return "Profile" }
	}
	
	/// Structure that this set of constraints applies to
	public var base: NSURL?
	
	/// Assist with indexing and finding
	public var code: [Coding]?
	
	/// Date for this version of the profile
	public var date: DateTime?
	
	/// Natural language description of the profile
	public var description: String?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// FHIR Version this profile targets
	public var fhirVersion: String?
	
	/// Other identifiers for the profile
	public var identifier: [Identifier]?
	
	/// External specification that the content is mapped to
	public var mapping: [ProfileMapping]?
	
	/// Informal name for this profile
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Scope and Usage this profile is for
	public var requirements: String?
	
	/// Snapshot view of the structure
	public var snapshot: ProfileSnapshot?
	
	/// draft | active | retired
	public var status: String?
	
	/// Contact information of the publisher
	public var telecom: [ContactPoint]?
	
	/// The Resource or Data Type being described
	public var type: String?
	
	/// Literal URL used to reference this profile
	public var url: NSURL?
	
	/// Logical id for this version of the profile
	public var version: String?
	
	public convenience init(name: String?, status: String?, type: String?, url: NSURL?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != status {
			self.status = status
		}
		if nil != type {
			self.type = type
		}
		if nil != url {
			self.url = url
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["base"] as? String {
				self.base = NSURL(string: val)
			}
			if let val = js["code"] as? [JSONDictionary] {
				self.code = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["experimental"] as? Bool {
				self.experimental = val
			}
			if let val = js["fhirVersion"] as? String {
				self.fhirVersion = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["mapping"] as? [JSONDictionary] {
				self.mapping = ProfileMapping.from(val, owner: self) as? [ProfileMapping]
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["requirements"] as? String {
				self.requirements = val
			}
			if let val = js["snapshot"] as? JSONDictionary {
				self.snapshot = ProfileSnapshot(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["telecom"] as? [JSONDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
}


/**
 *  External specification that the content is mapped to.
 *
 *  An external specification that the content is mapped to.
 */
public class ProfileMapping: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProfileMapping" }
	}
	
	/// Versions, Issues, Scope limitations etc
	public var comments: String?
	
	/// Internal id when this mapping is used
	public var identity: String?
	
	/// Names what this mapping refers to
	public var name: String?
	
	/// Identifies what this mapping refers to
	public var uri: NSURL?
	
	public convenience init(identity: String?) {
		self.init(json: nil)
		if nil != identity {
			self.identity = identity
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["comments"] as? String {
				self.comments = val
			}
			if let val = js["identity"] as? String {
				self.identity = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["uri"] as? String {
				self.uri = NSURL(string: val)
			}
		}
	}
}


/**
 *  Snapshot view of the structure.
 *
 *  A snapshot view is expressed in a stand alone form that can be used and interpreted without considering the base
 *  profile.
 */
public class ProfileSnapshot: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProfileSnapshot" }
	}
	
	/// Definition of elements in the resource (if no profile)
	public var element: [ElementDefinition]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["element"] as? [JSONDictionary] {
				self.element = ElementDefinition.from(val, owner: self) as? [ElementDefinition]
			}
		}
	}
}

