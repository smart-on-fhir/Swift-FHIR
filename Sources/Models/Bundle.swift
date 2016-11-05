//
//  Bundle.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/Bundle) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
Contains a collection of resources.

A container for a collection of resources.
*/
open class Bundle: Resource {
	override open class var resourceType: String {
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
	
	/// Indicates the purpose of this bundle- how it was intended to be used.
	public var type: BundleType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: BundleType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["entry"] {
			presentKeys.insert("entry")
			if let val = exist as? [FHIRJSON] {
				do {
					self.entry = try BundleEntry.instantiate(fromArray: val, owner: self) as? [BundleEntry]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "entry"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "entry", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["link"] {
			presentKeys.insert("link")
			if let val = exist as? [FHIRJSON] {
				do {
					self.link = try BundleLink.instantiate(fromArray: val, owner: self) as? [BundleLink]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "link"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "link", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["signature"] {
			presentKeys.insert("signature")
			if let val = exist as? FHIRJSON {
				do {
					self.signature = try Signature(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "signature"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "signature", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["total"] {
			presentKeys.insert("total")
			if let val = exist as? UInt {
				self.total = val
			}
			else {
				errors.append(FHIRValidationError(key: "total", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = BundleType(rawValue: val) {
					self.type = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "type", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let entry = self.entry {
			json["entry"] = entry.map() { $0.asJSON(errors: &errors) }
		}
		if let link = self.link {
			json["link"] = link.map() { $0.asJSON(errors: &errors) }
		}
		if let signature = self.signature {
			json["signature"] = signature.asJSON(errors: &errors)
		}
		if let total = self.total {
			json["total"] = total.asJSON()
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		
		return json
	}
}


/**
Entry in the bundle - will have a resource, or information.

An entry in a bundle resource - will either contain a resource, or information about a resource (transactions and
history only).
*/
open class BundleEntry: BackboneElement {
	override open class var resourceType: String {
		get { return "BundleEntry" }
	}
	
	/// Absolute URL for resource (server address, or UUID/OID).
	public var fullUrl: URL?
	
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["fullUrl"] {
			presentKeys.insert("fullUrl")
			if let val = exist as? String {
				self.fullUrl = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "fullUrl", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["link"] {
			presentKeys.insert("link")
			if let val = exist as? [FHIRJSON] {
				do {
					self.link = try BundleLink.instantiate(fromArray: val, owner: self) as? [BundleLink]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "link"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "link", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["request"] {
			presentKeys.insert("request")
			if let val = exist as? FHIRJSON {
				do {
					self.request = try BundleEntryRequest(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "request"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "request", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["resource"] {
			presentKeys.insert("resource")
			if let val = exist as? FHIRJSON {
				do {     
					self.resource = try Resource.instantiate(from: val, owner: self) as? Resource
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "resource"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "resource", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["response"] {
			presentKeys.insert("response")
			if let val = exist as? FHIRJSON {
				do {
					self.response = try BundleEntryResponse(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "response"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "response", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["search"] {
			presentKeys.insert("search")
			if let val = exist as? FHIRJSON {
				do {
					self.search = try BundleEntrySearch(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "search"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "search", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let fullUrl = self.fullUrl {
			json["fullUrl"] = fullUrl.asJSON()
		}
		if let link = self.link {
			json["link"] = link.map() { $0.asJSON(errors: &errors) }
		}
		if let request = self.request {
			json["request"] = request.asJSON(errors: &errors)
		}
		if let resource = self.resource {
			json["resource"] = resource.asJSON(errors: &errors)
		}
		if let response = self.response {
			json["response"] = response.asJSON(errors: &errors)
		}
		if let search = self.search {
			json["search"] = search.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Transaction Related Information.

Additional information about how this entry should be processed as part of a transaction.
*/
open class BundleEntryRequest: BackboneElement {
	override open class var resourceType: String {
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
	
	/// The HTTP verb for this entry in either a change history, or a transaction/ transaction response.
	public var method: HTTPVerb?
	
	/// URL for HTTP equivalent of this entry.
	public var url: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(method: HTTPVerb, url: URL) {
		self.init()
		self.method = method
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["ifMatch"] {
			presentKeys.insert("ifMatch")
			if let val = exist as? String {
				self.ifMatch = val
			}
			else {
				errors.append(FHIRValidationError(key: "ifMatch", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["ifModifiedSince"] {
			presentKeys.insert("ifModifiedSince")
			if let val = exist as? String {
				self.ifModifiedSince = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "ifModifiedSince", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["ifNoneExist"] {
			presentKeys.insert("ifNoneExist")
			if let val = exist as? String {
				self.ifNoneExist = val
			}
			else {
				errors.append(FHIRValidationError(key: "ifNoneExist", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["ifNoneMatch"] {
			presentKeys.insert("ifNoneMatch")
			if let val = exist as? String {
				self.ifNoneMatch = val
			}
			else {
				errors.append(FHIRValidationError(key: "ifNoneMatch", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["method"] {
			presentKeys.insert("method")
			if let val = exist as? String {
				if let enumval = HTTPVerb(rawValue: val) {
					self.method = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "method", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "method", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "method"))
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "url"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
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
			json["method"] = method.rawValue
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}


/**
Transaction Related Information.

Additional information about how this entry should be processed as part of a transaction.
*/
open class BundleEntryResponse: BackboneElement {
	override open class var resourceType: String {
		get { return "BundleEntryResponse" }
	}
	
	/// The etag for the resource (if relevant).
	public var etag: String?
	
	/// Server's date time modified.
	public var lastModified: Instant?
	
	/// The location, if the operation returns a location.
	public var location: URL?
	
	/// OperationOutcome with hints and warnings (for batch/transaction).
	public var outcome: Resource?
	
	/// Status response code (text optional).
	public var status: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["etag"] {
			presentKeys.insert("etag")
			if let val = exist as? String {
				self.etag = val
			}
			else {
				errors.append(FHIRValidationError(key: "etag", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["lastModified"] {
			presentKeys.insert("lastModified")
			if let val = exist as? String {
				self.lastModified = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "lastModified", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["location"] {
			presentKeys.insert("location")
			if let val = exist as? String {
				self.location = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "location", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["outcome"] {
			presentKeys.insert("outcome")
			if let val = exist as? FHIRJSON {
				do {     
					self.outcome = try Resource.instantiate(from: val, owner: self) as? Resource
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "outcome"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "outcome", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
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
			json["outcome"] = outcome.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}


/**
Search related information.

Information about the search process that lead to the creation of this entry.
*/
open class BundleEntrySearch: BackboneElement {
	override open class var resourceType: String {
		get { return "BundleEntrySearch" }
	}
	
	/// Why this entry is in the result set - whether it's included as a match or because of an _include requirement.
	public var mode: SearchEntryMode?
	
	/// Search ranking (between 0 and 1).
	public var score: NSDecimalNumber?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["mode"] {
			presentKeys.insert("mode")
			if let val = exist as? String {
				if let enumval = SearchEntryMode(rawValue: val) {
					self.mode = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "mode", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "mode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["score"] {
			presentKeys.insert("score")
			if let val = exist as? NSNumber {
				self.score = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "score", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let mode = self.mode {
			json["mode"] = mode.rawValue
		}
		if let score = self.score {
			json["score"] = score.asJSON()
		}
		
		return json
	}
}


/**
Links related to this Bundle.

A series of links that provide context to this bundle.
*/
open class BundleLink: BackboneElement {
	override open class var resourceType: String {
		get { return "BundleLink" }
	}
	
	/// http://www.iana.org/assignments/link-relations/link-relations.xhtml.
	public var relation: String?
	
	/// Reference details for the link.
	public var url: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(relation: String, url: URL) {
		self.init()
		self.relation = relation
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["relation"] {
			presentKeys.insert("relation")
			if let val = exist as? String {
				self.relation = val
			}
			else {
				errors.append(FHIRValidationError(key: "relation", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "relation"))
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "url"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let relation = self.relation {
			json["relation"] = relation.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}

