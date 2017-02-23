//
//  EpisodeOfCare.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/EpisodeOfCare) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
An association of a Patient with an Organization and  Healthcare Provider(s) for a period of time that the Organization
assumes some level of responsibility.

An association between a patient and an organization / healthcare provider(s) during which time encounters may occur.
The managing organization assumes a level of responsibility for the patient during this time.
*/
open class EpisodeOfCare: DomainResource {
	override open class var resourceType: String {
		get { return "EpisodeOfCare" }
	}
	
	/// The set of accounts that may be used for billing for this EpisodeOfCare.
	public var account: [Reference]?
	
	/// Care manager/care co-ordinator for the patient.
	public var careManager: Reference?
	
	/// The list of diagnosis relevant to this episode of care.
	public var diagnosis: [EpisodeOfCareDiagnosis]?
	
	/// Business Identifier(s) relevant for this EpisodeOfCare.
	public var identifier: [Identifier]?
	
	/// Organization that assumes care.
	public var managingOrganization: Reference?
	
	/// The patient who is the focus of this episode of care.
	public var patient: Reference?
	
	/// Interval during responsibility is assumed.
	public var period: Period?
	
	/// Originating Referral Request(s).
	public var referralRequest: [Reference]?
	
	/// planned | waitlist | active | onhold | finished | cancelled.
	public var status: EpisodeOfCareStatus?
	
	/// Past list of status codes (the current status may be included to cover the start date of the status).
	public var statusHistory: [EpisodeOfCareStatusHistory]?
	
	/// Other practitioners facilitating this episode of care.
	public var team: [Reference]?
	
	/// Type/class  - e.g. specialist referral, disease management.
	public var type: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, status: EpisodeOfCareStatus) {
		self.init()
		self.patient = patient
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		account = try createInstances(of: Reference.self, for: "account", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? account
		careManager = try createInstance(type: Reference.self, for: "careManager", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? careManager
		diagnosis = try createInstances(of: EpisodeOfCareDiagnosis.self, for: "diagnosis", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? diagnosis
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		managingOrganization = try createInstance(type: Reference.self, for: "managingOrganization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? managingOrganization
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		if nil == patient && !presentKeys.contains("patient") {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		referralRequest = try createInstances(of: Reference.self, for: "referralRequest", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? referralRequest
		status = createEnum(type: EpisodeOfCareStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		statusHistory = try createInstances(of: EpisodeOfCareStatusHistory.self, for: "statusHistory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? statusHistory
		team = try createInstances(of: Reference.self, for: "team", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? team
		type = try createInstances(of: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "account", using: self.account, errors: &errors)
		self.careManager?.decorate(json: &json, withKey: "careManager", errors: &errors)
		arrayDecorate(json: &json, withKey: "diagnosis", using: self.diagnosis, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.managingOrganization?.decorate(json: &json, withKey: "managingOrganization", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "referralRequest", using: self.referralRequest, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "statusHistory", using: self.statusHistory, errors: &errors)
		arrayDecorate(json: &json, withKey: "team", using: self.team, errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
	}
}


/**
The list of diagnosis relevant to this episode of care.
*/
open class EpisodeOfCareDiagnosis: BackboneElement {
	override open class var resourceType: String {
		get { return "EpisodeOfCareDiagnosis" }
	}
	
	/// Conditions/problems/diagnoses this episode of care is for.
	public var condition: Reference?
	
	/// Ranking of the diagnosis (for each role type).
	public var rank: FHIRInteger?
	
	/// Role that this diagnosis has within the episode of care (e.g. admission, billing, discharge …).
	public var role: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(condition: Reference) {
		self.init()
		self.condition = condition
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		condition = try createInstance(type: Reference.self, for: "condition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? condition
		if nil == condition && !presentKeys.contains("condition") {
			errors.append(FHIRValidationError(missing: "condition"))
		}
		rank = try createInstance(type: FHIRInteger.self, for: "rank", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? rank
		role = try createInstance(type: CodeableConcept.self, for: "role", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? role
		
		return errors.isEmpty ? nil : errors
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
Past list of status codes (the current status may be included to cover the start date of the status).

The history of statuses that the EpisodeOfCare has been through (without requiring processing the history of the
resource).
*/
open class EpisodeOfCareStatusHistory: BackboneElement {
	override open class var resourceType: String {
		get { return "EpisodeOfCareStatusHistory" }
	}
	
	/// Duration the EpisodeOfCare was in the specified status.
	public var period: Period?
	
	/// planned | waitlist | active | onhold | finished | cancelled.
	public var status: EpisodeOfCareStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(period: Period, status: EpisodeOfCareStatus) {
		self.init()
		self.period = period
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		if nil == period && !presentKeys.contains("period") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "period"))
		}
		status = createEnum(type: EpisodeOfCareStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") && !_isSummaryResource {
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

