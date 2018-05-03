//
//  Immunization.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/Immunization) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
Immunization event information.

Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a
clinician or another party.
*/
open class Immunization: DomainResource {
	override open class var resourceType: String {
		get { return "Immunization" }
	}
	
	/// Vaccine administration date.
	public var date: DateTime?
	
	/// Amount of vaccine administered.
	public var doseQuantity: Quantity?
	
	/// Educational material presented to patient.
	public var education: [ImmunizationEducation]?
	
	/// Encounter immunization was part of.
	public var encounter: Reference?
	
	/// Vaccine expiration date.
	public var expirationDate: FHIRDate?
	
	/// Funding source for the vaccine.
	public var fundingSource: CodeableConcept?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// Dose potency.
	public var isPotent: FHIRBool?
	
	/// Where immunization occurred.
	public var location: Reference?
	
	/// Vaccine lot number.
	public var lotNumber: FHIRString?
	
	/// Vaccine manufacturer.
	public var manufacturer: Reference?
	
	/// Additional immunization notes.
	public var note: [Annotation]?
	
	/// Who was immunized.
	public var patient: Reference?
	
	/// Who performed event.
	public var performer: [ImmunizationPerformer]?
	
	/// Indicates context the data was recorded in.
	public var primarySource: FHIRBool?
	
	/// Patient eligibility for a vaccination program.
	public var programEligibility: [CodeableConcept]?
	
	/// Why immunization occurred.
	public var reasonCode: [CodeableConcept]?
	
	/// Why immunization occurred.
	public var reasonReference: [Reference]?
	
	/// Indicates the source of a secondarily reported record.
	public var reportOrigin: CodeableConcept?
	
	/// How vaccine entered body.
	public var route: CodeableConcept?
	
	/// Body site vaccine  was administered.
	public var site: CodeableConcept?
	
	/// Indicates the current status of the immunization event.
	/// Only use: ['completed', 'entered-in-error', 'not-done']
	public var status: EventStatus?
	
	/// Reason not done.
	public var statusReason: CodeableConcept?
	
	/// Reason for being subpotent.
	public var subpotentReason: [CodeableConcept]?
	
