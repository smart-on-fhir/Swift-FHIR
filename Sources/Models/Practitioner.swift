//
//  Practitioner.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Practitioner) on 2017-03-22.
//  2017, SMART Health IT.
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
	
	/// A contact detail for the practitioner (that apply to all roles).
	public var telecom: [ContactPoint]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		active = createInstance(type: FHIRBool.self, for: "active", in: json, context: &instCtx, owner: self) ?? active
		address = createInstances(of: Address.self, for: "address", in: json, context: &instCtx, owner: self) ?? address
		birthDate = createInstance(type: FHIRDate.self, for: "birthDate", in: json, context: &instCtx, owner: self) ?? birthDate
		communication = createInstances(of: CodeableConcept.self, for: "communication", in: json, context: &instCtx, owner: self) ?? communication
		gender = createEnum(type: AdministrativeGender.self, for: "gender", in: json, context: &instCtx) ?? gender
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		name = createInstances(of: HumanName.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		photo = createInstances(of: Attachment.self, for: "photo", in: json, context: &instCtx, owner: self) ?? photo
		qualification = createInstances(of: PractitionerQualification.self, for: "qualification", in: json, context: &instCtx, owner: self) ?? qualification
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
		arrayDecorate(json: &json, withKey: "photo", using: self.photo, errors: &errors)
		arrayDecorate(json: &json, withKey: "qualification", using: self.qualification, errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		issuer = createInstance(type: Reference.self, for: "issuer", in: json, context: &instCtx, owner: self) ?? issuer
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
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

