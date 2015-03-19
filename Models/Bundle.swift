//
//  Bundle.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/Bundle) on 2015-03-19.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Contains a collection of resources.
 *
 *  A container for a collection of resources.
 */
public class Bundle: Resource
{
	override public class var resourceName: String {
		get { return "Bundle" }
	}
	
	/// Stated Base URL
	public var base: NSURL?
	
	/// Entry in the bundle - will have a resource, or information
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
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let base = self.base {
			json["base"] = base.asJSON()
		}
		if let entry = self.entry {
			json["entry"] = BundleEntry.asJSONArray(entry)
		}
		if let link = self.link {
			json["link"] = BundleLink.asJSONArray(link)
		}
		if let signature = self.signature {
			json["signature"] = signature.asJSON()
		}
		if let total = self.total {
			json["total"] = total.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Entry in the bundle - will have a resource, or information.
 *
 *  An entry in a bundle resource - will either contain a resource, or information about a resource (transactions and
 *  history only).
 */
public class BundleEntry: FHIRElement
{
	override public class var resourceName: String {
		get { return "BundleEntry" }
	}
	
	/// Base URL, if different to bundle base
	public var base: NSURL?
	
	/// Links related to this Bundle
	public var link: [BundleLink]?
	
	/// Resources in this bundle
	public var resource: Resource?
	
	/// Search related information
	public var search: BundleEntrySearch?
	
	/// Transaction Related Information
	public var transaction: BundleEntryTransaction?
	
	/// Transaction Related Information
	public var transactionResponse: BundleEntryTransactionResponse?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["base"] as? String {
				self.base = NSURL(string: val)
			}
			if let val = js["link"] as? [JSONDictionary] {
				self.link = BundleLink.from(val, owner: self) as? [BundleLink]
			}
			if let val = js["resource"] as? JSONDictionary {
				self.resource = Resource.instantiateFrom(val, owner: self) as? Resource
			}
			if let val = js["search"] as? JSONDictionary {
				self.search = BundleEntrySearch(json: val, owner: self)
			}
			if let val = js["transaction"] as? JSONDictionary {
				self.transaction = BundleEntryTransaction(json: val, owner: self)
			}
			if let val = js["transactionResponse"] as? JSONDictionary {
				self.transactionResponse = BundleEntryTransactionResponse(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let base = self.base {
			json["base"] = base.asJSON()
		}
		if let link = self.link {
			json["link"] = BundleLink.asJSONArray(link)
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON()
		}
		if let search = self.search {
			json["search"] = search.asJSON()
		}
		if let transaction = self.transaction {
			json["transaction"] = transaction.asJSON()
		}
		if let transactionResponse = self.transactionResponse {
			json["transactionResponse"] = transactionResponse.asJSON()
		}
		
		return json
	}
}


/**
 *  Search related information.
 *
 *  Information about the search process that lead to the creation of this entry.
 */
public class BundleEntrySearch: FHIRElement
{
	override public class var resourceName: String {
		get { return "BundleEntrySearch" }
	}
	
	/// match | include - why this is in the result set
	public var mode: String?
	
	/// Search ranking (between 0 and 1)
	public var score: NSDecimalNumber?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["score"] as? NSNumber {
				self.score = NSDecimalNumber(json: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let score = self.score {
			json["score"] = score.asJSON()
		}
		
		return json
	}
}


/**
 *  Transaction Related Information.
 *
 *  Additional information about how this entry should be processed as part of a transaction.
 */
public class BundleEntryTransaction: FHIRElement
{
	override public class var resourceName: String {
		get { return "BundleEntryTransaction" }
	}
	
	/// For managing update contention
	public var ifMatch: String?
	
	/// For managing update contention
	public var ifModifiedSince: Instant?
	
	/// For conditional creates
	public var ifNoneExist: String?
	
	/// For managing cache currency
	public var ifNoneMatch: String?
	
	/// GET | POST | PUT | DELETE
	public var method: String?
	
	/// The URL for the transaction
	public var url: NSURL?
	
	public convenience init(method: String?, url: NSURL?) {
		self.init(json: nil)
		if nil != method {
			self.method = method
		}
		if nil != url {
			self.url = url
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["ifMatch"] as? String {
				self.ifMatch = val
			}
			if let val = js["ifModifiedSince"] as? String {
				self.ifModifiedSince = Instant(string: val)
			}
			if let val = js["ifNoneExist"] as? String {
				self.ifNoneExist = val
			}
			if let val = js["ifNoneMatch"] as? String {
				self.ifNoneMatch = val
			}
			if let val = js["method"] as? String {
				self.method = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let ifMatch = self.ifMatch {
			json["ifMatch"] = ifMatch.asJSON()
		}
		if let ifModifiedSince = self.ifModifiedSince {
			json["ifModifiedSince"] = ifModifiedSince.asJSON()
		}
		if let ifNoneExist = self.ifNoneExist {
			json["ifNoneExist"] = ifNoneExist.asJSON()
		}
		if let ifNoneMatch = self.ifNoneMatch {
			json["ifNoneMatch"] = ifNoneMatch.asJSON()
		}
		if let method = self.method {
			json["method"] = method.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}


/**
 *  Transaction Related Information.
 *
 *  Additional information about how this entry should be processed as part of a transaction.
 */
public class BundleEntryTransactionResponse: FHIRElement
{
	override public class var resourceName: String {
		get { return "BundleEntryTransactionResponse" }
	}
	
	/// The etag for the resource (if relevant)
	public var etag: String?
	
	/// Server's date time modified
	public var lastModified: Instant?
	
	/// The location, if the operation returns a location
	public var location: NSURL?
	
	/// Status return code for entry
	public var status: String?
	
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["etag"] as? String {
				self.etag = val
			}
			if let val = js["lastModified"] as? String {
				self.lastModified = Instant(string: val)
			}
			if let val = js["location"] as? String {
				self.location = NSURL(string: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let etag = self.etag {
			json["etag"] = etag.asJSON()
		}
		if let lastModified = self.lastModified {
			json["lastModified"] = lastModified.asJSON()
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
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
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let relation = self.relation {
			json["relation"] = relation.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}