	/// Vaccine product administered.
	public var vaccineCode: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, primarySource: FHIRBool, status: EventStatus, vaccineCode: CodeableConcept) {
		self.init()
		self.patient = patient
		self.primarySource = primarySource
		self.status = status
		self.vaccineCode = vaccineCode
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		doseQuantity = createInstance(type: Quantity.self, for: "doseQuantity", in: json, context: &instCtx, owner: self) ?? doseQuantity
		education = createInstances(of: ImmunizationEducation.self, for: "education", in: json, context: &instCtx, owner: self) ?? education
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		expirationDate = createInstance(type: FHIRDate.self, for: "expirationDate", in: json, context: &instCtx, owner: self) ?? expirationDate
		fundingSource = createInstance(type: CodeableConcept.self, for: "fundingSource", in: json, context: &instCtx, owner: self) ?? fundingSource
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		isPotent = createInstance(type: FHIRBool.self, for: "isPotent", in: json, context: &instCtx, owner: self) ?? isPotent
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		lotNumber = createInstance(type: FHIRString.self, for: "lotNumber", in: json, context: &instCtx, owner: self) ?? lotNumber
		manufacturer = createInstance(type: Reference.self, for: "manufacturer", in: json, context: &instCtx, owner: self) ?? manufacturer
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		performer = createInstances(of: ImmunizationPerformer.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		primarySource = createInstance(type: FHIRBool.self, for: "primarySource", in: json, context: &instCtx, owner: self) ?? primarySource
		if nil == primarySource && !instCtx.containsKey("primarySource") {
			instCtx.addError(FHIRValidationError(missing: "primarySource"))
		}
		programEligibility = createInstances(of: CodeableConcept.self, for: "programEligibility", in: json, context: &instCtx, owner: self) ?? programEligibility
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		reportOrigin = createInstance(type: CodeableConcept.self, for: "reportOrigin", in: json, context: &instCtx, owner: self) ?? reportOrigin
		route = createInstance(type: CodeableConcept.self, for: "route", in: json, context: &instCtx, owner: self) ?? route
		site = createInstance(type: CodeableConcept.self, for: "site", in: json, context: &instCtx, owner: self) ?? site
		status = createEnum(type: EventStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		statusReason = createInstance(type: CodeableConcept.self, for: "statusReason", in: json, context: &instCtx, owner: self) ?? statusReason
		subpotentReason = createInstances(of: CodeableConcept.self, for: "subpotentReason", in: json, context: &instCtx, owner: self) ?? subpotentReason
		vaccineCode = createInstance(type: CodeableConcept.self, for: "vaccineCode", in: json, context: &instCtx, owner: self) ?? vaccineCode
		if nil == vaccineCode && !instCtx.containsKey("vaccineCode") {
			instCtx.addError(FHIRValidationError(missing: "vaccineCode"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.doseQuantity?.decorate(json: &json, withKey: "doseQuantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "education", using: self.education, errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		self.expirationDate?.decorate(json: &json, withKey: "expirationDate", errors: &errors)
		self.fundingSource?.decorate(json: &json, withKey: "fundingSource", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.isPotent?.decorate(json: &json, withKey: "isPotent", errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		self.lotNumber?.decorate(json: &json, withKey: "lotNumber", errors: &errors)
		self.manufacturer?.decorate(json: &json, withKey: "manufacturer", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		arrayDecorate(json: &json, withKey: "performer", using: self.performer, errors: &errors)
		self.primarySource?.decorate(json: &json, withKey: "primarySource", errors: &errors)
		if nil == self.primarySource {
			errors.append(FHIRValidationError(missing: "primarySource"))
		}
		arrayDecorate(json: &json, withKey: "programEligibility", using: self.programEligibility, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.reportOrigin?.decorate(json: &json, withKey: "reportOrigin", errors: &errors)
		self.route?.decorate(json: &json, withKey: "route", errors: &errors)
		self.site?.decorate(json: &json, withKey: "site", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.statusReason?.decorate(json: &json, withKey: "statusReason", errors: &errors)
		arrayDecorate(json: &json, withKey: "subpotentReason", using: self.subpotentReason, errors: &errors)
		self.vaccineCode?.decorate(json: &json, withKey: "vaccineCode", errors: &errors)
		if nil == self.vaccineCode {
			errors.append(FHIRValidationError(missing: "vaccineCode"))
		}
	}
}


/**
Educational material presented to patient.

Educational material presented to the patient (or guardian) at the time of vaccine administration.
*/
open class ImmunizationEducation: BackboneElement {
	override open class var resourceType: String {
		get { return "ImmunizationEducation" }
	}
	
	/// Educational material document identifier.
	public var documentType: FHIRString?
	
	/// Educational material presentation date.
	public var presentationDate: DateTime?
	
	/// Educational material publication date.
	public var publicationDate: DateTime?
	
	/// Educational material reference pointer.
	public var reference: FHIRURL?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		documentType = createInstance(type: FHIRString.self, for: "documentType", in: json, context: &instCtx, owner: self) ?? documentType
		presentationDate = createInstance(type: DateTime.self, for: "presentationDate", in: json, context: &instCtx, owner: self) ?? presentationDate
		publicationDate = createInstance(type: DateTime.self, for: "publicationDate", in: json, context: &instCtx, owner: self) ?? publicationDate
		reference = createInstance(type: FHIRURL.self, for: "reference", in: json, context: &instCtx, owner: self) ?? reference
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.documentType?.decorate(json: &json, withKey: "documentType", errors: &errors)
		self.presentationDate?.decorate(json: &json, withKey: "presentationDate", errors: &errors)
		self.publicationDate?.decorate(json: &json, withKey: "publicationDate", errors: &errors)
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
	}
}


/**
Who performed event.

Indicates who performed the immunization event.
*/
open class ImmunizationPerformer: BackboneElement {
	override open class var resourceType: String {
		get { return "ImmunizationPerformer" }
	}
	
	/// Individual or organization who was performing.
	public var actor: Reference?
	
	/// What type of performance was done.
	public var function: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actor: Reference) {
		self.init()
		self.actor = actor
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		actor = createInstance(type: Reference.self, for: "actor", in: json, context: &instCtx, owner: self) ?? actor
		if nil == actor && !instCtx.containsKey("actor") {
			instCtx.addError(FHIRValidationError(missing: "actor"))
		}
		function = createInstance(type: CodeableConcept.self, for: "function", in: json, context: &instCtx, owner: self) ?? function
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		if nil == self.actor {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		self.function?.decorate(json: &json, withKey: "function", errors: &errors)
	}
}

