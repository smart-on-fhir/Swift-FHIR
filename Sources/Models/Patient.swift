//
//  Patient.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Patient) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
Information about an individual or animal receiving health care services.

Demographics and other administrative information about an individual or animal receiving care or other health-related
services.
*/
open class Patient: DomainResource {
	override open class var resourceType: String {
		get { return "Patient" }
	}
	
	/// Whether this patient's record is in active use.
	public var active: FHIRBool?
	
	/// Addresses for the individual.
	public var address: [Address]?
	
	/// This patient is known to be an animal (non-human).
	public var animal: PatientAnimal?
	
	/// The date of birth for the individual.
	public var birthDate: FHIRDate?
	
	/// A list of Languages which may be used to communicate with the patient about his or her health.
	public var communication: [PatientCommunication]?
	
	/// A contact party (e.g. guardian, partner, friend) for the patient.
	public var contact: [PatientContact]?
	
	/// Indicates if the individual is deceased or not.
	public var deceasedBoolean: FHIRBool?
	
	/// Indicates if the individual is deceased or not.
	public var deceasedDateTime: DateTime?
	
	/// Administrative Gender - the gender that the patient is considered to have for administration and record keeping
	/// purposes.
	public var gender: AdministrativeGender?
	
	/// Patient's nominated primary care provider.
	public var generalPractitioner: [Reference]?
	
	/// An identifier for this patient.
	public var identifier: [Identifier]?
	
	/// Link to another patient resource that concerns the same actual person.
	public var link: [PatientLink]?
	
	/// Organization that is the custodian of the patient record.
	public var managingOrganization: Reference?
	
	/// Marital (civil) status of a patient.
	public var maritalStatus: CodeableConcept?
	
	/// Whether patient is part of a multiple birth.
	public var multipleBirthBoolean: FHIRBool?
	
	/// Whether patient is part of a multiple birth.
	public var multipleBirthInteger: FHIRInteger?
	
	/// A name associated with the patient.
	public var name: [HumanName]?
	
	/// Image of the patient.
	public var photo: [Attachment]?
	
