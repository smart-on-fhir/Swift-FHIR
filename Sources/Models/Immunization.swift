//
//  Immunization.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Immunization) on 2019-03-01.
//  2019, SMART Health IT.
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
	public var isSubpotent: FHIRBool?
	
	/// Where immunization occurred.
	public var location: Reference?
	
	/// Vaccine lot number.
	public var lotNumber: FHIRString?
	
	/// Vaccine manufacturer.
	public var manufacturer: Reference?
	
	/// Additional immunization notes.
	public var note: [Annotation]?
	
	/// Vaccine administration date.
	public var occurrenceDateTime: DateTime?
	
	/// Vaccine administration date.
	public var occurrenceString: FHIRString?
	
	/// Who was immunized.
	public var patient: Reference?
	
	/// Who performed event.
	public var performer: [ImmunizationPerformer]?
	
	/// Indicates context the data was recorded in.
	public var primarySource: FHIRBool?
	
	/// Patient eligibility for a vaccination program.
	public var programEligibility: [CodeableConcept]?
	
	/// Protocol followed by the provider.
	public var protocolApplied: [ImmunizationProtocolApplied]?
	
	/// Details of a reaction that follows immunization.
	public var reaction: [ImmunizationReaction]?
	
	/// Why immunization occurred.
	public var reasonCode: [CodeableConcept]?
	
	/// Why immunization occurred.
	public var reasonReference: [Reference]?
	
	/// When the immunization was first captured in the subject's record.
	public var recorded: DateTime?
	
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
	public convenience init(occurrence: Any, patient: Reference, status: EventStatus, vaccineCode: CodeableConcept) {
		self.init()
		if let value = occurrence as? DateTime {
			self.occurrenceDateTime = value
		}
		else if let value = occurrence as? FHIRString {
			self.occurrenceString = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: occurrence))” for property “\(occurrence)” is invalid, ignoring")
		}
		self.patient = patient
		self.status = status
		self.vaccineCode = vaccineCode
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		doseQuantity = createInstance(type: Quantity.self, for: "doseQuantity", in: json, context: &instCtx, owner: self) ?? doseQuantity
		education = createInstances(of: ImmunizationEducation.self, for: "education", in: json, context: &instCtx, owner: self) ?? education
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		expirationDate = createInstance(type: FHIRDate.self, for: "expirationDate", in: json, context: &instCtx, owner: self) ?? expirationDate
		fundingSource = createInstance(type: CodeableConcept.self, for: "fundingSource", in: json, context: &instCtx, owner: self) ?? fundingSource
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		isSubpotent = createInstance(type: FHIRBool.self, for: "isSubpotent", in: json, context: &instCtx, owner: self) ?? isSubpotent
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		lotNumber = createInstance(type: FHIRString.self, for: "lotNumber", in: json, context: &instCtx, owner: self) ?? lotNumber
		manufacturer = createInstance(type: Reference.self, for: "manufacturer", in: json, context: &instCtx, owner: self) ?? manufacturer
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		occurrenceDateTime = createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, context: &instCtx, owner: self) ?? occurrenceDateTime
		occurrenceString = createInstance(type: FHIRString.self, for: "occurrenceString", in: json, context: &instCtx, owner: self) ?? occurrenceString
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		performer = createInstances(of: ImmunizationPerformer.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		primarySource = createInstance(type: FHIRBool.self, for: "primarySource", in: json, context: &instCtx, owner: self) ?? primarySource
		programEligibility = createInstances(of: CodeableConcept.self, for: "programEligibility", in: json, context: &instCtx, owner: self) ?? programEligibility
		protocolApplied = createInstances(of: ImmunizationProtocolApplied.self, for: "protocolApplied", in: json, context: &instCtx, owner: self) ?? protocolApplied
		reaction = createInstances(of: ImmunizationReaction.self, for: "reaction", in: json, context: &instCtx, owner: self) ?? reaction
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		recorded = createInstance(type: DateTime.self, for: "recorded", in: json, context: &instCtx, owner: self) ?? recorded
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
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.occurrenceDateTime && nil == self.occurrenceString {
			instCtx.addError(FHIRValidationError(missing: "occurrence[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.doseQuantity?.decorate(json: &json, withKey: "doseQuantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "education", using: self.education, errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		self.expirationDate?.decorate(json: &json, withKey: "expirationDate", errors: &errors)
		self.fundingSource?.decorate(json: &json, withKey: "fundingSource", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.isSubpotent?.decorate(json: &json, withKey: "isSubpotent", errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		self.lotNumber?.decorate(json: &json, withKey: "lotNumber", errors: &errors)
		self.manufacturer?.decorate(json: &json, withKey: "manufacturer", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.occurrenceString?.decorate(json: &json, withKey: "occurrenceString", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		arrayDecorate(json: &json, withKey: "performer", using: self.performer, errors: &errors)
		self.primarySource?.decorate(json: &json, withKey: "primarySource", errors: &errors)
		arrayDecorate(json: &json, withKey: "programEligibility", using: self.programEligibility, errors: &errors)
		arrayDecorate(json: &json, withKey: "protocolApplied", using: self.protocolApplied, errors: &errors)
		arrayDecorate(json: &json, withKey: "reaction", using: self.reaction, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.recorded?.decorate(json: &json, withKey: "recorded", errors: &errors)
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
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.occurrenceDateTime && nil == self.occurrenceString {
			errors.append(FHIRValidationError(missing: "occurrence[x]"))
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


/**
Protocol followed by the provider.

The protocol (set of recommendations) being followed by the provider who administered the dose.
*/
open class ImmunizationProtocolApplied: BackboneElement {
	override open class var resourceType: String {
		get { return "ImmunizationProtocolApplied" }
	}
	
	/// Who is responsible for publishing the recommendations.
	public var authority: Reference?
	
	/// Dose number within series.
	public var doseNumberPositiveInt: FHIRInteger?
	
	/// Dose number within series.
	public var doseNumberString: FHIRString?
	
	/// Name of vaccine series.
	public var series: FHIRString?
	
	/// Recommended number of doses for immunity.
	public var seriesDosesPositiveInt: FHIRInteger?
	
	/// Recommended number of doses for immunity.
	public var seriesDosesString: FHIRString?
	
	/// Vaccine preventatable disease being targetted.
	public var targetDisease: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(doseNumber: Any) {
		self.init()
		if let value = doseNumber as? FHIRInteger {
			self.doseNumberPositiveInt = value
		}
		else if let value = doseNumber as? FHIRString {
			self.doseNumberString = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: doseNumber))” for property “\(doseNumber)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authority = createInstance(type: Reference.self, for: "authority", in: json, context: &instCtx, owner: self) ?? authority
		doseNumberPositiveInt = createInstance(type: FHIRInteger.self, for: "doseNumberPositiveInt", in: json, context: &instCtx, owner: self) ?? doseNumberPositiveInt
		doseNumberString = createInstance(type: FHIRString.self, for: "doseNumberString", in: json, context: &instCtx, owner: self) ?? doseNumberString
		series = createInstance(type: FHIRString.self, for: "series", in: json, context: &instCtx, owner: self) ?? series
		seriesDosesPositiveInt = createInstance(type: FHIRInteger.self, for: "seriesDosesPositiveInt", in: json, context: &instCtx, owner: self) ?? seriesDosesPositiveInt
		seriesDosesString = createInstance(type: FHIRString.self, for: "seriesDosesString", in: json, context: &instCtx, owner: self) ?? seriesDosesString
		targetDisease = createInstances(of: CodeableConcept.self, for: "targetDisease", in: json, context: &instCtx, owner: self) ?? targetDisease
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.doseNumberPositiveInt && nil == self.doseNumberString {
			instCtx.addError(FHIRValidationError(missing: "doseNumber[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authority?.decorate(json: &json, withKey: "authority", errors: &errors)
		self.doseNumberPositiveInt?.decorate(json: &json, withKey: "doseNumberPositiveInt", errors: &errors)
		self.doseNumberString?.decorate(json: &json, withKey: "doseNumberString", errors: &errors)
		self.series?.decorate(json: &json, withKey: "series", errors: &errors)
		self.seriesDosesPositiveInt?.decorate(json: &json, withKey: "seriesDosesPositiveInt", errors: &errors)
		self.seriesDosesString?.decorate(json: &json, withKey: "seriesDosesString", errors: &errors)
		arrayDecorate(json: &json, withKey: "targetDisease", using: self.targetDisease, errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.doseNumberPositiveInt && nil == self.doseNumberString {
			errors.append(FHIRValidationError(missing: "doseNumber[x]"))
		}
	}
}


/**
Details of a reaction that follows immunization.

Categorical data indicating that an adverse event is associated in time to an immunization.
*/
open class ImmunizationReaction: BackboneElement {
	override open class var resourceType: String {
		get { return "ImmunizationReaction" }
	}
	
	/// When reaction started.
	public var date: DateTime?
	
	/// Additional information on reaction.
	public var detail: Reference?
	
	/// Indicates self-reported reaction.
	public var reported: FHIRBool?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		detail = createInstance(type: Reference.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
		reported = createInstance(type: FHIRBool.self, for: "reported", in: json, context: &instCtx, owner: self) ?? reported
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.detail?.decorate(json: &json, withKey: "detail", errors: &errors)
		self.reported?.decorate(json: &json, withKey: "reported", errors: &errors)
	}
}

