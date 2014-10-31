//
//  Query.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (query.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A description of a query with a set of parameters.
 *
 *  Scope and Usage The resource is used to perform queries using messaging-based exchanges, and to perform asynchronous
 *  searches using the RESTful interface.
 */
public class Query: FHIRResource
{
	override public class var resourceName: String {
		get { return "Query" }
	}
	
	/// Links query and its response(s)
	public var identifier: NSURL?
	
	/// Set of query parameters with values
	public var parameter: [Extension]?
	
	/// If this is a response to a query
	public var response: QueryResponse?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	public convenience init(identifier: NSURL?, parameter: [Extension]?) {
		self.init(json: nil)
		if nil != identifier {
			self.identifier = identifier
		}
		if nil != parameter {
			self.parameter = parameter
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identifier"] as? String {
				self.identifier = NSURL(json: val)
			}
			if let val = js["parameter"] as? [NSDictionary] {
				self.parameter = Extension.from(val) as? [Extension]
			}
			if let val = js["response"] as? NSDictionary {
				self.response = QueryResponse(json: val)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
		}
	}
}


/**
 *  If this is a response to a query.
 */
public class QueryResponse: FHIRElement
{	
	/// To get first page (if paged)
	public var first: [Extension]?
	
	/// Links response to source query
	public var identifier: NSURL?
	
	/// To get last page (if paged)
	public var last: [Extension]?
	
	/// To get next page (if paged)
	public var next: [Extension]?
	
	/// ok | limited | refused | error
	public var outcome: String?
	
	/// Parameters server used
	public var parameter: [Extension]?
	
	/// To get previous page (if paged)
	public var previous: [Extension]?
	
	/// Resources that are the results of the search
	public var reference: [FHIRReference<FHIRResource>]?
	
	/// Total number of matching records
	public var total: Int?
	
	public convenience init(identifier: NSURL?, outcome: String?) {
		self.init(json: nil)
		if nil != identifier {
			self.identifier = identifier
		}
		if nil != outcome {
			self.outcome = outcome
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["first"] as? [NSDictionary] {
				self.first = Extension.from(val) as? [Extension]
			}
			if let val = js["identifier"] as? String {
				self.identifier = NSURL(json: val)
			}
			if let val = js["last"] as? [NSDictionary] {
				self.last = Extension.from(val) as? [Extension]
			}
			if let val = js["next"] as? [NSDictionary] {
				self.next = Extension.from(val) as? [Extension]
			}
			if let val = js["outcome"] as? String {
				self.outcome = val
			}
			if let val = js["parameter"] as? [NSDictionary] {
				self.parameter = Extension.from(val) as? [Extension]
			}
			if let val = js["previous"] as? [NSDictionary] {
				self.previous = Extension.from(val) as? [Extension]
			}
			if let val = js["reference"] as? [NSDictionary] {
				self.reference = FHIRReference.from(val, owner: self)
			}
			if let val = js["total"] as? Int {
				self.total = val
			}
		}
	}
}

