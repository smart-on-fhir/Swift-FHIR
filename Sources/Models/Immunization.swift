//
//  Immunization.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Immunization) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Immunization event information.

Describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a patient,
a clinician or another party and may include vaccine reaction information and what vaccination protocol was followed.
*/
open class Immunization: DomainResource {
	override open class var resourceType: String {
		get { return "Immunization" }
	}
	
	/// Vaccination administration date.
	public var date: DateTime?
	
	/// Amount of vaccine administered.
	public var doseQuantity: Quantity?
	
	/// Encounter administered as part of.
	public var encounter: Reference?
	
	/// Vaccine expiration date.
	public var expirationDate: FHIRDate?
	
	/// Administration/non-administration reasons.
	public var explanation: ImmunizationExplanation?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// Where vaccination occurred.
	public var location: Reference?
	
	/// Vaccine lot number.
	public var lotNumber: FHIRString?
	
	/// Vaccine manufacturer.
	public var manufacturer: Reference?
	
	/// Flag for whether immunization was given.
	public var notGiven: FHIRBool?
	
	/// Vaccination notes.
	public var note: [Annotation]?
	
	/// Who was immunized.
	public var patient: Reference?
	
	/// Who performed event.
	public var practitioner: [ImmunizationPractitioner]?
	
	/// Indicates context the data was recorded in.
	public var primarySource: FHIRBool?
	
	/// Details of a reaction that follows immunization.
	public var reaction: [ImmunizationReaction]?
	
	/// Indicates the source of a secondarily reported record.
	public var reportOrigin: CodeableConcept?
	
	/// How vaccine entered body.
	public var route: CodeableConcept?
	
	/// Body site vaccine  was administered.
	public var site: CodeableConcept?
	
	/// Indicates the current status of the vaccination event.
	/// Only use: ['completed', 'entered-in-error']
	public var status: MedicationAdministrationStatus?
	
	/// What protocol was followed.
	public var vaccinationProtocol: [ImmunizationVaccinationProtocol]?
	
