//
//  Organization.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Organization) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A grouping of people or organizations with a common purpose.
 *
 *  A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some
 *  form of collective action.  Includes companies, institutions, corporations, departments, community groups,
 *  healthcare practice groups, etc.
 */
public class Organization: DomainResource
{
	override public class var resourceName: String {
		get { return "Organization" }
	}
	
	/// Whether the organization's record is still in active use
	public var active: Bool?
	
	/// An address for the organization
	public var address: [Address]?
	
	/// Contact for the organization for a certain purpose
	public var contact: [OrganizationContact]?
	
	/// Identifies this organization  across multiple systems
	public var identifier: [Identifier]?
	
	/// Name used for the organization
	public var name: String?
	
	/// The organization of which this organization forms a part
	public var partOf: Reference?
	
	/// A contact detail for the organization
	public var telecom: [ContactPoint]?
	
	/// Kind of organization
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["active"] {
				presentKeys.addObject("active")
				if let val = exist as? Bool {
					self.active = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"active\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["address"] {
				presentKeys.addObject("address")
				if let val = exist as? [FHIRJSON] {
					self.address = Address.from(val, owner: self) as? [Address]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"address\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["contact"] {
				presentKeys.addObject("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = OrganizationContact.from(val, owner: self) as? [OrganizationContact]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contact\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["partOf"] {
				presentKeys.addObject("partOf")
				if let val = exist as? FHIRJSON {
					self.partOf = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"partOf\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
		if let contact = self.contact {
			json["contact"] = OrganizationContact.asJSONArray(contact)
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
public class OrganizationContact: FHIRElement
{
	override public class var resourceName: String {
		get { return "OrganizationContact" }
	}
	
	/// Visiting or postal addresses for the contact
	public var address: Address?
	
	/// A name associated with the contact
	public var name: HumanName?
	
	/// The type of contact
	public var purpose: CodeableConcept?
	
	/// Contact details (telephone, email, etc)  for a contact
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["address"] {
				presentKeys.addObject("address")
				if let val = exist as? FHIRJSON {
					self.address = Address(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"address\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? FHIRJSON {
					self.name = HumanName(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["purpose"] {
				presentKeys.addObject("purpose")
				if let val = exist as? FHIRJSON {
					self.purpose = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"purpose\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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

