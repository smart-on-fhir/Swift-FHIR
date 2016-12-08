//
//  Encounter.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Encounter) on 2016-12-08.
//  2016, SMART Health IT.
//

import Foundation


/**
An interaction during which services are provided to the patient.

An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or
assessing the health status of a patient.
*/
open class Encounter: DomainResource {
	override open class var resourceType: String {
		get { return "Encounter" }
	}
	
	/// inpatient | outpatient | ambulatory | emergency +.
	public var `class`: Coding?
	
	/// The set of accounts that may be used for billing for this Encounter.
	public var account: [Reference]?
	
	/// The appointment that scheduled this encounter.
	public var appointment: Reference?
	
	/// Episode(s) of care that this encounter should be recorded against.
	public var episodeOfCare: [Reference]?
	
	/// Details about the admission to a healthcare service.
	public var hospitalization: EncounterHospitalization?
	
	/// Identifier(s) by which this encounter is known.
	public var identifier: [Identifier]?
	
	/// The ReferralRequest that initiated this encounter.
	public var incomingReferral: [Reference]?
	
	/// Reason the encounter takes place (resource).
	public var indication: [Reference]?
	
	/// Quantity of time the encounter lasted (less time absent).
	public var length: Duration?
	
	/// List of locations where the patient has been.
	public var location: [EncounterLocation]?
	
	/// Another Encounter this encounter is part of.
	public var partOf: Reference?
	
	/// List of participants involved in the encounter.
	public var participant: [EncounterParticipant]?
	
	/// The patient present at the encounter.
	public var patient: Reference?
	
	/// The start and end time of the encounter.
	public var period: Period?
	
	/// Indicates the urgency of the encounter.
	public var priority: CodeableConcept?
	
	/// Reason the encounter takes place (code).
	public var reason: [CodeableConcept]?
	
	/// The custodian organization of this Encounter record.
	public var serviceProvider: Reference?
	
	/// None
	public var status: EncounterStatus?
	
	/// List of past encounter statuses.
	public var statusHistory: [EncounterStatusHistory]?
	
