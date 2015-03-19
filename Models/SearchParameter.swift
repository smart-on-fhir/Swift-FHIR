//
//  SearchParameter.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/SearchParameter) on 2015-03-19.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Search Parameter for a resource.
 *
 *  A Search Parameter that defines a named search item that can be used to search/filter on a resource.
 */
public class SearchParameter: DomainResource
{
	override public class var resourceName: String {
		get { return "SearchParameter" }
	}
	
	/// The resource type this search parameter applies to
	public var base: String?
	
	/// Contact details of the publisher
	public var contact: [SearchParameterContact]?
	
	/// Publication Date(/time)
	public var date: DateTime?
	
	/// Documentation for  search parameter
	public var description_fhir: String?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// Name of search parameter
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Why this search parameter is defined
	public var requirements: String?
	
	/// draft | active | retired
	public var status: String?
	
	/// Types of resource (if a resource reference)
	public var target: [String]?
	
	/// number | date | string | token | reference | composite | quantity | uri
	public var type: String?
	
	/// Literal URL used to reference this search parameter
	public var url: NSURL?
	
	/// XPath that extracts the values
	public var xpath: String?
	
	public convenience init(base: String?, description_fhir: String?, name: String?, type: String?, url: NSURL?) {
		self.init(json: nil)
		if nil != base {
			self.base = base
		}
		if nil != description_fhir {
			self.description_fhir = description_fhir
		}
		if nil != name {
			self.name = name
		}
		if nil != type {
			self.type = type
		}
		if nil != url {
			self.url = url
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["base"] as? String {
				self.base = val
			}
			if let val = js["contact"] as? [JSONDictionary] {
				self.contact = SearchParameterContact.from(val, owner: self) as? [SearchParameterContact]
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["experimental"] as? Bool {
				self.experimental = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["requirements"] as? String {
				self.requirements = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["target"] as? [String] {
				self.target = val
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
			}
			if let val = js["xpath"] as? String {
				self.xpath = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let base = self.base {
			json["base"] = base.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = SearchParameterContact.asJSONArray(contact)
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let requirements = self.requirements {
			json["requirements"] = requirements.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let target = self.target {
			var arr = [AnyObject]()
			for val in target {
				arr.append(val.asJSON())
			}
			json["target"] = arr
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let xpath = self.xpath {
			json["xpath"] = xpath.asJSON()
		}
		
		return json
	}
}


/**
 *  Contact details of the publisher.
 *
 *  Contacts to assist a user in finding and communicating with the publisher.
 */
public class SearchParameterContact: FHIRElement
{
	override public class var resourceName: String {
		get { return "SearchParameterContact" }
	}
	
	/// Name of a individual to contact
	public var name: String?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["telecom"] as? [JSONDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}

