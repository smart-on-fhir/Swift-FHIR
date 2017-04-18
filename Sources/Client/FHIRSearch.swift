//
//  FHIRSearch.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 7/10/14.
//  2014, SMART Platforms.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
public typealias FHIRSearchBundleErrorCallback = ((Models.Bundle?, FHIRError?) -> Void)
#else
public typealias FHIRSearchBundleErrorCallback = ((Bundle?, FHIRError?) -> Void)
#endif


/**
	Instances of this class can perform searches on a server.

	TODO: needs a refresh!!

	Searches are instantiated from MongoDB-like query constructs, like:

	    let srch = Patient.search(["address": "Boston", "gender": "male", "given": ["$exact": "Willis"]])

	Then srch.perform() will run the following URL query against the server:

	    "Patient?address=Boston&gender=male&given:exact=Willis"
 */
open class FHIRSearch
{
	/// Search must define a resource type to which the search is applied.
	open var profileType: Resource.Type?
	
	/// The query construct used to describe the search
	let query: FHIRSearchConstruct
	
	/// The sorting to request, in FHIR-format ("family,-birthdate").
	open var sort: String?
	
	/// The number of results to return per page; leave nil to let the server decide.
	open var pageCount: Int?
	
	/// The URL to retrieve the next page of results from; nil if there are no more results.
	var nextPageURL: URL?
	
	var busy = false
	
	/// Returns true if there are more search results to be fetched.
	open var hasMore: Bool {
		return (nil != nextPageURL)
	}
	
	
	/** Designated initializer. */
	public init(query: Any) {
		self.query = FHIRSearchConstruct(construct: query)
	}
	
	/** Convenience initializer. */
	public convenience init(type: Resource.Type, query: Any) {
		self.init(query: query)
		profileType = type
	}
	
	
	// MARK: - Running Search
	
	func reset() {
		nextPageURL = nil
	}
	
	/**
		Creates the relative server path and query URL string.
	 */
	open func construct() -> String {
		var extra = [FHIRURLParam]()
		if let count = pageCount {
			extra.append(FHIRURLParam(name: "_count", value: "\(count)"))
		}
		if let sort = sort {
			extra.append(FHIRURLParam(name: "_sort", value: sort))
		}
		
		// expand
		let qry = query.expand(extra)
		if let type = profileType {
			if qry.characters.count > 0 {
				return "\(type.resourceType)?\(qry)"
			}
			return type.resourceType
		}
		if qry.characters.count > 0 {
			return "?\(qry)"
		}
		return ""
	}
	
	/**
		Performs a GET on the server after constructing the query URL, returning an error or a bundle resource with the
		callback.
	
		Calling this method will always restart search, not fetch subsequent pages.
	
		- parameter server: The FHIRServer instance on which to perform the search
		- parameter callback: The callback, receives the response Bundle or an Error message describing what went wrong
	 */
	open func perform(_ server: FHIRServer, callback: @escaping FHIRSearchBundleErrorCallback) {
		if nil == profileType {
			callback(nil, FHIRError.searchResourceTypeNotDefined)
			return
		}
		
		reset()
		performSearch(server, queryPath: construct(), callback: callback)
	}
	
	/**
		Attempts to retrieve the next page of search results. If there are none, the callback is called immediately
		with no bundle and no error.
	
		- parameter server: The FHIRServer instance on which to perform the search
		- parameter callback: The callback, receives the response Bundle or an Error message describing what went wrong
	 */
	open func nextPage(_ server: FHIRServer, callback: @escaping FHIRSearchBundleErrorCallback) {
		if let next = nextPageURL?.absoluteString {
			performSearch(server, queryPath: next, callback: callback)
		}
		else {
			callback(nil, nil)
		}
	}
	
	func performSearch(_ server: FHIRServer, queryPath: String, callback: @escaping FHIRSearchBundleErrorCallback) {
		if busy {
			callback(nil, nil)
			return
		}
		guard let handler = server.handlerForRequest(withMethod: .GET, resource: nil) else {
			callback(nil, FHIRError.noRequestHandlerAvailable(.GET))
			return
		}
		
		busy = true
		server.performRequest(against: queryPath, handler: handler) { response in
			self.busy = false
			
			if let error = response.error {
				callback(nil, error)
			}
			else {
				do {
					let bundle = try response.responseResource(ofType: Bundle.self)
					bundle._server = server
					if let entries = bundle.entry {
						for entry in entries {
							entry.resource?._server = server		// workaround for when "Bundle" gets deallocated
						}
					}
					
					// is there more?
					self.nextPageURL = nil
					if let links = bundle.link {
						for link in links {
							if "next" == link.relation {
								self.nextPageURL = link.url?.url
								break
							}
						}
					}
					
					callback(bundle, nil)
				}
				catch let error {
					callback(nil, error.asFHIRError)
				}
			}
		}
	}
}


