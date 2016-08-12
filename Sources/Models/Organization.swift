//
//  Organization.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Organization) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A grouping of people or organizations with a common purpose.
 *
 *  A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some
 *  form of collective action.  Includes companies, institutions, corporations, departments, community groups,
 *  healthcare practice groups, etc.
 */
public class Organization: DomainResource {
	override public class var resourceName: String {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["active"] {
				presentKeys.insert("active")
				if let val = exist as? Bool {
					self.active = val
				}
				else {
					errors.append(FHIRJSONError(key: "active", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["address"] {
				presentKeys.insert("address")
				if let val = exist as? [FHIRJSON] {
					self.address = Address.from(val, owner: self) as? [Address]
				}
				else {
					errors.append(FHIRJSONError(key: "address", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["alias"] {
				presentKeys.insert("alias")
				if let val = exist as? [String] {
					self.alias = val
				}
				else {
					errors.append(FHIRJSONError(key: "alias", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = OrganizationContact.from(val, owner: self) as? [OrganizationContact]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["endpoint"] {
				presentKeys.insert("endpoint")
				if let val = exist as? [FHIRJSON] {
					self.endpoint = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "endpoint", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["partOf"] {
				presentKeys.insert("partOf")
				if let val = exist as? FHIRJSON {
					self.partOf = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "partOf", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let active = self.active {
			json["active"] = active.asJSON()
		}
		if let address = self.address {
			json["address"] = Address.asJSONArray(address)
		}
		if let alias = self.alias {
			var arr = [AnyObject]()
			for val in alias {
				arr.append(val.asJSON())
			}
			json["alias"] = arr
		}
		if let contact = self.contact {
			json["contact"] = OrganizationContact.asJSONArray(contact)
		}
		if let endpoint = self.endpoint {
			json["endpoint"] = Reference.asJSONArray(endpoint)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let partOf = self.partOf {
			json["partOf"] = partOf.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Contact for the organization for a certain purpose.
 */
public class OrganizationContact: BackboneElement {
	override public class var resourceName: String {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["address"] {
				presentKeys.insert("address")
				if let val = exist as? FHIRJSON {
					self.address = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "address", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? FHIRJSON {
					self.name = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["purpose"] {
				presentKeys.insert("purpose")
				if let val = exist as? FHIRJSON {
					self.purpose = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "purpose", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let address = self.address {
			json["address"] = address.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}