	/// A contact detail for the individual.
	public var telecom: [ContactPoint]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		active = try createInstance(type: FHIRBool.self, for: "active", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? active
		address = try createInstances(of: Address.self, for: "address", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? address
		animal = try createInstance(type: PatientAnimal.self, for: "animal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? animal
		birthDate = try createInstance(type: FHIRDate.self, for: "birthDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? birthDate
		communication = try createInstances(of: PatientCommunication.self, for: "communication", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? communication
		contact = try createInstances(of: PatientContact.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		deceasedBoolean = try createInstance(type: FHIRBool.self, for: "deceasedBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? deceasedBoolean
		deceasedDateTime = try createInstance(type: DateTime.self, for: "deceasedDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? deceasedDateTime
		gender = createEnum(type: AdministrativeGender.self, for: "gender", in: json, presentKeys: &presentKeys, errors: &errors) ?? gender
		generalPractitioner = try createInstances(of: Reference.self, for: "generalPractitioner", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? generalPractitioner
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		link = try createInstances(of: PatientLink.self, for: "link", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? link
		managingOrganization = try createInstance(type: Reference.self, for: "managingOrganization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? managingOrganization
		maritalStatus = try createInstance(type: CodeableConcept.self, for: "maritalStatus", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maritalStatus
		multipleBirthBoolean = try createInstance(type: FHIRBool.self, for: "multipleBirthBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? multipleBirthBoolean
		multipleBirthInteger = try createInstance(type: FHIRInteger.self, for: "multipleBirthInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? multipleBirthInteger
		name = try createInstances(of: HumanName.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		photo = try createInstances(of: Attachment.self, for: "photo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? photo
		telecom = try createInstances(of: ContactPoint.self, for: "telecom", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? telecom
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.active?.decorate(json: &json, withKey: "active", errors: &errors)
		arrayDecorate(json: &json, withKey: "address", using: self.address, errors: &errors)
		self.animal?.decorate(json: &json, withKey: "animal", errors: &errors)
		self.birthDate?.decorate(json: &json, withKey: "birthDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "communication", using: self.communication, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.deceasedBoolean?.decorate(json: &json, withKey: "deceasedBoolean", errors: &errors)
		self.deceasedDateTime?.decorate(json: &json, withKey: "deceasedDateTime", errors: &errors)
		self.gender?.decorate(json: &json, withKey: "gender", errors: &errors)
		arrayDecorate(json: &json, withKey: "generalPractitioner", using: self.generalPractitioner, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "link", using: self.link, errors: &errors)
		self.managingOrganization?.decorate(json: &json, withKey: "managingOrganization", errors: &errors)
		self.maritalStatus?.decorate(json: &json, withKey: "maritalStatus", errors: &errors)
		self.multipleBirthBoolean?.decorate(json: &json, withKey: "multipleBirthBoolean", errors: &errors)
		self.multipleBirthInteger?.decorate(json: &json, withKey: "multipleBirthInteger", errors: &errors)
		arrayDecorate(json: &json, withKey: "name", using: self.name, errors: &errors)
		arrayDecorate(json: &json, withKey: "photo", using: self.photo, errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
	}
}


/**
This patient is known to be an animal (non-human).

This patient is known to be an animal.
*/
open class PatientAnimal: BackboneElement {
	override open class var resourceType: String {
		get { return "PatientAnimal" }
	}
	
	/// E.g. Poodle, Angus.
	public var breed: CodeableConcept?
	
	/// E.g. Neutered, Intact.
	public var genderStatus: CodeableConcept?
	
	/// E.g. Dog, Cow.
	public var species: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(species: CodeableConcept) {
		self.init()
		self.species = species
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		breed = try createInstance(type: CodeableConcept.self, for: "breed", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? breed
		genderStatus = try createInstance(type: CodeableConcept.self, for: "genderStatus", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? genderStatus
		species = try createInstance(type: CodeableConcept.self, for: "species", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? species
		if nil == species && !presentKeys.contains("species") {
			errors.append(FHIRValidationError(missing: "species"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.breed?.decorate(json: &json, withKey: "breed", errors: &errors)
		self.genderStatus?.decorate(json: &json, withKey: "genderStatus", errors: &errors)
		self.species?.decorate(json: &json, withKey: "species", errors: &errors)
		if nil == self.species {
			errors.append(FHIRValidationError(missing: "species"))
		}
	}
}


/**
A list of Languages which may be used to communicate with the patient about his or her health.

Languages which may be used to communicate with the patient about his or her health.
*/
open class PatientCommunication: BackboneElement {
	override open class var resourceType: String {
		get { return "PatientCommunication" }
	}
	
	/// The language which can be used to communicate with the patient about his or her health.
	public var language: CodeableConcept?
	
	/// Language preference indicator.
	public var preferred: FHIRBool?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(language: CodeableConcept) {
		self.init()
		self.language = language
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		language = try createInstance(type: CodeableConcept.self, for: "language", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? language
		if nil == language && !presentKeys.contains("language") {
			errors.append(FHIRValidationError(missing: "language"))
		}
		preferred = try createInstance(type: FHIRBool.self, for: "preferred", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? preferred
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
		if nil == self.language {
			errors.append(FHIRValidationError(missing: "language"))
		}
		self.preferred?.decorate(json: &json, withKey: "preferred", errors: &errors)
	}
}


/**
A contact party (e.g. guardian, partner, friend) for the patient.
*/
open class PatientContact: BackboneElement {
	override open class var resourceType: String {
		get { return "PatientContact" }
	}
	
	/// Address for the contact person.
	public var address: Address?
	
	/// Administrative Gender - the gender that the contact person is considered to have for administration and record
	/// keeping purposes.
	public var gender: AdministrativeGender?
	
	/// A name associated with the contact person.
	public var name: HumanName?
	
	/// Organization that is associated with the contact.
	public var organization: Reference?
	
	/// The period during which this contact person or organization is valid to be contacted relating to this patient.
	public var period: Period?
	
	/// The kind of relationship.
	public var relationship: [CodeableConcept]?
	
	/// A contact detail for the person.
	public var telecom: [ContactPoint]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		address = try createInstance(type: Address.self, for: "address", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? address
		gender = createEnum(type: AdministrativeGender.self, for: "gender", in: json, presentKeys: &presentKeys, errors: &errors) ?? gender
		name = try createInstance(type: HumanName.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		organization = try createInstance(type: Reference.self, for: "organization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? organization
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		relationship = try createInstances(of: CodeableConcept.self, for: "relationship", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relationship
		telecom = try createInstances(of: ContactPoint.self, for: "telecom", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? telecom
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.address?.decorate(json: &json, withKey: "address", errors: &errors)
		self.gender?.decorate(json: &json, withKey: "gender", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "relationship", using: self.relationship, errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
	}
}


/**
Link to another patient resource that concerns the same actual person.

Link to another patient resource that concerns the same actual patient.
*/
open class PatientLink: BackboneElement {
	override open class var resourceType: String {
		get { return "PatientLink" }
	}
	
	/// The other patient or related person resource that the link refers to.
	public var other: Reference?
	
	/// The type of link between this patient resource and another patient resource.
	public var type: LinkType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(other: Reference, type: LinkType) {
		self.init()
		self.other = other
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		other = try createInstance(type: Reference.self, for: "other", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? other
		if nil == other && !presentKeys.contains("other") {
			errors.append(FHIRValidationError(missing: "other"))
		}
		type = createEnum(type: LinkType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.other?.decorate(json: &json, withKey: "other", errors: &errors)
		if nil == self.other {
			errors.append(FHIRValidationError(missing: "other"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

