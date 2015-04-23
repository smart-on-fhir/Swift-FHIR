//
//  SearchParameter.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/SearchParameter) on 2015-04-23.
//  2015, SMART Health IT.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["base"] {
				presentKeys.addObject("base")
				if let val = exist as? String {
					self.base = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"base\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"base\" but it is missing"))
			}
			if let exist: AnyObject = js["contact"] {
				presentKeys.addObject("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = SearchParameterContact.from(val, owner: self) as? [SearchParameterContact]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contact\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"description\" but it is missing"))
			}
			if let exist: AnyObject = js["experimental"] {
				presentKeys.addObject("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"experimental\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"name\" but it is missing"))
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.addObject("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"publisher\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["requirements"] {
				presentKeys.addObject("requirements")
				if let val = exist as? String {
					self.requirements = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"requirements\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.addObject("target")
				if let val = exist as? [String] {
					self.target = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"target\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.addObject("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"url\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"url\" but it is missing"))
			}
			if let exist: AnyObject = js["xpath"] {
				presentKeys.addObject("xpath")
				if let val = exist as? String {
					self.xpath = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"xpath\" to be `String`, but is \(exist.dynamicType)"))
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.addObject("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"telecom\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

