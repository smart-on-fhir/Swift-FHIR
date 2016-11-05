//
//  Organization.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/Organization) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
A grouping of people or organizations with a common purpose.

A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of
collective action.  Includes companies, institutions, corporations, departments, community groups, healthcare practice
groups, etc.
*/
open class Organization: DomainResource {
	override open class var resourceType: String {
		get { return "Organization" }
	}
	
	/// Whether the organization's record is still in active use.
	public var active: Bool?
	
	/// An address for the organization.
	public var address: [Address]?
	
	/// A list of alternate names that the organization is known as, or was known as in the past.
	public var alias: [String]?
	
	/// Contact for the organization for a certain purpose.
	public var contact: [OrganizationContact]?
	
	/// Technical endpoints providing access to services operated for the organization.
	public var endpoint: [Reference]?
	
	/// Identifies this organization  across multiple systems.
	public var identifier: [Identifier]?
	
	/// Name used for the organization.
	public var name: String?
	
	/// The organization of which this organization forms a part.
	public var partOf: Reference?
	
	/// A contact detail for the organization.
	public var telecom: [ContactPoint]?
	
	/// Kind of organization.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["active"] {
			presentKeys.insert("active")
			if let val = exist as? Bool {
				self.active = val
			}
			else {
				errors.append(FHIRValidationError(key: "active", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["address"] {
			presentKeys.insert("address")
			if let val = exist as? [FHIRJSON] {
				do {
					self.address = try Address.instantiate(fromArray: val, owner: self) as? [Address]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "address"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "address", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["alias"] {
			presentKeys.insert("alias")
			if let val = exist as? [String] {
				self.alias = val
			}
			else {
				errors.append(FHIRValidationError(key: "alias", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contact = try OrganizationContact.instantiate(fromArray: val, owner: self) as? [OrganizationContact]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["endpoint"] {
			presentKeys.insert("endpoint")
			if let val = exist as? [FHIRJSON] {
				do {
					self.endpoint = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "endpoint"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "endpoint", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["partOf"] {
			presentKeys.insert("partOf")
			if let val = exist as? FHIRJSON {
				do {
					self.partOf = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "partOf"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "partOf", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["telecom"] {
			presentKeys.insert("telecom")
			if let val = exist as? [FHIRJSON] {
				do {
					self.telecom = try ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "telecom"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "telecom", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let active = self.active {
			json["active"] = active.asJSON()
		}
		if let address = self.address {
			json["address"] = address.map() { $0.asJSON(errors: &errors) }
		}
		if let alias = self.alias {
			json["alias"] = alias.map() { $0.asJSON() }
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let endpoint = self.endpoint {
			json["endpoint"] = endpoint.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let partOf = self.partOf {
			json["partOf"] = partOf.asJSON(errors: &errors)
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Contact for the organization for a certain purpose.
*/
open class OrganizationContact: BackboneElement {
	override open class var resourceType: String {
		get { return "OrganizationContact" }
	}
	
	/// Visiting or postal addresses for the contact.
	public var address: Address?
	
	/// A name associated with the contact.
	public var name: HumanName?
	
	/// The type of contact.
	public var purpose: CodeableConcept?
	
	/// Contact details (telephone, email, etc.)  for a contact.
	public var telecom: [ContactPoint]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["address"] {
			presentKeys.insert("address")
			if let val = exist as? FHIRJSON {
				do {
					self.address = try Address(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "address"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "address", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? FHIRJSON {
				do {
					self.name = try HumanName(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "name"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["purpose"] {
			presentKeys.insert("purpose")
			if let val = exist as? FHIRJSON {
				do {
					self.purpose = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "purpose"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "purpose", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["telecom"] {
			presentKeys.insert("telecom")
			if let val = exist as? [FHIRJSON] {
				do {
					self.telecom = try ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "telecom"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "telecom", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let address = self.address {
			json["address"] = address.asJSON(errors: &errors)
		}
		if let name = self.name {
			json["name"] = name.asJSON(errors: &errors)
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON(errors: &errors)
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}

