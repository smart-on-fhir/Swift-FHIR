//
//  Organization.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Organization) on 2017-03-22.
//  2017, SMART Health IT.
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
	public var active: FHIRBool?
	
	/// An address for the organization.
	public var address: [Address]?
	
	/// A list of alternate names that the organization is known as, or was known as in the past.
	public var alias: [FHIRString]?
	
	/// Contact for the organization for a certain purpose.
	public var contact: [OrganizationContact]?
	
	/// Technical endpoints providing access to services operated for the organization.
	public var endpoint: [Reference]?
	
	/// Identifies this organization  across multiple systems.
	public var identifier: [Identifier]?
	
	/// Name used for the organization.
	public var name: FHIRString?
	
	/// The organization of which this organization forms a part.
	public var partOf: Reference?
	
	/// A contact detail for the organization.
	public var telecom: [ContactPoint]?
	
	/// Kind of organization.
	public var type: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		active = createInstance(type: FHIRBool.self, for: "active", in: json, context: &instCtx, owner: self) ?? active
		address = createInstances(of: Address.self, for: "address", in: json, context: &instCtx, owner: self) ?? address
		alias = createInstances(of: FHIRString.self, for: "alias", in: json, context: &instCtx, owner: self) ?? alias
		contact = createInstances(of: OrganizationContact.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		endpoint = createInstances(of: Reference.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		partOf = createInstance(type: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		telecom = createInstances(of: ContactPoint.self, for: "telecom", in: json, context: &instCtx, owner: self) ?? telecom
		type = createInstances(of: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.active?.decorate(json: &json, withKey: "active", errors: &errors)
		arrayDecorate(json: &json, withKey: "address", using: self.address, errors: &errors)
		arrayDecorate(json: &json, withKey: "alias", using: self.alias, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.partOf?.decorate(json: &json, withKey: "partOf", errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		address = createInstance(type: Address.self, for: "address", in: json, context: &instCtx, owner: self) ?? address
		name = createInstance(type: HumanName.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		purpose = createInstance(type: CodeableConcept.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		telecom = createInstances(of: ContactPoint.self, for: "telecom", in: json, context: &instCtx, owner: self) ?? telecom
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.address?.decorate(json: &json, withKey: "address", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
	}
}

