//
//  SearchParameter.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/SearchParameter) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Search Parameter for a resource.

A search parameter that defines a named search item that can be used to search/filter on a resource.
*/
open class SearchParameter: DomainResource {
	override open class var resourceType: String {
		get { return "SearchParameter" }
	}
	
	/// The resource type(s) this search parameter applies to.
	public var base: [FHIRString]?
	
	/// Chained names supported.
	public var chain: [FHIRString]?
	
	/// Code used in URL.
	public var code: FHIRString?
	
	/// Comparators supported for the search parameter.
	public var comparator: [SearchComparator]?
	
	/// For Composite resources to define the parts.
	public var component: [SearchParameterComponent]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Original Definition for the search parameter.
	public var derivedFrom: URL?
	
	/// Natural language description of the search parameter.
	public var description_fhir: FHIRString?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// FluentPath expression that extracts the values.
	public var expression: FHIRString?
	
	/// Intended jurisdiction for search parameter (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// A modifier supported for the search parameter.
	public var modifier: [SearchModifierCode]?
	
	/// Name for this search parameter (Computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this search parameter is defined.
	public var purpose: FHIRString?
	
	/// The status of this search parameter. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Types of resource (if a resource reference).
	public var target: [FHIRString]?
	
	/// The type of value a search parameter refers to, and how the content is interpreted.
	public var type: SearchParamType?
	
	/// Logical uri to reference this search parameter (globally unique).
	public var url: URL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the search parameter.
	public var version: FHIRString?
	
	/// XPath that extracts the values.
	public var xpath: FHIRString?
	
	/// How the search parameter relates to the set of elements returned by evaluating the xpath query.
	public var xpathUsage: XPathUsageType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(base: [FHIRString], code: FHIRString, description_fhir: FHIRString, name: FHIRString, status: PublicationStatus, type: SearchParamType, url: URL) {
		self.init()
		self.base = base
		self.code = code
		self.description_fhir = description_fhir
		self.name = name
		self.status = status
		self.type = type
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["base"] {
			presentKeys.insert("base")
			if let val = exist as? [String] {
				self.base = FHIRString.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "base", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "base"))
		}
		if let exist = json["chain"] {
			presentKeys.insert("chain")
			if let val = exist as? [String] {
				self.chain = FHIRString.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "chain", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				self.code = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["comparator"] {
			presentKeys.insert("comparator")
			if let val = exist as? [String] { var i = -1
				self.comparator = val.map() { i += 1
					if let enumval = SearchComparator(rawValue: $0) { return enumval }
					errors.append(FHIRValidationError(key: "comparator.\(i)", problem: "the value “\(val)” is not valid"))
					return nil
				}.filter() { nil != $0 }.map() { $0! }
			}
			else {
				errors.append(FHIRValidationError(key: "comparator", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["component"] {
			presentKeys.insert("component")
			if let val = exist as? [FHIRJSON] {
				do {
					self.component = try SearchParameterComponent.instantiate(fromArray: val, owner: self) as? [SearchParameterComponent]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "component"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "component", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contact = try ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["derivedFrom"] {
			presentKeys.insert("derivedFrom")
			if let val = exist as? String {
				self.derivedFrom = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "derivedFrom", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "description"))
		}
		if let exist = json["experimental"] {
			presentKeys.insert("experimental")
			if let val = exist as? Bool {
				self.experimental = val
			}
			else {
				errors.append(FHIRValidationError(key: "experimental", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["expression"] {
			presentKeys.insert("expression")
			if let val = exist as? String {
				self.expression = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "expression", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["jurisdiction"] {
			presentKeys.insert("jurisdiction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.jurisdiction = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "jurisdiction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["modifier"] {
			presentKeys.insert("modifier")
			if let val = exist as? [String] { var i = -1
				self.modifier = val.map() { i += 1
					if let enumval = SearchModifierCode(rawValue: $0) { return enumval }
					errors.append(FHIRValidationError(key: "modifier.\(i)", problem: "the value “\(val)” is not valid"))
					return nil
				}.filter() { nil != $0 }.map() { $0! }
			}
			else {
				errors.append(FHIRValidationError(key: "modifier", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let exist = json["publisher"] {
			presentKeys.insert("publisher")
			if let val = exist as? String {
				self.publisher = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "publisher", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["purpose"] {
			presentKeys.insert("purpose")
			if let val = exist as? String {
				self.purpose = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "purpose", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = PublicationStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["target"] {
			presentKeys.insert("target")
			if let val = exist as? [String] {
				self.target = FHIRString.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "target", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = SearchParamType(rawValue: val) {
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
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "url"))
		}
		if let exist = json["useContext"] {
			presentKeys.insert("useContext")
			if let val = exist as? [FHIRJSON] {
				do {
					self.useContext = try UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "useContext"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["version"] {
			presentKeys.insert("version")
			if let val = exist as? String {
				self.version = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["xpath"] {
			presentKeys.insert("xpath")
			if let val = exist as? String {
				self.xpath = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "xpath", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["xpathUsage"] {
			presentKeys.insert("xpathUsage")
			if let val = exist as? String {
				if let enumval = XPathUsageType(rawValue: val) {
					self.xpathUsage = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "xpathUsage", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "xpathUsage", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let base = self.base {
			json["base"] = base.map() { $0.asJSON() }
		}
		else {
			errors.append(FHIRValidationError(missing: "base"))
		}
		if let chain = self.chain {
			json["chain"] = chain.map() { $0.asJSON() }
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let comparator = self.comparator {
			json["comparator"] = comparator.map() { $0.rawValue }
		}
		if let component = self.component {
			json["component"] = component.map() { $0.asJSON(errors: &errors) }
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let derivedFrom = self.derivedFrom {
			json["derivedFrom"] = derivedFrom.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "description_fhir"))
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let expression = self.expression {
			json["expression"] = expression.asJSON()
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let modifier = self.modifier {
			json["modifier"] = modifier.map() { $0.rawValue }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let target = self.target {
			json["target"] = target.map() { $0.asJSON() }
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "url"))
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON(errors: &errors) }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		if let xpath = self.xpath {
			json["xpath"] = xpath.asJSON()
		}
		if let xpathUsage = self.xpathUsage {
			json["xpathUsage"] = xpathUsage.rawValue
		}
		
		return json
	}
}


/**
For Composite resources to define the parts.

Used to define the parts of a composite search parameter.
*/
open class SearchParameterComponent: BackboneElement {
	override open class var resourceType: String {
		get { return "SearchParameterComponent" }
	}
	
	/// Defines how the part works.
	public var definition: Reference?
	
	/// Subexpression relative to main expression.
	public var expression: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(definition: Reference, expression: FHIRString) {
		self.init()
		self.definition = definition
		self.expression = expression
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["definition"] {
			presentKeys.insert("definition")
			if let val = exist as? FHIRJSON {
				do {
					self.definition = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "definition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "definition", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "definition"))
		}
		if let exist = json["expression"] {
			presentKeys.insert("expression")
			if let val = exist as? String {
				self.expression = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "expression", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "expression"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let definition = self.definition {
			json["definition"] = definition.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "definition"))
		}
		if let expression = self.expression {
			json["expression"] = expression.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "expression"))
		}
		
		return json
	}
}