	/// Specific type of encounter.
	public var type: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: EncounterStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		`class` = try createInstance(type: Coding.self, for: "class", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? `class`
		account = try createInstances(of: Reference.self, for: "account", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? account
		appointment = try createInstance(type: Reference.self, for: "appointment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? appointment
		episodeOfCare = try createInstances(of: Reference.self, for: "episodeOfCare", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? episodeOfCare
		hospitalization = try createInstance(type: EncounterHospitalization.self, for: "hospitalization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? hospitalization
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		incomingReferral = try createInstances(of: Reference.self, for: "incomingReferral", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? incomingReferral
		indication = try createInstances(of: Reference.self, for: "indication", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? indication
		length = try createInstance(type: Duration.self, for: "length", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? length
		location = try createInstances(of: EncounterLocation.self, for: "location", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? location
		partOf = try createInstance(type: Reference.self, for: "partOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? partOf
		participant = try createInstances(of: EncounterParticipant.self, for: "participant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? participant
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		priority = try createInstance(type: CodeableConcept.self, for: "priority", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? priority
		reason = try createInstances(of: CodeableConcept.self, for: "reason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reason
		serviceProvider = try createInstance(type: Reference.self, for: "serviceProvider", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? serviceProvider
		status = createEnum(type: EncounterStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		statusHistory = try createInstances(of: EncounterStatusHistory.self, for: "statusHistory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? statusHistory
		type = try createInstances(of: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.`class`?.decorate(json: &json, withKey: "class", errors: &errors)
		arrayDecorate(json: &json, withKey: "account", using: self.account, errors: &errors)
		self.appointment?.decorate(json: &json, withKey: "appointment", errors: &errors)
		arrayDecorate(json: &json, withKey: "episodeOfCare", using: self.episodeOfCare, errors: &errors)
		self.hospitalization?.decorate(json: &json, withKey: "hospitalization", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "incomingReferral", using: self.incomingReferral, errors: &errors)
		arrayDecorate(json: &json, withKey: "indication", using: self.indication, errors: &errors)
		self.length?.decorate(json: &json, withKey: "length", errors: &errors)
		arrayDecorate(json: &json, withKey: "location", using: self.location, errors: &errors)
		self.partOf?.decorate(json: &json, withKey: "partOf", errors: &errors)
		arrayDecorate(json: &json, withKey: "participant", using: self.participant, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "reason", using: self.reason, errors: &errors)
		self.serviceProvider?.decorate(json: &json, withKey: "serviceProvider", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "statusHistory", using: self.statusHistory, errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
	}
}


/**
Details about the admission to a healthcare service.
*/
open class EncounterHospitalization: BackboneElement {
	override open class var resourceType: String {
		get { return "EncounterHospitalization" }
	}
	
	/// From where patient was admitted (physician referral, transfer).
	public var admitSource: CodeableConcept?
	
	/// The admitting diagnosis as reported by admitting practitioner.
	public var admittingDiagnosis: [Reference]?
	
	/// Location to which the patient is discharged.
	public var destination: Reference?
	
	/// Diet preferences reported by the patient.
	public var dietPreference: [CodeableConcept]?
	
	/// The final diagnosis given a patient before release from the hospital after all testing, surgery, and workup are
	/// complete.
	public var dischargeDiagnosis: [Reference]?
	
	/// Category or kind of location after discharge.
	public var dischargeDisposition: CodeableConcept?
	
	/// The location from which the patient came before admission.
	public var origin: Reference?
	
	/// Pre-admission identifier.
	public var preAdmissionIdentifier: Identifier?
	
	/// The type of hospital re-admission that has occurred (if any). If the value is absent, then this is not
	/// identified as a readmission.
	public var reAdmission: CodeableConcept?
	
	/// Wheelchair, translator, stretcher, etc..
	public var specialArrangement: [CodeableConcept]?
	
	/// Special courtesies (VIP, board member).
	public var specialCourtesy: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		admitSource = try createInstance(type: CodeableConcept.self, for: "admitSource", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? admitSource
		admittingDiagnosis = try createInstances(of: Reference.self, for: "admittingDiagnosis", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? admittingDiagnosis
		destination = try createInstance(type: Reference.self, for: "destination", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? destination
		dietPreference = try createInstances(of: CodeableConcept.self, for: "dietPreference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dietPreference
		dischargeDiagnosis = try createInstances(of: Reference.self, for: "dischargeDiagnosis", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dischargeDiagnosis
		dischargeDisposition = try createInstance(type: CodeableConcept.self, for: "dischargeDisposition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dischargeDisposition
		origin = try createInstance(type: Reference.self, for: "origin", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? origin
		preAdmissionIdentifier = try createInstance(type: Identifier.self, for: "preAdmissionIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? preAdmissionIdentifier
		reAdmission = try createInstance(type: CodeableConcept.self, for: "reAdmission", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reAdmission
		specialArrangement = try createInstances(of: CodeableConcept.self, for: "specialArrangement", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? specialArrangement
		specialCourtesy = try createInstances(of: CodeableConcept.self, for: "specialCourtesy", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? specialCourtesy
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.admitSource?.decorate(json: &json, withKey: "admitSource", errors: &errors)
		arrayDecorate(json: &json, withKey: "admittingDiagnosis", using: self.admittingDiagnosis, errors: &errors)
		self.destination?.decorate(json: &json, withKey: "destination", errors: &errors)
		arrayDecorate(json: &json, withKey: "dietPreference", using: self.dietPreference, errors: &errors)
		arrayDecorate(json: &json, withKey: "dischargeDiagnosis", using: self.dischargeDiagnosis, errors: &errors)
		self.dischargeDisposition?.decorate(json: &json, withKey: "dischargeDisposition", errors: &errors)
		self.origin?.decorate(json: &json, withKey: "origin", errors: &errors)
		self.preAdmissionIdentifier?.decorate(json: &json, withKey: "preAdmissionIdentifier", errors: &errors)
		self.reAdmission?.decorate(json: &json, withKey: "reAdmission", errors: &errors)
		arrayDecorate(json: &json, withKey: "specialArrangement", using: self.specialArrangement, errors: &errors)
		arrayDecorate(json: &json, withKey: "specialCourtesy", using: self.specialCourtesy, errors: &errors)
	}
}


/**
List of locations where the patient has been.

List of locations where  the patient has been during this encounter.
*/
open class EncounterLocation: BackboneElement {
	override open class var resourceType: String {
		get { return "EncounterLocation" }
	}
	
	/// Location the encounter takes place.
	public var location: Reference?
	
	/// Time period during which the patient was present at the location.
	public var period: Period?
	
	/// The status of the participants' presence at the specified location during the period specified. If the
	/// participant is is no longer at the location, then the period will have an end date/time.
	public var status: EncounterLocationStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(location: Reference) {
		self.init()
		self.location = location
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		location = try createInstance(type: Reference.self, for: "location", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? location
		if nil == location && !presentKeys.contains("location") {
			errors.append(FHIRValidationError(missing: "location"))
		}
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		status = createEnum(type: EncounterLocationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		if nil == self.location {
			errors.append(FHIRValidationError(missing: "location"))
		}
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
	}
}


/**
List of participants involved in the encounter.

The list of people responsible for providing the service.
*/
open class EncounterParticipant: BackboneElement {
	override open class var resourceType: String {
		get { return "EncounterParticipant" }
	}
	
	/// Persons involved in the encounter other than the patient.
	public var individual: Reference?
	
	/// Period of time during the encounter that the participant participated.
	public var period: Period?
	
	/// Role of participant in encounter.
	public var type: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		individual = try createInstance(type: Reference.self, for: "individual", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? individual
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		type = try createInstances(of: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.individual?.decorate(json: &json, withKey: "individual", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
	}
}


/**
List of past encounter statuses.

The status history permits the encounter resource to contain the status history without needing to read through the
historical versions of the resource, or even have the server store them.
*/
open class EncounterStatusHistory: BackboneElement {
	override open class var resourceType: String {
		get { return "EncounterStatusHistory" }
	}
	
	/// The time that the episode was in the specified status.
	public var period: Period?
	
	/// None
	public var status: EncounterStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(period: Period, status: EncounterStatus) {
		self.init()
		self.period = period
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		if nil == period && !presentKeys.contains("period") {
			errors.append(FHIRValidationError(missing: "period"))
		}
		status = createEnum(type: EncounterStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		if nil == self.period {
			errors.append(FHIRValidationError(missing: "period"))
		}
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
	}
}

