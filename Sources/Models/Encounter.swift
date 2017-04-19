//
//  Encounter.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Encounter) on 2017-03-22.
//  2017, SMART Health IT.
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
	
	/// List of past encounter classes.
	public var classHistory: [EncounterClassHistory]?
	
	/// The list of diagnosis relevant to this encounter.
	public var diagnosis: [EncounterDiagnosis]?
	
	/// Episode(s) of care that this encounter should be recorded against.
	public var episodeOfCare: [Reference]?
	
	/// Details about the admission to a healthcare service.
	public var hospitalization: EncounterHospitalization?
	
	/// Identifier(s) by which this encounter is known.
	public var identifier: [Identifier]?
	
	/// The ReferralRequest that initiated this encounter.
	public var incomingReferral: [Reference]?
	
	/// Quantity of time the encounter lasted (less time absent).
	public var length: Duration?
	
	/// List of locations where the patient has been.
	public var location: [EncounterLocation]?
	
	/// Another Encounter this encounter is part of.
	public var partOf: Reference?
	
	/// List of participants involved in the encounter.
	public var participant: [EncounterParticipant]?
	
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
	
	/// The patient ro group present at the encounter.
	public var subject: Reference?
	
	/// Specific type of encounter.
	public var type: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: EncounterStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		`class` = createInstance(type: Coding.self, for: "class", in: json, context: &instCtx, owner: self) ?? `class`
		account = createInstances(of: Reference.self, for: "account", in: json, context: &instCtx, owner: self) ?? account
		appointment = createInstance(type: Reference.self, for: "appointment", in: json, context: &instCtx, owner: self) ?? appointment
		classHistory = createInstances(of: EncounterClassHistory.self, for: "classHistory", in: json, context: &instCtx, owner: self) ?? classHistory
		diagnosis = createInstances(of: EncounterDiagnosis.self, for: "diagnosis", in: json, context: &instCtx, owner: self) ?? diagnosis
		episodeOfCare = createInstances(of: Reference.self, for: "episodeOfCare", in: json, context: &instCtx, owner: self) ?? episodeOfCare
		hospitalization = createInstance(type: EncounterHospitalization.self, for: "hospitalization", in: json, context: &instCtx, owner: self) ?? hospitalization
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		incomingReferral = createInstances(of: Reference.self, for: "incomingReferral", in: json, context: &instCtx, owner: self) ?? incomingReferral
		length = createInstance(type: Duration.self, for: "length", in: json, context: &instCtx, owner: self) ?? length
		location = createInstances(of: EncounterLocation.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		partOf = createInstance(type: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		participant = createInstances(of: EncounterParticipant.self, for: "participant", in: json, context: &instCtx, owner: self) ?? participant
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		priority = createInstance(type: CodeableConcept.self, for: "priority", in: json, context: &instCtx, owner: self) ?? priority
		reason = createInstances(of: CodeableConcept.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
		serviceProvider = createInstance(type: Reference.self, for: "serviceProvider", in: json, context: &instCtx, owner: self) ?? serviceProvider
		status = createEnum(type: EncounterStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		statusHistory = createInstances(of: EncounterStatusHistory.self, for: "statusHistory", in: json, context: &instCtx, owner: self) ?? statusHistory
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		type = createInstances(of: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.`class`?.decorate(json: &json, withKey: "class", errors: &errors)
		arrayDecorate(json: &json, withKey: "account", using: self.account, errors: &errors)
		self.appointment?.decorate(json: &json, withKey: "appointment", errors: &errors)
		arrayDecorate(json: &json, withKey: "classHistory", using: self.classHistory, errors: &errors)
		arrayDecorate(json: &json, withKey: "diagnosis", using: self.diagnosis, errors: &errors)
		arrayDecorate(json: &json, withKey: "episodeOfCare", using: self.episodeOfCare, errors: &errors)
		self.hospitalization?.decorate(json: &json, withKey: "hospitalization", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "incomingReferral", using: self.incomingReferral, errors: &errors)
		self.length?.decorate(json: &json, withKey: "length", errors: &errors)
		arrayDecorate(json: &json, withKey: "location", using: self.location, errors: &errors)
		self.partOf?.decorate(json: &json, withKey: "partOf", errors: &errors)
		arrayDecorate(json: &json, withKey: "participant", using: self.participant, errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "reason", using: self.reason, errors: &errors)
		self.serviceProvider?.decorate(json: &json, withKey: "serviceProvider", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "statusHistory", using: self.statusHistory, errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
	}
}


/**
List of past encounter classes.

The class history permits the tracking of the encounters transitions without needing to go  through the resource
history.

This would be used for a case where an admission starts of as an emergency encounter, then transisions into an inpatient
scenario. Doing this and not restarting a new encounter ensures that any lab/diagnostic results can more easily follow
the patient and not require re-processing and not get lost or cancelled during a kindof discharge from emergency to
inpatient.
*/
open class EncounterClassHistory: BackboneElement {
	override open class var resourceType: String {
		get { return "EncounterClassHistory" }
	}
	
	/// inpatient | outpatient | ambulatory | emergency +.
	public var `class`: Coding?
	
	/// The time that the episode was in the specified class.
	public var period: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(`class`: Coding, period: Period) {
		self.init()
		self.`class` = `class`
		self.period = period
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		`class` = createInstance(type: Coding.self, for: "class", in: json, context: &instCtx, owner: self) ?? `class`
		if nil == `class` && !instCtx.containsKey("class") {
			instCtx.addError(FHIRValidationError(missing: "class"))
		}
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		if nil == period && !instCtx.containsKey("period") {
			instCtx.addError(FHIRValidationError(missing: "period"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.`class`?.decorate(json: &json, withKey: "class", errors: &errors)
		if nil == self.`class` {
			errors.append(FHIRValidationError(missing: "class"))
		}
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		if nil == self.period {
			errors.append(FHIRValidationError(missing: "period"))
		}
	}
}


/**
The list of diagnosis relevant to this encounter.
*/
open class EncounterDiagnosis: BackboneElement {
	override open class var resourceType: String {
		get { return "EncounterDiagnosis" }
	}
	
	/// Reason the encounter takes place (resource).
	public var condition: Reference?
	
	/// Ranking of the diagnosis (for each role type).
	public var rank: FHIRInteger?
	
	/// Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …).
	public var role: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(condition: Reference) {
		self.init()
		self.condition = condition
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		condition = createInstance(type: Reference.self, for: "condition", in: json, context: &instCtx, owner: self) ?? condition
		if nil == condition && !instCtx.containsKey("condition") && !_isSummaryResource {
			instCtx.addError(FHIRValidationError(missing: "condition"))
		}
		rank = createInstance(type: FHIRInteger.self, for: "rank", in: json, context: &instCtx, owner: self) ?? rank
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.condition?.decorate(json: &json, withKey: "condition", errors: &errors)
		if nil == self.condition {
			errors.append(FHIRValidationError(missing: "condition"))
		}
		self.rank?.decorate(json: &json, withKey: "rank", errors: &errors)
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
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
	
	/// Location to which the patient is discharged.
	public var destination: Reference?
	
	/// Diet preferences reported by the patient.
	public var dietPreference: [CodeableConcept]?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		admitSource = createInstance(type: CodeableConcept.self, for: "admitSource", in: json, context: &instCtx, owner: self) ?? admitSource
		destination = createInstance(type: Reference.self, for: "destination", in: json, context: &instCtx, owner: self) ?? destination
		dietPreference = createInstances(of: CodeableConcept.self, for: "dietPreference", in: json, context: &instCtx, owner: self) ?? dietPreference
		dischargeDisposition = createInstance(type: CodeableConcept.self, for: "dischargeDisposition", in: json, context: &instCtx, owner: self) ?? dischargeDisposition
		origin = createInstance(type: Reference.self, for: "origin", in: json, context: &instCtx, owner: self) ?? origin
		preAdmissionIdentifier = createInstance(type: Identifier.self, for: "preAdmissionIdentifier", in: json, context: &instCtx, owner: self) ?? preAdmissionIdentifier
		reAdmission = createInstance(type: CodeableConcept.self, for: "reAdmission", in: json, context: &instCtx, owner: self) ?? reAdmission
		specialArrangement = createInstances(of: CodeableConcept.self, for: "specialArrangement", in: json, context: &instCtx, owner: self) ?? specialArrangement
		specialCourtesy = createInstances(of: CodeableConcept.self, for: "specialCourtesy", in: json, context: &instCtx, owner: self) ?? specialCourtesy
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.admitSource?.decorate(json: &json, withKey: "admitSource", errors: &errors)
		self.destination?.decorate(json: &json, withKey: "destination", errors: &errors)
		arrayDecorate(json: &json, withKey: "dietPreference", using: self.dietPreference, errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		if nil == location && !instCtx.containsKey("location") {
			instCtx.addError(FHIRValidationError(missing: "location"))
		}
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		status = createEnum(type: EncounterLocationStatus.self, for: "status", in: json, context: &instCtx) ?? status
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		individual = createInstance(type: Reference.self, for: "individual", in: json, context: &instCtx, owner: self) ?? individual
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		type = createInstances(of: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		if nil == period && !instCtx.containsKey("period") {
			instCtx.addError(FHIRValidationError(missing: "period"))
		}
		status = createEnum(type: EncounterStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
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