/**
Instances of this struct represent URL query parameters.
*/
struct FHIRURLParam {
	
	/// Parameter name
	let name: String
	
	/// Parameter value
	let value: String
	
	
	/** Returns a "key=value" string representing this parameter, taking care of encoding the string as URL query part. */
	func asParameter() -> String {
		let encoded = value.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) ?? value
		return "\(name)=\(encoded)"
	}
}


/**
	This class is used to create FHIRURLParam instances from FHIRSearchConstruct objects.
 */
class FHIRSearchParam: CustomStringConvertible
{
	var name: String?
	var isModifier = false
	var value: String?
	weak var parent: FHIRSearchParam?
	var children: [FHIRSearchParam]? {
		didSet {
			if let chldrn = children {
				for child in chldrn {
					child.parent = self
				}
			}
		}
	}
	var description: String {
		return "<FHIRSearchParam> \(String(describing: name)) [parent \(String(describing: parent?.description)) and \(nil != children ? (children!).count : 0) children]"
	}
	
	init(name: String, parent: FHIRSearchParam?) {
		self.name = name
		self.parent = parent
	}
	
	init(value: String, parent: FHIRSearchParam?) {
		self.value = value
		self.parent = parent
	}
	
	/** Instantiate from any object, delegating to FHIRSearchConstruct to figure out what the object means. */
	class func from(_ any: Any, parent: FHIRSearchParam?) -> [FHIRSearchParam] {
		if let str = any as? String {
			return [FHIRSearchParam(value: str, parent: parent)]
		}
		if let bol = any as? Bool {
			return [FHIRSearchParam(value: bol ? "true" : "false", parent: parent)]
		}
		
		let construct = FHIRSearchConstruct(construct: any)
		return construct.prepare(parent)
	}
	
	/** Recursively determine the parameter name, looking at all parent objects. */
	func parentName() -> String? {
		var full = name
		if let prnt = parent?.parentName() {
			if nil != full {
				if isModifier {
					full = "\(prnt)\(full!)"
				}
				else {
					full = "\(prnt).\(full!)"
				}
			}
			else {
				full = prnt
			}
		}
		return full
	}
	
	/** Expand all children to instantiate FHIRURLParam objects. */
	func expand() -> [FHIRURLParam] {
		if let chldren = children {
			var arr = [FHIRURLParam]()
			for child in chldren {
				arr.append(contentsOf: child.expand())
			}
			return arr
		}
		else if let val = value {
			return [FHIRURLParam(name: parentName() ?? "", value: val)]
		}
		return []
	}
}


struct FHIRSearchConstruct
{
	static var handlers: [FHIRSearchConstructHandler] = [
		FHIRSearchConstructAndHandler(),
		FHIRSearchConstructOrHandler(),
		FHIRSearchConstructModifierHandler(),
		FHIRSearchConstructOperatorHandler(),
		FHIRSearchConstructTypeHandler(),
	]
	
	static func handlerFor(_ key: String) -> FHIRSearchConstructHandler? {
		for handler in self.handlers {
			if handler.handles(key) {
				return handler
			}
		}
		return nil
	}
	
	
	let construct: Any
	
	init(construct: Any) {
		self.construct = construct
	}
	
	func expand(_ extraArguments: [FHIRURLParam]? = nil) -> String {
		var arr = [String]()
		for params in self.prepare(nil) {
			for param in params.expand() {
				arr.append(param.asParameter())
			}
		}
		if let extras = extraArguments {
			for extra in extras {
				arr.append(extra.asParameter())
			}
		}
		
		return arr.joined(separator: "&")
	}
	
