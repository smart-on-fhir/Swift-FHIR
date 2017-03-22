//
//  Bundle.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Bundle) on 2017-03-22.
//  2017, SMART Health IT.
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
	
	/// Persistent identifier for the bundle.
	public var identifier: Identifier?
	
	/// Links related to this Bundle.
	public var link: [BundleLink]?
	
	/// Digital Signature.
	public var signature: Signature?
	
	/// If search, the total number of matches.
	public var total: FHIRInteger?
	
	/// Indicates the purpose of this bundle - how it was intended to be used.
	public var type: BundleType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: BundleType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		entry = createInstances(of: BundleEntry.self, for: "entry", in: json, context: &instCtx, owner: self) ?? entry
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		link = createInstances(of: BundleLink.self, for: "link", in: json, context: &instCtx, owner: self) ?? link
		signature = createInstance(type: Signature.self, for: "signature", in: json, context: &instCtx, owner: self) ?? signature
		total = createInstance(type: FHIRInteger.self, for: "total", in: json, context: &instCtx, owner: self) ?? total
		type = createEnum(type: BundleType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "entry", using: self.entry, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "link", using: self.link, errors: &errors)
		self.signature?.decorate(json: &json, withKey: "signature", errors: &errors)
		self.total?.decorate(json: &json, withKey: "total", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
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
	public var fullUrl: FHIRURL?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		fullUrl = createInstance(type: FHIRURL.self, for: "fullUrl", in: json, context: &instCtx, owner: self) ?? fullUrl
		link = createInstances(of: BundleLink.self, for: "link", in: json, context: &instCtx, owner: self) ?? link
		request = createInstance(type: BundleEntryRequest.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		resource = createInstance(type: Resource.self, for: "resource", in: json, context: &instCtx, owner: self) ?? resource
		response = createInstance(type: BundleEntryResponse.self, for: "response", in: json, context: &instCtx, owner: self) ?? response
		search = createInstance(type: BundleEntrySearch.self, for: "search", in: json, context: &instCtx, owner: self) ?? search
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.fullUrl?.decorate(json: &json, withKey: "fullUrl", errors: &errors)
		arrayDecorate(json: &json, withKey: "link", using: self.link, errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.resource?.decorate(json: &json, withKey: "resource", errors: &errors)
		self.response?.decorate(json: &json, withKey: "response", errors: &errors)
		self.search?.decorate(json: &json, withKey: "search", errors: &errors)
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
	public var ifMatch: FHIRString?
	
	/// For managing update contention.
	public var ifModifiedSince: Instant?
	
	/// For conditional creates.
	public var ifNoneExist: FHIRString?
	
	/// For managing cache currency.
	public var ifNoneMatch: FHIRString?
	
	/// The HTTP verb for this entry in either a change history, or a transaction/ transaction response.
	public var method: HTTPVerb?
	
	/// URL for HTTP equivalent of this entry.
	public var url: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(method: HTTPVerb, url: FHIRURL) {
		self.init()
		self.method = method
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		ifMatch = createInstance(type: FHIRString.self, for: "ifMatch", in: json, context: &instCtx, owner: self) ?? ifMatch
		ifModifiedSince = createInstance(type: Instant.self, for: "ifModifiedSince", in: json, context: &instCtx, owner: self) ?? ifModifiedSince
		ifNoneExist = createInstance(type: FHIRString.self, for: "ifNoneExist", in: json, context: &instCtx, owner: self) ?? ifNoneExist
		ifNoneMatch = createInstance(type: FHIRString.self, for: "ifNoneMatch", in: json, context: &instCtx, owner: self) ?? ifNoneMatch
		method = createEnum(type: HTTPVerb.self, for: "method", in: json, context: &instCtx) ?? method
		if nil == method && !instCtx.containsKey("method") {
			instCtx.addError(FHIRValidationError(missing: "method"))
		}
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		if nil == url && !instCtx.containsKey("url") {
			instCtx.addError(FHIRValidationError(missing: "url"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.ifMatch?.decorate(json: &json, withKey: "ifMatch", errors: &errors)
		self.ifModifiedSince?.decorate(json: &json, withKey: "ifModifiedSince", errors: &errors)
		self.ifNoneExist?.decorate(json: &json, withKey: "ifNoneExist", errors: &errors)
		self.ifNoneMatch?.decorate(json: &json, withKey: "ifNoneMatch", errors: &errors)
		self.method?.decorate(json: &json, withKey: "method", errors: &errors)
		if nil == self.method {
			errors.append(FHIRValidationError(missing: "method"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		if nil == self.url {
			errors.append(FHIRValidationError(missing: "url"))
		}
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
	public var etag: FHIRString?
	
	/// Server's date time modified.
	public var lastModified: Instant?
	
	/// The location, if the operation returns a location.
	public var location: FHIRURL?
	
	/// OperationOutcome with hints and warnings (for batch/transaction).
	public var outcome: Resource?
	
	/// Status response code (text optional).
	public var status: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: FHIRString) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		etag = createInstance(type: FHIRString.self, for: "etag", in: json, context: &instCtx, owner: self) ?? etag
		lastModified = createInstance(type: Instant.self, for: "lastModified", in: json, context: &instCtx, owner: self) ?? lastModified
		location = createInstance(type: FHIRURL.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		outcome = createInstance(type: Resource.self, for: "outcome", in: json, context: &instCtx, owner: self) ?? outcome
		status = createInstance(type: FHIRString.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.etag?.decorate(json: &json, withKey: "etag", errors: &errors)
		self.lastModified?.decorate(json: &json, withKey: "lastModified", errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
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
	public var score: FHIRDecimal?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		mode = createEnum(type: SearchEntryMode.self, for: "mode", in: json, context: &instCtx) ?? mode
		score = createInstance(type: FHIRDecimal.self, for: "score", in: json, context: &instCtx, owner: self) ?? score
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.mode?.decorate(json: &json, withKey: "mode", errors: &errors)
		self.score?.decorate(json: &json, withKey: "score", errors: &errors)
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
	
	/// See http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1.
	public var relation: FHIRString?
	
	/// Reference details for the link.
	public var url: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(relation: FHIRString, url: FHIRURL) {
		self.init()
		self.relation = relation
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		relation = createInstance(type: FHIRString.self, for: "relation", in: json, context: &instCtx, owner: self) ?? relation
		if nil == relation && !instCtx.containsKey("relation") {
			instCtx.addError(FHIRValidationError(missing: "relation"))
		}
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		if nil == url && !instCtx.containsKey("url") {
			instCtx.addError(FHIRValidationError(missing: "url"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.relation?.decorate(json: &json, withKey: "relation", errors: &errors)
		if nil == self.relation {
			errors.append(FHIRValidationError(missing: "relation"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		if nil == self.url {
			errors.append(FHIRValidationError(missing: "url"))
		}
	}
}

