//
//  Person.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Person) on 2017-03-22.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		active = createInstance(type: FHIRBool.self, for: "active", in: json, context: &instCtx, owner: self) ?? active
		address = createInstances(of: Address.self, for: "address", in: json, context: &instCtx, owner: self) ?? address
		birthDate = createInstance(type: FHIRDate.self, for: "birthDate", in: json, context: &instCtx, owner: self) ?? birthDate
		gender = createEnum(type: AdministrativeGender.self, for: "gender", in: json, context: &instCtx) ?? gender
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		link = createInstances(of: PersonLink.self, for: "link", in: json, context: &instCtx, owner: self) ?? link
		managingOrganization = createInstance(type: Reference.self, for: "managingOrganization", in: json, context: &instCtx, owner: self) ?? managingOrganization
		name = createInstances(of: HumanName.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		photo = createInstance(type: Attachment.self, for: "photo", in: json, context: &instCtx, owner: self) ?? photo
		telecom = createInstances(of: ContactPoint.self, for: "telecom", in: json, context: &instCtx, owner: self) ?? telecom
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		assurance = createEnum(type: IdentityAssuranceLevel.self, for: "assurance", in: json, context: &instCtx) ?? assurance
		target = createInstance(type: Reference.self, for: "target", in: json, context: &instCtx, owner: self) ?? target
		if nil == target && !instCtx.containsKey("target") {
			instCtx.addError(FHIRValidationError(missing: "target"))
		}
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

