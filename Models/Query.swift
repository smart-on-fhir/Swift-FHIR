//
//  Query.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
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
	override var resourceName: String {
		get { return "Query" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Links query and its response(s) */
	var identifier: NSURL

	/*! Set of query parameters with values */
	var parameter: Extension[]

	/*! If this is a response to a query */
	var response: QueryResponse?

	init(identifier: NSURL, parameter: Extension[]) {
		self.identifier = identifier
		self.parameter = parameter
	}
}


/*!
 *  If this is a response to a query.
 */
class QueryResponse: FHIRElement
{
	/*! Links response to source query */
	var identifier: NSURL

	/*! ok | limited | refused | error */
	var outcome: String

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

	init(identifier: NSURL, outcome: String) {
		self.identifier = identifier
		self.outcome = outcome
	}
}
