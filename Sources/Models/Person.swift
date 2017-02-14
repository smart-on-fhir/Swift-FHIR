//
//  Person.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/Person) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
A generic person record.

Demographics and administrative information about a person independent of a specific health-related context.
*/
open class Person: DomainResource {
	override open class var resourceType: String {
		get { return "Person" }
	}
	
	/// This person's record is in active use.
	public var active: FHIRBool?
	
	/// One or more addresses for the person.
	public var address: [Address]?
	
	/// The date on which the person was born.
	public var birthDate: FHIRDate?
	
	/// Administrative Gender.
	public var gender: AdministrativeGender?
	
	/// A human identifier for this person.
	public var identifier: [Identifier]?
	
	/// Link to a resource that concerns the same actual person.
	public var link: [PersonLink]?
	
	/// The organization that is the custodian of the person record.
	public var managingOrganization: Reference?
	
	/// A name associated with the person.
	public var name: [HumanName]?
	
	/// Image of the person.
	public var photo: Attachment?
	
	/// A contact detail for the person.
	public var telecom: [ContactPoint]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		active = try createInstance(type: FHIRBool.self, for: "active", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? active
		address = try createInstances(of: Address.self, for: "address", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? address
		birthDate = try createInstance(type: FHIRDate.self, for: "birthDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? birthDate
		gender = createEnum(type: AdministrativeGender.self, for: "gender", in: json, presentKeys: &presentKeys, errors: &errors) ?? gender
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		link = try createInstances(of: PersonLink.self, for: "link", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? link
		managingOrganization = try createInstance(type: Reference.self, for: "managingOrganization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? managingOrganization
		name = try createInstances(of: HumanName.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		photo = try createInstance(type: Attachment.self, for: "photo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? photo
		telecom = try createInstances(of: ContactPoint.self, for: "telecom", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? telecom
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.active?.decorate(json: &json, withKey: "active", errors: &errors)
		arrayDecorate(json: &json, withKey: "address", using: self.address, errors: &errors)
		self.birthDate?.decorate(json: &json, withKey: "birthDate", errors: &errors)
		self.gender?.decorate(json: &json, withKey: "gender", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "link", using: self.link, errors: &errors)
		self.managingOrganization?.decorate(json: &json, withKey: "managingOrganization", errors: &errors)
		arrayDecorate(json: &json, withKey: "name", using: self.name, errors: &errors)
		self.photo?.decorate(json: &json, withKey: "photo", errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
	}
}


/**
Link to a resource that concerns the same actual person.
*/
open class PersonLink: BackboneElement {
	override open class var resourceType: String {
		get { return "PersonLink" }
	}
	
	/// Level of assurance that this link is actually associated with the target resource.
	public var assurance: IdentityAssuranceLevel?
	
	/// The resource to which this actual person is associated.
	public var target: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(target: Reference) {
		self.init()
		self.target = target
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		assurance = createEnum(type: IdentityAssuranceLevel.self, for: "assurance", in: json, presentKeys: &presentKeys, errors: &errors) ?? assurance
		target = try createInstance(type: Reference.self, for: "target", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? target
		if nil == target && !presentKeys.contains("target") {
			errors.append(FHIRValidationError(missing: "target"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.assurance?.decorate(json: &json, withKey: "assurance", errors: &errors)
		self.target?.decorate(json: &json, withKey: "target", errors: &errors)
		if nil == self.target {
			errors.append(FHIRValidationError(missing: "target"))
		}
	}
}

