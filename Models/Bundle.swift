//
//  Bundle.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Bundle) on 2015-07-28.
//  2015, SMART Health IT.
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
	public var total: UInt?
	
	/// document | message | transaction | transaction-response | history | searchset | collection
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["base"] {
				presentKeys.insert("base")
				if let val = exist as? String {
					self.base = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "base", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["entry"] {
				presentKeys.insert("entry")
				if let val = exist as? [FHIRJSON] {
					self.entry = BundleEntry.from(val, owner: self) as? [BundleEntry]
				}
				else {
					errors.append(FHIRJSONError(key: "entry", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["link"] {
				presentKeys.insert("link")
				if let val = exist as? [FHIRJSON] {
					self.link = BundleLink.from(val, owner: self) as? [BundleLink]
				}
				else {
					errors.append(FHIRJSONError(key: "link", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["signature"] {
				presentKeys.insert("signature")
				if let val = exist as? String {
					self.signature = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "signature", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["total"] {
				presentKeys.insert("total")
				if let val = exist as? UInt {
					self.total = val
				}
				else {
					errors.append(FHIRJSONError(key: "total", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	/// Links related to this entry
	public var link: [BundleLink]?
	
	/// Resources in this bundle
	public var resource: Resource?
	
	/// Search related information
	public var search: BundleEntrySearch?
	
	/// Transaction Related Information
	public var transaction: BundleEntryTransaction?
	
	/// Transaction Related Information
	public var transactionResponse: BundleEntryTransactionResponse?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["base"] {
				presentKeys.insert("base")
				if let val = exist as? String {
					self.base = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "base", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["link"] {
				presentKeys.insert("link")
				if let val = exist as? [FHIRJSON] {
					self.link = BundleLink.from(val, owner: self) as? [BundleLink]
				}
				else {
					errors.append(FHIRJSONError(key: "link", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? FHIRJSON {
					self.resource = Resource.instantiateFrom(val, owner: self) as? Resource
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["search"] {
				presentKeys.insert("search")
				if let val = exist as? FHIRJSON {
					self.search = BundleEntrySearch(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "search", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["transaction"] {
				presentKeys.insert("transaction")
				if let val = exist as? FHIRJSON {
					self.transaction = BundleEntryTransaction(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "transaction", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["transactionResponse"] {
				presentKeys.insert("transactionResponse")
				if let val = exist as? FHIRJSON {
					self.transactionResponse = BundleEntryTransactionResponse(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "transactionResponse", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["mode"] {
				presentKeys.insert("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(FHIRJSONError(key: "mode", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["score"] {
				presentKeys.insert("score")
				if let val = exist as? NSNumber {
					self.score = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "score", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(method: String?, url: NSURL?) {
		self.init(json: nil)
		if nil != method {
			self.method = method
		}
		if nil != url {
			self.url = url
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["ifMatch"] {
				presentKeys.insert("ifMatch")
				if let val = exist as? String {
					self.ifMatch = val
				}
				else {
					errors.append(FHIRJSONError(key: "ifMatch", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ifModifiedSince"] {
				presentKeys.insert("ifModifiedSince")
				if let val = exist as? String {
					self.ifModifiedSince = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "ifModifiedSince", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ifNoneExist"] {
				presentKeys.insert("ifNoneExist")
				if let val = exist as? String {
					self.ifNoneExist = val
				}
				else {
					errors.append(FHIRJSONError(key: "ifNoneExist", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ifNoneMatch"] {
				presentKeys.insert("ifNoneMatch")
				if let val = exist as? String {
					self.ifNoneMatch = val
				}
				else {
					errors.append(FHIRJSONError(key: "ifNoneMatch", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["method"] {
				presentKeys.insert("method")
				if let val = exist as? String {
					self.method = val
				}
				else {
					errors.append(FHIRJSONError(key: "method", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "method"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "url"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["etag"] {
				presentKeys.insert("etag")
				if let val = exist as? String {
					self.etag = val
				}
				else {
					errors.append(FHIRJSONError(key: "etag", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["lastModified"] {
				presentKeys.insert("lastModified")
				if let val = exist as? String {
					self.lastModified = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "lastModified", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? String {
					self.location = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(relation: String?, url: NSURL?) {
		self.init(json: nil)
		if nil != relation {
			self.relation = relation
		}
		if nil != url {
			self.url = url
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["relation"] {
				presentKeys.insert("relation")
				if let val = exist as? String {
					self.relation = val
				}
				else {
					errors.append(FHIRJSONError(key: "relation", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "relation"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "url"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

