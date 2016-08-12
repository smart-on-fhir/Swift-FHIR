//
//  Bundle.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Bundle) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Contains a collection of resources.
 *
 *  A container for a collection of resources.
 */
public class Bundle: Resource {
	override public class var resourceName: String {
		get { return "Bundle" }
	}
	
	/// Entry in the bundle - will have a resource, or information.
	public var entry: [BundleEntry]?
	
	/// Links related to this Bundle.
	public var link: [BundleLink]?
	
	/// Digital Signature.
	public var signature: Signature?
	
	/// If search, the total number of matches.
	public var total: UInt?
	
	/// document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String) {
		self.init(json: nil)
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
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
				if let val = exist as? FHIRJSON {
					self.signature = Signature(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "signature", wants: FHIRJSON.self, has: exist.dynamicType))
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
public class BundleEntry: BackboneElement {
	override public class var resourceName: String {
		get { return "BundleEntry" }
	}
	
	/// Absolute URL for resource (server address, or UUID/OID).
	public var fullUrl: NSURL?
	
	/// Links related to this entry.
	public var link: [BundleLink]?
	
	/// Transaction Related Information.
	public var request: BundleEntryRequest?
	
	/// A resource in the bundle.
	public var resource: Resource?
	
	/// Transaction Related Information.
	public var response: BundleEntryResponse?
	
	/// Search related information.
	public var search: BundleEntrySearch?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["fullUrl"] {
				presentKeys.insert("fullUrl")
				if let val = exist as? String {
					self.fullUrl = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "fullUrl", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["request"] {
				presentKeys.insert("request")
				if let val = exist as? FHIRJSON {
					self.request = BundleEntryRequest(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "request", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["response"] {
				presentKeys.insert("response")
				if let val = exist as? FHIRJSON {
					self.response = BundleEntryResponse(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "response", wants: FHIRJSON.self, has: exist.dynamicType))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let fullUrl = self.fullUrl {
			json["fullUrl"] = fullUrl.asJSON()
		}
		if let link = self.link {
			json["link"] = BundleLink.asJSONArray(link)
		}
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON()
		}
		if let response = self.response {
			json["response"] = response.asJSON()
		}
		if let search = self.search {
			json["search"] = search.asJSON()
		}
		
		return json
	}
}


/**
 *  Transaction Related Information.
 *
 *  Additional information about how this entry should be processed as part of a transaction.
 */
public class BundleEntryRequest: BackboneElement {
	override public class var resourceName: String {
		get { return "BundleEntryRequest" }
	}
	
	/// For managing update contention.
	public var ifMatch: String?
	
	/// For managing update contention.
	public var ifModifiedSince: Instant?
	
	/// For conditional creates.
	public var ifNoneExist: String?
	
	/// For managing cache currency.
	public var ifNoneMatch: String?
	
	/// GET | POST | PUT | DELETE.
	public var method: String?
	
	/// URL for HTTP equivalent of this entry.
	public var url: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(method: String, url: NSURL) {
		self.init(json: nil)
		self.method = method
		self.url = url
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
public class BundleEntryResponse: BackboneElement {
	override public class var resourceName: String {
		get { return "BundleEntryResponse" }
	}
	
	/// The etag for the resource (if relevant).
	public var etag: String?
	
	/// Server's date time modified.
	public var lastModified: Instant?
	
	/// The location, if the operation returns a location.
	public var location: NSURL?
	
	/// OperationOutcome with hints and warnings (for batch/transaction).
	public var outcome: Resource?
	
	/// Status response code (text optional).
	public var status: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init(json: nil)
		self.status = status
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			if let exist: AnyObject = js["outcome"] {
				presentKeys.insert("outcome")
				if let val = exist as? FHIRJSON {
					self.outcome = Resource.instantiateFrom(val, owner: self) as? Resource
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}


/**
 *  Search related information.
 *
 *  Information about the search process that lead to the creation of this entry.
 */
public class BundleEntrySearch: BackboneElement {
	override public class var resourceName: String {
		get { return "BundleEntrySearch" }
	}
	
	/// match | include | outcome - why this is in the result set.
	public var mode: String?
	
	/// Search ranking (between 0 and 1).
	public var score: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
 *  Links related to this Bundle.
 *
 *  A series of links that provide context to this bundle.
 */
public class BundleLink: BackboneElement {
	override public class var resourceName: String {
		get { return "BundleLink" }
	}
	
	/// http://www.iana.org/assignments/link-relations/link-relations.xhtml.
	public var relation: String?
	
	/// Reference details for the link.
	public var url: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(relation: String, url: NSURL) {
		self.init(json: nil)
		self.relation = relation
		self.url = url
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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

