//
//  Query.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A description of a query with a set of parameters.
 *
 *  Scope and Usage The resource is used to perform queries using messaging-based exchanges, and to perform
 *  asynchronous searches using the RESTful interface.
 */
class Query: FHIRResource
{
	override class var resourceName: String {
		get { return "Query" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: FHIRResource[]?
	
	/*! Links query and its response(s) */
	var identifier: NSURL?
	
	/*! Set of query parameters with values */
	var parameter: Extension[]?
	
	/*! If this is a response to a query */
	var response: QueryResponse?
	
	convenience init(identifier: NSURL?, parameter: Extension[]?) {
		self.init(json: nil)
		if identifier {
			self.identifier = identifier
		}
		if parameter {
			self.parameter = parameter
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? Array<NSDictionary> {
				self.contained = FHIRResource.from(val) as? FHIRResource[]
			}
			if let val = js["identifier"] as? String {
				self.identifier = NSURL(json: val)
			}
			if let val = js["parameter"] as? Array<NSDictionary> {
				self.parameter = Extension.from(val) as? Extension[]
			}
			if let val = js["response"] as? NSDictionary {
				self.response = QueryResponse(json: val)
			}
		}
		super.init(json: json)
	}
}


/*!
 *  If this is a response to a query.
 */
class QueryResponse: FHIRElement
{	
	/*! Links response to source query */
	var identifier: NSURL?
	
	/*! ok | limited | refused | error */
	var outcome: String?
	
	/*! Total number of matching records */
	var total: Int?
	
	/*! Parameters server used */
	var parameter: Extension[]?
	
	/*! To get first page (if paged) */
	var first: Extension[]?
	
	/*! To get previous page (if paged) */
	var previous: Extension[]?
	
	/*! To get next page (if paged) */
	var next: Extension[]?
	
	/*! To get last page (if paged) */
	var last: Extension[]?
	
	/*! Resources that are the results of the search */
	var reference: ResourceReference[]?
	
	convenience init(identifier: NSURL?, outcome: String?) {
		self.init(json: nil)
		if identifier {
			self.identifier = identifier
		}
		if outcome {
			self.outcome = outcome
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["identifier"] as? String {
				self.identifier = NSURL(json: val)
			}
			if let val = js["outcome"] as? String {
				self.outcome = val
			}
			if let val = js["total"] as? Int {
				self.total = val
			}
			if let val = js["parameter"] as? Array<NSDictionary> {
				self.parameter = Extension.from(val) as? Extension[]
			}
			if let val = js["first"] as? Array<NSDictionary> {
				self.first = Extension.from(val) as? Extension[]
			}
			if let val = js["previous"] as? Array<NSDictionary> {
				self.previous = Extension.from(val) as? Extension[]
			}
			if let val = js["next"] as? Array<NSDictionary> {
				self.next = Extension.from(val) as? Extension[]
			}
			if let val = js["last"] as? Array<NSDictionary> {
				self.last = Extension.from(val) as? Extension[]
			}
			if let val = js["reference"] as? Array<NSDictionary> {
				self.reference = ResourceReference.from(val) as? ResourceReference[]
			}
		}
		super.init(json: json)
	}
}