	/// Vaccine product administered.
	public var vaccineCode: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(notGiven: FHIRBool, patient: Reference, primarySource: FHIRBool, status: MedicationAdministrationStatus, vaccineCode: CodeableConcept) {
		self.init()
		self.notGiven = notGiven
		self.patient = patient
		self.primarySource = primarySource
		self.status = status
		self.vaccineCode = vaccineCode
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		doseQuantity = createInstance(type: Quantity.self, for: "doseQuantity", in: json, context: &instCtx, owner: self) ?? doseQuantity
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		expirationDate = createInstance(type: FHIRDate.self, for: "expirationDate", in: json, context: &instCtx, owner: self) ?? expirationDate
		explanation = createInstance(type: ImmunizationExplanation.self, for: "explanation", in: json, context: &instCtx, owner: self) ?? explanation
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		lotNumber = createInstance(type: FHIRString.self, for: "lotNumber", in: json, context: &instCtx, owner: self) ?? lotNumber
		manufacturer = createInstance(type: Reference.self, for: "manufacturer", in: json, context: &instCtx, owner: self) ?? manufacturer
		notGiven = createInstance(type: FHIRBool.self, for: "notGiven", in: json, context: &instCtx, owner: self) ?? notGiven
		if nil == notGiven && !instCtx.containsKey("notGiven") {
			instCtx.addError(FHIRValidationError(missing: "notGiven"))
		}
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		practitioner = createInstances(of: ImmunizationPractitioner.self, for: "practitioner", in: json, context: &instCtx, owner: self) ?? practitioner
		primarySource = createInstance(type: FHIRBool.self, for: "primarySource", in: json, context: &instCtx, owner: self) ?? primarySource
		if nil == primarySource && !instCtx.containsKey("primarySource") {
			instCtx.addError(FHIRValidationError(missing: "primarySource"))
		}
		reaction = createInstances(of: ImmunizationReaction.self, for: "reaction", in: json, context: &instCtx, owner: self) ?? reaction
		reportOrigin = createInstance(type: CodeableConcept.self, for: "reportOrigin", in: json, context: &instCtx, owner: self) ?? reportOrigin
		route = createInstance(type: CodeableConcept.self, for: "route", in: json, context: &instCtx, owner: self) ?? route
		site = createInstance(type: CodeableConcept.self, for: "site", in: json, context: &instCtx, owner: self) ?? site
		status = createEnum(type: MedicationAdministrationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		vaccinationProtocol = createInstances(of: ImmunizationVaccinationProtocol.self, for: "vaccinationProtocol", in: json, context: &instCtx, owner: self) ?? vaccinationProtocol
		vaccineCode = createInstance(type: CodeableConcept.self, for: "vaccineCode", in: json, context: &instCtx, owner: self) ?? vaccineCode
		if nil == vaccineCode && !instCtx.containsKey("vaccineCode") {
			instCtx.addError(FHIRValidationError(missing: "vaccineCode"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.doseQuantity?.decorate(json: &json, withKey: "doseQuantity", errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		self.expirationDate?.decorate(json: &json, withKey: "expirationDate", errors: &errors)
		self.explanation?.decorate(json: &json, withKey: "explanation", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		self.lotNumber?.decorate(json: &json, withKey: "lotNumber", errors: &errors)
		self.manufacturer?.decorate(json: &json, withKey: "manufacturer", errors: &errors)
		self.notGiven?.decorate(json: &json, withKey: "notGiven", errors: &errors)
		if nil == self.notGiven {
			errors.append(FHIRValidationError(missing: "notGiven"))
		}
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		arrayDecorate(json: &json, withKey: "practitioner", using: self.practitioner, errors: &errors)
		self.primarySource?.decorate(json: &json, withKey: "primarySource", errors: &errors)
		if nil == self.primarySource {
			errors.append(FHIRValidationError(missing: "primarySource"))
		}
		arrayDecorate(json: &json, withKey: "reaction", using: self.reaction, errors: &errors)
		self.reportOrigin?.decorate(json: &json, withKey: "reportOrigin", errors: &errors)
		self.route?.decorate(json: &json, withKey: "route", errors: &errors)
		self.site?.decorate(json: &json, withKey: "site", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "vaccinationProtocol", using: self.vaccinationProtocol, errors: &errors)
		self.vaccineCode?.decorate(json: &json, withKey: "vaccineCode", errors: &errors)
		if nil == self.vaccineCode {
			errors.append(FHIRValidationError(missing: "vaccineCode"))
		}
	}
}


/**
Administration/non-administration reasons.

Reasons why a vaccine was or was not administered.
*/
open class ImmunizationExplanation: BackboneElement {
	override open class var resourceType: String {
		get { return "ImmunizationExplanation" }
	}
	
	/// Why immunization occurred.
	public var reason: [CodeableConcept]?
	
	/// Why immunization did not occur.
	public var reasonNotGiven: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		reason = createInstances(of: CodeableConcept.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
		reasonNotGiven = createInstances(of: CodeableConcept.self, for: "reasonNotGiven", in: json, context: &instCtx, owner: self) ?? reasonNotGiven
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "reason", using: self.reason, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonNotGiven", using: self.reasonNotGiven, errors: &errors)
	}
}


/**
Who performed event.

Indicates who or what performed the event.
*/
open class ImmunizationPractitioner: BackboneElement {
	override open class var resourceType: String {
		get { return "ImmunizationPractitioner" }
	}
	
	/// Individual who was performing.
	public var actor: Reference?
	
	/// What type of performance was done.
	public var role: CodeableConcept?
	
	
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
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		if nil == self.actor {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
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


/**
What protocol was followed.

Contains information about the protocol(s) under which the vaccine was administered.
*/
open class ImmunizationVaccinationProtocol: BackboneElement {
	override open class var resourceType: String {
		get { return "ImmunizationVaccinationProtocol" }
	}
	
	/// Who is responsible for protocol.
	public var authority: Reference?
	
	/// Details of vaccine protocol.
	public var description_fhir: FHIRString?
	
	/// Dose number within series.
	public var doseSequence: FHIRInteger?
	
	/// Indicates if dose counts towards immunity.
	public var doseStatus: CodeableConcept?
	
	/// Why dose does (not) count.
	public var doseStatusReason: CodeableConcept?
	
	/// Name of vaccine series.
	public var series: FHIRString?
	
	/// Recommended number of doses for immunity.
	public var seriesDoses: FHIRInteger?
	
	/// Disease immunized against.
	public var targetDisease: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(doseStatus: CodeableConcept, targetDisease: [CodeableConcept]) {
		self.init()
		self.doseStatus = doseStatus
		self.targetDisease = targetDisease
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authority = createInstance(type: Reference.self, for: "authority", in: json, context: &instCtx, owner: self) ?? authority
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		doseSequence = createInstance(type: FHIRInteger.self, for: "doseSequence", in: json, context: &instCtx, owner: self) ?? doseSequence
		doseStatus = createInstance(type: CodeableConcept.self, for: "doseStatus", in: json, context: &instCtx, owner: self) ?? doseStatus
		if nil == doseStatus && !instCtx.containsKey("doseStatus") {
			instCtx.addError(FHIRValidationError(missing: "doseStatus"))
		}
		doseStatusReason = createInstance(type: CodeableConcept.self, for: "doseStatusReason", in: json, context: &instCtx, owner: self) ?? doseStatusReason
		series = createInstance(type: FHIRString.self, for: "series", in: json, context: &instCtx, owner: self) ?? series
		seriesDoses = createInstance(type: FHIRInteger.self, for: "seriesDoses", in: json, context: &instCtx, owner: self) ?? seriesDoses
		targetDisease = createInstances(of: CodeableConcept.self, for: "targetDisease", in: json, context: &instCtx, owner: self) ?? targetDisease
		if (nil == targetDisease || targetDisease!.isEmpty) && !instCtx.containsKey("targetDisease") {
			instCtx.addError(FHIRValidationError(missing: "targetDisease"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authority?.decorate(json: &json, withKey: "authority", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.doseSequence?.decorate(json: &json, withKey: "doseSequence", errors: &errors)
		self.doseStatus?.decorate(json: &json, withKey: "doseStatus", errors: &errors)
		if nil == self.doseStatus {
			errors.append(FHIRValidationError(missing: "doseStatus"))
		}
		self.doseStatusReason?.decorate(json: &json, withKey: "doseStatusReason", errors: &errors)
		self.series?.decorate(json: &json, withKey: "series", errors: &errors)
		self.seriesDoses?.decorate(json: &json, withKey: "seriesDoses", errors: &errors)
		arrayDecorate(json: &json, withKey: "targetDisease", using: self.targetDisease, errors: &errors)
		if nil == targetDisease || self.targetDisease!.isEmpty {
			errors.append(FHIRValidationError(missing: "targetDisease"))
		}
	}
}

