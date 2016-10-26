//
//  SearchParameter.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/SearchParameter) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Search Parameter for a resource.
 *
 *  A search parameter that defines a named search item that can be used to search/filter on a resource.
 */
open class SearchParameter: DomainResource {
	override open class var resourceType: String {
		get { return "SearchParameter" }
	}
	
	/// The resource type this search parameter applies to.
	public var base: String?
	
	/// Code used in URL.
	public var code: String?
	
	/// For Composite resources to define the parts.
	public var component: [Reference]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the search parameter.
	public var description_fhir: String?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// FluentPath expression that extracts the values.
	public var expression: String?
	
	/// Intended jurisdiction for search parameter (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this search parameter (Computer friendly).
	public var name: String?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Why this search parameter is defined.
	public var purpose: String?
	
	/// draft | active | retired.
	public var status: String?
	
	/// Types of resource (if a resource reference).
	public var target: [String]?
	
	/// number | date | string | token | reference | composite | quantity | uri.
	public var type: String?
	
	/// Logical uri to reference this search parameter (globally unique).
	public var url: URL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the search parameter.
	public var version: String?
	
	/// XPath that extracts the values.
	public var xpath: String?
	
	/// normal | phonetic | nearby | distance | other.
	public var xpathUsage: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(base: String, code: String, description_fhir: String, name: String, status: String, type: String, url: URL) {
		self.init(json: nil)
		self.base = base
		self.code = code
		self.description_fhir = description_fhir
		self.name = name
		self.status = status
		self.type = type
		self.url = url
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["base"] {
				presentKeys.insert("base")
				if let val = exist as? String {
					self.base = val
				}
				else {
					errors.append(FHIRJSONError(key: "base", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "base"))
			}
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist = js["component"] {
				presentKeys.insert("component")
				if let val = exist as? [FHIRJSON] {
					self.component = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "component", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "description"))
			}
			if let exist = js["experimental"] {
				presentKeys.insert("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(FHIRJSONError(key: "experimental", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["expression"] {
				presentKeys.insert("expression")
				if let val = exist as? String {
					self.expression = val
				}
				else {
					errors.append(FHIRJSONError(key: "expression", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["jurisdiction"] {
				presentKeys.insert("jurisdiction")
				if let val = exist as? [FHIRJSON] {
					self.jurisdiction = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist = js["publisher"] {
				presentKeys.insert("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(FHIRJSONError(key: "publisher", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["purpose"] {
				presentKeys.insert("purpose")
				if let val = exist as? String {
					self.purpose = val
				}
				else {
					errors.append(FHIRJSONError(key: "purpose", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist = js["target"] {
				presentKeys.insert("target")
				if let val = exist as? [String] {
					self.target = val
				}
				else {
					errors.append(FHIRJSONError(key: "target", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "url"))
			}
			if let exist = js["useContext"] {
				presentKeys.insert("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				else {
					errors.append(FHIRJSONError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["xpath"] {
				presentKeys.insert("xpath")
				if let val = exist as? String {
					self.xpath = val
				}
				else {
					errors.append(FHIRJSONError(key: "xpath", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["xpathUsage"] {
				presentKeys.insert("xpathUsage")
				if let val = exist as? String {
					self.xpathUsage = val
				}
				else {
					errors.append(FHIRJSONError(key: "xpathUsage", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let base = self.base {
			json["base"] = base.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let component = self.component {
			json["component"] = component.map() { $0.asJSON() }
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON() }
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
		if let expression = self.expression {
			json["expression"] = expression.asJSON()
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON() }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let target = self.target {
			var arr = [Any]()
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
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON() }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		if let xpath = self.xpath {
			json["xpath"] = xpath.asJSON()
		}
		if let xpathUsage = self.xpathUsage {
			json["xpathUsage"] = xpathUsage.asJSON()
		}
		
		return json
	}
}