	func prepare(_ parent: FHIRSearchParam?) -> [FHIRSearchParam] {
		var arr = [FHIRSearchParam]()
		if let myarr = construct as? [Any] {
			for any in myarr {
				let sub = FHIRSearchConstruct(construct: any)
				arr.append(contentsOf: sub.prepare(nil))
			}
			return arr
		}
		
		if let dict = construct as? [String: Any] {
			for (key, val) in dict {
				//println("-> \(key): \(val)")
				let param = FHIRSearchParam(name: key, parent: parent)
				
				// special handling?
				if let handler = type(of: self).handlerFor(key) {
					handler.handle(param, value: val)
				}
					
				// this is a sub-structure, expand
				else if let dict = val as? [String: Any] {
					let construct = FHIRSearchConstruct(construct: dict)
					param.children = construct.prepare(param)
				}
					
				// a string
				else if let str = val as? String {
					param.value = str
				}
				else {
					fhir_warn("no idea what to do with \(key): \(val), ignoring")
				}
				arr.append(param)
			}
			return arr
		}
		
		fhir_warn("not sure what to do with \"\(construct)\"")
		return arr
	}
}


// MARK: - Special Handlers

protocol FHIRSearchConstructHandler
{
	func handles(_ key: String) -> Bool
	func handle(_ param: FHIRSearchParam, value: Any)
}


struct FHIRSearchConstructAndHandler: FHIRSearchConstructHandler
{
	func handles(_ key: String) -> Bool {
		return ("$and" == key)
	}
	
	func handle(_ param: FHIRSearchParam, value: Any) {
		if let arr = value as? [Any] {
			param.name = nil
			var ret = [FHIRSearchParam]()
			for obj in arr {
				ret.append(contentsOf: FHIRSearchParam.from(obj, parent: param.parent))
			}
			
			if nil != param.children {
				param.children!.append(contentsOf: ret)
			}
			else {
				param.children = ret
			}
		}
		else {
			fhir_warn("must supply an array of objects to an $and modifier")
		}
	}
}


struct FHIRSearchConstructOrHandler: FHIRSearchConstructHandler
{
	func handles(_ key: String) -> Bool {
		return ("$or" == key)
	}
	
	func handle(_ param: FHIRSearchParam, value: Any) {
		if let arr = value as? [Any] {
			var strs = [String]()
			for obj in arr {
				if let str = obj as? String {
					strs.append(str)
				}
				else {
					fhir_warn("what do I do with \(obj)?")
				}
			}
			param.name = nil
			param.value = strs.joined(separator: ",")
		}
		else {
			fhir_warn("must supply an array of objects to an $or modifier")
		}
	}
}


struct FHIRSearchConstructModifierHandler: FHIRSearchConstructHandler
{
	static let map = [
//		"$asc": ":asc",
//		"$desc": ":desc",
		"$exact": ":exact",
		"$missing": ":missing",
		"$null": ":missing",
		"$text": ":text",
	]
	
	func handles(_ key: String) -> Bool {
		return FHIRSearchConstructModifierHandler.map.keys.contains(key)
	}
	
	func handle(_ param: FHIRSearchParam, value: Any) {
		if let modifier = FHIRSearchConstructModifierHandler.map[param.name ?? ""] {
			param.name = modifier
			param.isModifier = true
			param.children = FHIRSearchParam.from(value, parent: param)
		}
		else {
			fhir_warn("unknown modifier \(String(describing: param.name))")
		}
	}
}


/**
Handles operators applied to search parameters, such as "greater than" ($gt).

See http://build.fhir.org/search.html#number
*/
struct FHIRSearchConstructOperatorHandler: FHIRSearchConstructHandler {
	
	static let map = [
		"$gt": "gt",
		"$lt": "lt",
		"$le": "le",
		"$ge": "ge",
		"$ne": "ne",
	]
	
	func handles(_ key: String) -> Bool {
		return FHIRSearchConstructOperatorHandler.map.keys.contains(key)
	}
	
	func handle(_ param: FHIRSearchParam, value: Any) {
		if let modifier = FHIRSearchConstructOperatorHandler.map[param.name!] {
			if let str = value as? String {
				param.name = nil
				param.value = "\(modifier)\(str)"
			}
		}
		else {
			fhir_warn("unknown operator \(String(describing: param.name)) for \(value)")
		}
	}
}


struct FHIRSearchConstructTypeHandler: FHIRSearchConstructHandler
{
	func handles(_ key: String) -> Bool {
		return ("$type" == key)
	}
	
	func handle(_ param: FHIRSearchParam, value: Any) {
		if let type = value as? String {
			if let parent = param.parent {
				parent.name = (parent.name ?? "") + ":\(type)"
			}
			else {
				fhir_warn("must have a parent parameter to use $type")
			}
		}
		else {
			fhir_warn("must supply a String to a $type modifier, got \(value)")
		}
	}
}

