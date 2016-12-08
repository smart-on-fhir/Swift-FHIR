//
//  Practitioner.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Practitioner) on 2016-12-08.
//  2016, SMART Health IT.
//

import Foundation


/**
A person with a  formal responsibility in the provisioning of healthcare or related services.

A person who is directly or indirectly involved in the provisioning of healthcare.
*/
open class Practitioner: DomainResource {
	override open class var resourceType: String {
		get { return "Practitioner" }
	}
	
	/// Whether this practitioner's record is in active use.
	public var active: FHIRBool?
	
	/// Address(es) of the practitioner that are not role specific (typically home address).
	public var address: [Address]?
	
	/// The date  on which the practitioner was born.
	public var birthDate: FHIRDate?
	
	/// A language the practitioner is able to use in patient communication.
	public var communication: [CodeableConcept]?
	
	/// Administrative Gender - the gender that the person is considered to have for administration and record keeping
	/// purposes.
	public var gender: AdministrativeGender?
	
	/// A identifier for the person as this agent.
	public var identifier: [Identifier]?
	
	/// The name(s) associated with the practitioner.
	public var name: [HumanName]?
	
	/// Image of the person.
	public var photo: [Attachment]?
	
	/// Qualifications obtained by training and certification.
	public var qualification: [PractitionerQualification]?
	
	/// Roles/organizations the practitioner is associated with.
	public var role: [PractitionerPractRole]?
	
	/// A contact detail for the practitioner (that apply to all roles).
	public var telecom: [ContactPoint]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		active = try createInstance(type: FHIRBool.self, for: "active", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? active
		address = try createInstances(of: Address.self, for: "address", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? address
		birthDate = try createInstance(type: FHIRDate.self, for: "birthDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? birthDate
		communication = try createInstances(of: CodeableConcept.self, for: "communication", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? communication
		gender = createEnum(type: AdministrativeGender.self, for: "gender", in: json, presentKeys: &presentKeys, errors: &errors) ?? gender
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		name = try createInstances(of: HumanName.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		photo = try createInstances(of: Attachment.self, for: "photo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? photo
		qualification = try createInstances(of: PractitionerQualification.self, for: "qualification", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? qualification
		role = try createInstances(of: PractitionerPractRole.self, for: "role", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? role
		telecom = try createInstances(of: ContactPoint.self, for: "telecom", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? telecom
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.active?.decorate(json: &json, withKey: "active", errors: &errors)
		arrayDecorate(json: &json, withKey: "address", using: self.address, errors: &errors)
		self.birthDate?.decorate(json: &json, withKey: "birthDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "communication", using: self.communication, errors: &errors)
		self.gender?.decorate(json: &json, withKey: "gender", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "name", using: self.name, errors: &errors)
		arrayDecorate(json: &json, withKey: "photo", using: self.photo, errors: &errors)
		arrayDecorate(json: &json, withKey: "qualification", using: self.qualification, errors: &errors)
		arrayDecorate(json: &json, withKey: "role", using: self.role, errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
	}
}


/**
Roles/organizations the practitioner is associated with.

The list of roles/organizations that the practitioner is associated with.
*/
open class PractitionerPractRole: BackboneElement {
	override open class var resourceType: String {
		get { return "PractitionerPractRole" }
	}
	
	/// Roles which this practitioner may perform.
	public var code: CodeableConcept?
	
	/// Technical endpoints providing access to services operated for the PractitonerRole.
	public var endpoint: [Reference]?
	
	/// The list of healthcare services that this worker provides for this role's Organization/Location(s).
	public var healthcareService: [Reference]?
	
	/// Business Identifiers that are specific to a role/location.
	public var identifier: [Identifier]?
	
	/// The location(s) at which this practitioner provides care.
	public var location: [Reference]?
	
	/// Organization where the roles are performed.
	public var organization: Reference?
	
	/// The period during which the practitioner is authorized to perform in these role(s).
	public var period: Period?
	
	/// Specific specialty of the practitioner.
	public var specialty: [CodeableConcept]?
	
	/// Contact details that are specific to the role/location/service.
	public var telecom: [ContactPoint]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		endpoint = try createInstances(of: Reference.self, for: "endpoint", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? endpoint
		healthcareService = try createInstances(of: Reference.self, for: "healthcareService", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? healthcareService
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		location = try createInstances(of: Reference.self, for: "location", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? location
		organization = try createInstance(type: Reference.self, for: "organization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? organization
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		specialty = try createInstances(of: CodeableConcept.self, for: "specialty", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? specialty
		telecom = try createInstances(of: ContactPoint.self, for: "telecom", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? telecom
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
		arrayDecorate(json: &json, withKey: "healthcareService", using: self.healthcareService, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "location", using: self.location, errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "specialty", using: self.specialty, errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
	}
}


/**
Qualifications obtained by training and certification.
*/
open class PractitionerQualification: BackboneElement {
	override open class var resourceType: String {
		get { return "PractitionerQualification" }
	}
	
	/// Coded representation of the qualification.
	public var code: CodeableConcept?
	
	/// An identifier for this qualification for the practitioner.
	public var identifier: [Identifier]?
	
	/// Organization that regulates and issues the qualification.
	public var issuer: Reference?
	
	/// Period during which the qualification is valid.
	public var period: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		issuer = try createInstance(type: Reference.self, for: "issuer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? issuer
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.issuer?.decorate(json: &json, withKey: "issuer", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
	}
}

