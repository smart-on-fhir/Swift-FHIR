//
//  RelatedPerson.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/RelatedPerson) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
An person that is related to a patient, but who is not a direct target of care.

Information about a person that is involved in the care for a patient, but who is not the target of healthcare, nor has
a formal responsibility in the care process.
*/
open class RelatedPerson: DomainResource {
	override open class var resourceType: String {
		get { return "RelatedPerson" }
	}
	
	/// Whether this related person's record is in active use.
	public var active: FHIRBool?
	
	/// Address where the related person can be contacted or visited.
	public var address: [Address]?
	
	/// The date on which the related person was born.
	public var birthDate: FHIRDate?
	
	/// Administrative Gender - the gender that the person is considered to have for administration and record keeping
	/// purposes.
	public var gender: AdministrativeGender?
	
	/// A human identifier for this person.
	public var identifier: [Identifier]?
	
	/// A name associated with the person.
	public var name: [HumanName]?
	
	/// The patient this person is related to.
	public var patient: Reference?
	
	/// Period of time that this relationship is considered valid.
	public var period: Period?
	
	/// Image of the person.
	public var photo: [Attachment]?
	
	/// The nature of the relationship.
	public var relationship: CodeableConcept?
	
	/// A contact detail for the person.
	public var telecom: [ContactPoint]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference) {
		self.init()
		self.patient = patient
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		active = try createInstance(type: FHIRBool.self, for: "active", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? active
		address = try createInstances(of: Address.self, for: "address", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? address
		birthDate = try createInstance(type: FHIRDate.self, for: "birthDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? birthDate
		gender = createEnum(type: AdministrativeGender.self, for: "gender", in: json, presentKeys: &presentKeys, errors: &errors) ?? gender
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		name = try createInstances(of: HumanName.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		if nil == patient && !presentKeys.contains("patient") {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		photo = try createInstances(of: Attachment.self, for: "photo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? photo
		relationship = try createInstance(type: CodeableConcept.self, for: "relationship", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relationship
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
		arrayDecorate(json: &json, withKey: "name", using: self.name, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "photo", using: self.photo, errors: &errors)
		self.relationship?.decorate(json: &json, withKey: "relationship", errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
	}
}

