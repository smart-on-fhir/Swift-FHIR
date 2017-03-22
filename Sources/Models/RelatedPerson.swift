//
//  RelatedPerson.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/RelatedPerson) on 2017-03-22.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		active = createInstance(type: FHIRBool.self, for: "active", in: json, context: &instCtx, owner: self) ?? active
		address = createInstances(of: Address.self, for: "address", in: json, context: &instCtx, owner: self) ?? address
		birthDate = createInstance(type: FHIRDate.self, for: "birthDate", in: json, context: &instCtx, owner: self) ?? birthDate
		gender = createEnum(type: AdministrativeGender.self, for: "gender", in: json, context: &instCtx) ?? gender
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		name = createInstances(of: HumanName.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		photo = createInstances(of: Attachment.self, for: "photo", in: json, context: &instCtx, owner: self) ?? photo
		relationship = createInstance(type: CodeableConcept.self, for: "relationship", in: json, context: &instCtx, owner: self) ?? relationship
		telecom = createInstances(of: ContactPoint.self, for: "telecom", in: json, context: &instCtx, owner: self) ?? telecom
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

