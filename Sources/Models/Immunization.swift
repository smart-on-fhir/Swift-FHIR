//
//  Immunization.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Immunization) on 2017-02-01.
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
	
	/// Vaccination notes.
	public var note: [Annotation]?
	
	/// Who was immunized.
	public var patient: Reference?
	
	/// Who administered vaccine.
	public var performer: Reference?
	
	/// Indicates context the data was recorded in.
	public var primarySource: FHIRBool?
	
	/// Details of a reaction that follows immunization.
	public var reaction: [ImmunizationReaction]?
	
	/// Indicates the source of a secondarily reported record.
	public var reportOrigin: CodeableConcept?
	
	/// Who ordered vaccination.
	public var requester: Reference?
	
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
	
	/// Flag for whether immunization was given.
	public var wasNotGiven: FHIRBool?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, primarySource: FHIRBool, status: MedicationAdministrationStatus, vaccineCode: CodeableConcept, wasNotGiven: FHIRBool) {
		self.init()
		self.patient = patient
		self.primarySource = primarySource
		self.status = status
		self.vaccineCode = vaccineCode
		self.wasNotGiven = wasNotGiven
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		doseQuantity = try createInstance(type: Quantity.self, for: "doseQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? doseQuantity
		encounter = try createInstance(type: Reference.self, for: "encounter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? encounter
		expirationDate = try createInstance(type: FHIRDate.self, for: "expirationDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expirationDate
		explanation = try createInstance(type: ImmunizationExplanation.self, for: "explanation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? explanation
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		location = try createInstance(type: Reference.self, for: "location", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? location
		lotNumber = try createInstance(type: FHIRString.self, for: "lotNumber", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? lotNumber
		manufacturer = try createInstance(type: Reference.self, for: "manufacturer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? manufacturer
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		if nil == patient && !presentKeys.contains("patient") {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		performer = try createInstance(type: Reference.self, for: "performer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performer
		primarySource = try createInstance(type: FHIRBool.self, for: "primarySource", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? primarySource
		if nil == primarySource && !presentKeys.contains("primarySource") {
			errors.append(FHIRValidationError(missing: "primarySource"))
		}
		reaction = try createInstances(of: ImmunizationReaction.self, for: "reaction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reaction
		reportOrigin = try createInstance(type: CodeableConcept.self, for: "reportOrigin", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reportOrigin
		requester = try createInstance(type: Reference.self, for: "requester", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requester
		route = try createInstance(type: CodeableConcept.self, for: "route", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? route
		site = try createInstance(type: CodeableConcept.self, for: "site", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? site
		status = createEnum(type: MedicationAdministrationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		vaccinationProtocol = try createInstances(of: ImmunizationVaccinationProtocol.self, for: "vaccinationProtocol", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? vaccinationProtocol
		vaccineCode = try createInstance(type: CodeableConcept.self, for: "vaccineCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? vaccineCode
		if nil == vaccineCode && !presentKeys.contains("vaccineCode") {
			errors.append(FHIRValidationError(missing: "vaccineCode"))
		}
		wasNotGiven = try createInstance(type: FHIRBool.self, for: "wasNotGiven", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? wasNotGiven
		if nil == wasNotGiven && !presentKeys.contains("wasNotGiven") {
			errors.append(FHIRValidationError(missing: "wasNotGiven"))
		}
		
		return errors.isEmpty ? nil : errors
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
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.performer?.decorate(json: &json, withKey: "performer", errors: &errors)
		self.primarySource?.decorate(json: &json, withKey: "primarySource", errors: &errors)
		if nil == self.primarySource {
			errors.append(FHIRValidationError(missing: "primarySource"))
		}
		arrayDecorate(json: &json, withKey: "reaction", using: self.reaction, errors: &errors)
		self.reportOrigin?.decorate(json: &json, withKey: "reportOrigin", errors: &errors)
		self.requester?.decorate(json: &json, withKey: "requester", errors: &errors)
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
		self.wasNotGiven?.decorate(json: &json, withKey: "wasNotGiven", errors: &errors)
		if nil == self.wasNotGiven {
			errors.append(FHIRValidationError(missing: "wasNotGiven"))
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		reason = try createInstances(of: CodeableConcept.self, for: "reason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reason
		reasonNotGiven = try createInstances(of: CodeableConcept.self, for: "reasonNotGiven", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonNotGiven
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "reason", using: self.reason, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonNotGiven", using: self.reasonNotGiven, errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		detail = try createInstance(type: Reference.self, for: "detail", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? detail
		reported = try createInstance(type: FHIRBool.self, for: "reported", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reported
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		authority = try createInstance(type: Reference.self, for: "authority", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authority
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		doseSequence = try createInstance(type: FHIRInteger.self, for: "doseSequence", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? doseSequence
		doseStatus = try createInstance(type: CodeableConcept.self, for: "doseStatus", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? doseStatus
		if nil == doseStatus && !presentKeys.contains("doseStatus") {
			errors.append(FHIRValidationError(missing: "doseStatus"))
		}
		doseStatusReason = try createInstance(type: CodeableConcept.self, for: "doseStatusReason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? doseStatusReason
		series = try createInstance(type: FHIRString.self, for: "series", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? series
		seriesDoses = try createInstance(type: FHIRInteger.self, for: "seriesDoses", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? seriesDoses
		targetDisease = try createInstances(of: CodeableConcept.self, for: "targetDisease", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? targetDisease
		if (nil == targetDisease || targetDisease!.isEmpty) && !presentKeys.contains("targetDisease") {
			errors.append(FHIRValidationError(missing: "targetDisease"))
		}
		
		return errors.isEmpty ? nil : errors
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

