//
//  EpisodeOfCare.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/EpisodeOfCare) on 2016-11-04.
//  2016, SMART Health IT.
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
	
	/// Conditions/problems/diagnoses this episode of care is for.
	public var condition: [Reference]?
	
	/// Identifier(s) for the EpisodeOfCare.
	public var identifier: [Identifier]?
	
	/// Organization that assumes care.
	public var managingOrganization: Reference?
	
	/// Patient for this episode of care.
	public var patient: Reference?
	
	/// Interval during responsibility is assumed.
	public var period: Period?
	
	/// Originating Referral Request(s).
	public var referralRequest: [Reference]?
	
	/// planned | waitlist | active | onhold | finished | cancelled.
	public var status: EpisodeOfCareStatus?
	
	/// Past list of status codes.
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
		if let exist = json["account"] {
			presentKeys.insert("account")
			if let val = exist as? [FHIRJSON] {
				do {
					self.account = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "account"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "account", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["careManager"] {
			presentKeys.insert("careManager")
			if let val = exist as? FHIRJSON {
				do {
					self.careManager = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "careManager"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "careManager", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["condition"] {
			presentKeys.insert("condition")
			if let val = exist as? [FHIRJSON] {
				do {
					self.condition = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "condition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "condition", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["managingOrganization"] {
			presentKeys.insert("managingOrganization")
			if let val = exist as? FHIRJSON {
				do {
					self.managingOrganization = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "managingOrganization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "managingOrganization", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["referralRequest"] {
			presentKeys.insert("referralRequest")
			if let val = exist as? [FHIRJSON] {
				do {
					self.referralRequest = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "referralRequest"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "referralRequest", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = EpisodeOfCareStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["statusHistory"] {
			presentKeys.insert("statusHistory")
			if let val = exist as? [FHIRJSON] {
				do {
					self.statusHistory = try EpisodeOfCareStatusHistory.instantiate(fromArray: val, owner: self) as? [EpisodeOfCareStatusHistory]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "statusHistory"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "statusHistory", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["team"] {
			presentKeys.insert("team")
			if let val = exist as? [FHIRJSON] {
				do {
					self.team = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "team"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "team", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? [FHIRJSON] {
				do {
					self.type = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let account = self.account {
			json["account"] = account.map() { $0.asJSON(errors: &errors) }
		}
		if let careManager = self.careManager {
			json["careManager"] = careManager.asJSON(errors: &errors)
		}
		if let condition = self.condition {
			json["condition"] = condition.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let managingOrganization = self.managingOrganization {
			json["managingOrganization"] = managingOrganization.asJSON(errors: &errors)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let referralRequest = self.referralRequest {
			json["referralRequest"] = referralRequest.map() { $0.asJSON(errors: &errors) }
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let statusHistory = self.statusHistory {
			json["statusHistory"] = statusHistory.map() { $0.asJSON(errors: &errors) }
		}
		if let team = self.team {
			json["team"] = team.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Past list of status codes.

The history of statuses that the EpisodeOfCare has been through (without requiring processing the history of the
resource).
*/
open class EpisodeOfCareStatusHistory: BackboneElement {
	override open class var resourceType: String {
		get { return "EpisodeOfCareStatusHistory" }
	}
	
	/// Period for the status.
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
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "period"))
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = EpisodeOfCareStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		
		return json
	}
}

