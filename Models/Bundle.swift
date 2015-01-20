//
//  Bundle.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (bundle.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Contains a group of resources.
 *
 *  A container for a group of resources.
 */
public class Bundle: FHIRResource
{
	override public class var resourceName: String {
		get { return "Bundle" }
	}
	
	/// Stated Base URL
	public var base: NSURL?
	
	/// Entry in the bundle - will have deleted or resource
	public var entry: [BundleEntry]?
	
	/// Links related to this Bundle
	public var link: [BundleLink]?
	
	/// XML Digital Signature (base64 encoded)
	public var signature: Base64Binary?
	
	/// If search, the total number of matches
	public var total: Int?
	
	/// document | message | transaction | transaction-response | history | searchset | collection
	public var type: String?
	
	public convenience init(type: String?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["base"] as? String {
				self.base = NSURL(string: val)
			}
			if let val = js["entry"] as? [JSONDictionary] {
				self.entry = BundleEntry.from(val, owner: self) as? [BundleEntry]
			}
			if let val = js["link"] as? [JSONDictionary] {
				self.link = BundleLink.from(val, owner: self) as? [BundleLink]
			}
			if let val = js["signature"] as? String {
				self.signature = Base64Binary(string: val)
			}
			if let val = js["total"] as? Int {
				self.total = val
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
}


/**
 *  Entry in the bundle - will have deleted or resource.
 *
 *  An entry in a bundle resource - will either contain a resource, or a deleted entry (transaction and history bundles
 *  only).
 */
public class BundleEntry: FHIRElement
{
	override public class var resourceName: String {
		get { return "BundleEntry" }
	}
	
	/// Base URL, if different to bundle base
	public var base: NSURL?
	
	/// If this is a deleted resource (transaction/history)
	public var deleted: BundleEntryDeleted?
	
	/// Resources in this bundle
	public var resource: FHIRResource?
	
	/// Search ranking (between 0 and 1)
	public var score: NSDecimalNumber?
	
	/// Search URL (see transaction)
	public var search: NSURL?
	
	/// create | update | match | include - for search & transaction
	public var status: String?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["base"] as? String {
				self.base = NSURL(string: val)
			}
			if let val = js["deleted"] as? JSONDictionary {
				self.deleted = BundleEntryDeleted(json: val, owner: self)
			}
			if let val = js["resource"] as? JSONDictionary {
				self.resource = FHIRResource.instantiateFrom(val, owner: self) as? FHIRResource
			}
			if let val = js["score"] as? NSNumber {
				self.score = NSDecimalNumber(json: val)
			}
			if let val = js["search"] as? String {
				self.search = NSURL(string: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
}


/**
 *  If this is a deleted resource (transaction/history).
 *
 *  If this is an entry that represents a deleted resource. Only used when the bundle is a transaction or a history
 *  type. See RESTful API documentation for further information.
 */
public class BundleEntryDeleted: FHIRElement
{
	override public class var resourceName: String {
		get { return "BundleEntryDeleted" }
	}
	
	/// When the resource was deleted
	public var instant: Instant?
	
	/// Id of resource that was deleted
	public var resourceId: String?
	
	/// Type of resource that was deleted
	public var type: String?
	
	/// Version id for releted resource
	public var versionId: String?
	
	public convenience init(instant: Instant?, resourceId: String?, type: String?, versionId: String?) {
		self.init(json: nil)
		if nil != instant {
			self.instant = instant
		}
		if nil != resourceId {
			self.resourceId = resourceId
		}
		if nil != type {
			self.type = type
		}
		if nil != versionId {
			self.versionId = versionId
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["instant"] as? String {
				self.instant = Instant(string: val)
			}
			if let val = js["resourceId"] as? String {
				self.resourceId = val
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["versionId"] as? String {
				self.versionId = val
			}
		}
	}
}


/**
 *  Links related to this Bundle.
 *
 *  A series of links that provide context to this bundle.
 */
public class BundleLink: FHIRElement
{
	override public class var resourceName: String {
		get { return "BundleLink" }
	}
	
	/// http://www.iana.org/assignments/link-relations/link-relations.xhtml
	public var relation: String?
	
	/// Reference details for the link
	public var url: NSURL?
	
	public convenience init(relation: String?, url: NSURL?) {
		self.init(json: nil)
		if nil != relation {
			self.relation = relation
		}
		if nil != url {
			self.url = url
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["relation"] as? String {
				self.relation = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
			}
		}
	}
}

