//
//  RelatedPerson.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/RelatedPerson) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A person that is related to a patient, but who is not a direct target of care.

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
	
	/// A language which may be used to communicate with about the patient's health.
	public var communication: [RelatedPersonCommunication]?
	
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
	public var relationship: [CodeableConcept]?
	
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
		communication = createInstances(of: RelatedPersonCommunication.self, for: "communication", in: json, context: &instCtx, owner: self) ?? communication
		gender = createEnum(type: AdministrativeGender.self, for: "gender", in: json, context: &instCtx) ?? gender
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		name = createInstances(of: HumanName.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		photo = createInstances(of: Attachment.self, for: "photo", in: json, context: &instCtx, owner: self) ?? photo
		relationship = createInstances(of: CodeableConcept.self, for: "relationship", in: json, context: &instCtx, owner: self) ?? relationship
		telecom = createInstances(of: ContactPoint.self, for: "telecom", in: json, context: &instCtx, owner: self) ?? telecom
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
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "photo", using: self.photo, errors: &errors)
		arrayDecorate(json: &json, withKey: "relationship", using: self.relationship, errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
	}
}


/**
A language which may be used to communicate with about the patient's health.
*/
open class RelatedPersonCommunication: BackboneElement {
	override open class var resourceType: String {
		get { return "RelatedPersonCommunication" }
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		language = createInstance(type: CodeableConcept.self, for: "language", in: json, context: &instCtx, owner: self) ?? language
		if nil == language && !instCtx.containsKey("language") {
			instCtx.addError(FHIRValidationError(missing: "language"))
		}
		preferred = createInstance(type: FHIRBool.self, for: "preferred", in: json, context: &instCtx, owner: self) ?? preferred
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

