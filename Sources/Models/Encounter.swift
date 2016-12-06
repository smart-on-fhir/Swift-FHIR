//
//  Encounter.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Encounter) on 2016-12-06.
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
		if let exist = json["class"] {
			presentKeys.insert("class")
			if let val = exist as? FHIRJSON {
				do {
					self.`class` = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "class"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "class", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
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
		if let exist = json["appointment"] {
			presentKeys.insert("appointment")
			if let val = exist as? FHIRJSON {
				do {
					self.appointment = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "appointment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "appointment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["episodeOfCare"] {
			presentKeys.insert("episodeOfCare")
			if let val = exist as? [FHIRJSON] {
				do {
					self.episodeOfCare = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "episodeOfCare"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "episodeOfCare", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["hospitalization"] {
			presentKeys.insert("hospitalization")
			if let val = exist as? FHIRJSON {
				do {
					self.hospitalization = try EncounterHospitalization(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "hospitalization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "hospitalization", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["incomingReferral"] {
			presentKeys.insert("incomingReferral")
			if let val = exist as? [FHIRJSON] {
				do {
					self.incomingReferral = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "incomingReferral"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "incomingReferral", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["indication"] {
			presentKeys.insert("indication")
			if let val = exist as? [FHIRJSON] {
				do {
					self.indication = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "indication"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "indication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["length"] {
			presentKeys.insert("length")
			if let val = exist as? FHIRJSON {
				do {
					self.length = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "length"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "length", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["location"] {
			presentKeys.insert("location")
			if let val = exist as? [FHIRJSON] {
				do {
					self.location = try EncounterLocation.instantiate(fromArray: val, owner: self) as? [EncounterLocation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "location"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "location", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["partOf"] {
			presentKeys.insert("partOf")
			if let val = exist as? FHIRJSON {
				do {
					self.partOf = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "partOf"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "partOf", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["participant"] {
			presentKeys.insert("participant")
			if let val = exist as? [FHIRJSON] {
				do {
					self.participant = try EncounterParticipant.instantiate(fromArray: val, owner: self) as? [EncounterParticipant]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "participant"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "participant", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["priority"] {
			presentKeys.insert("priority")
			if let val = exist as? FHIRJSON {
				do {
					self.priority = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "priority"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "priority", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reason = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["serviceProvider"] {
			presentKeys.insert("serviceProvider")
			if let val = exist as? FHIRJSON {
				do {
					self.serviceProvider = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "serviceProvider"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "serviceProvider", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = EncounterStatus(rawValue: val) {
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
					self.statusHistory = try EncounterStatusHistory.instantiate(fromArray: val, owner: self) as? [EncounterStatusHistory]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "statusHistory"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "statusHistory", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		
		if let `class` = self.`class` {
			json["class"] = `class`.asJSON(errors: &errors)
		}
		if let account = self.account {
			json["account"] = account.map() { $0.asJSON(errors: &errors) }
		}
		if let appointment = self.appointment {
			json["appointment"] = appointment.asJSON(errors: &errors)
		}
		if let episodeOfCare = self.episodeOfCare {
			json["episodeOfCare"] = episodeOfCare.map() { $0.asJSON(errors: &errors) }
		}
		if let hospitalization = self.hospitalization {
			json["hospitalization"] = hospitalization.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let incomingReferral = self.incomingReferral {
			json["incomingReferral"] = incomingReferral.map() { $0.asJSON(errors: &errors) }
		}
		if let indication = self.indication {
			json["indication"] = indication.map() { $0.asJSON(errors: &errors) }
		}
		if let length = self.length {
			json["length"] = length.asJSON(errors: &errors)
		}
		if let location = self.location {
			json["location"] = location.map() { $0.asJSON(errors: &errors) }
		}
		if let partOf = self.partOf {
			json["partOf"] = partOf.asJSON(errors: &errors)
		}
		if let participant = self.participant {
			json["participant"] = participant.map() { $0.asJSON(errors: &errors) }
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON(errors: &errors)
		}
		if let reason = self.reason {
			json["reason"] = reason.map() { $0.asJSON(errors: &errors) }
		}
		if let serviceProvider = self.serviceProvider {
			json["serviceProvider"] = serviceProvider.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let statusHistory = self.statusHistory {
			json["statusHistory"] = statusHistory.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
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
		if let exist = json["admitSource"] {
			presentKeys.insert("admitSource")
			if let val = exist as? FHIRJSON {
				do {
					self.admitSource = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "admitSource"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "admitSource", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["admittingDiagnosis"] {
			presentKeys.insert("admittingDiagnosis")
			if let val = exist as? [FHIRJSON] {
				do {
					self.admittingDiagnosis = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "admittingDiagnosis"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "admittingDiagnosis", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["destination"] {
			presentKeys.insert("destination")
			if let val = exist as? FHIRJSON {
				do {
					self.destination = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "destination"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "destination", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["dietPreference"] {
			presentKeys.insert("dietPreference")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dietPreference = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dietPreference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dietPreference", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["dischargeDiagnosis"] {
			presentKeys.insert("dischargeDiagnosis")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dischargeDiagnosis = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dischargeDiagnosis"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dischargeDiagnosis", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["dischargeDisposition"] {
			presentKeys.insert("dischargeDisposition")
			if let val = exist as? FHIRJSON {
				do {
					self.dischargeDisposition = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dischargeDisposition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dischargeDisposition", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["origin"] {
			presentKeys.insert("origin")
			if let val = exist as? FHIRJSON {
				do {
					self.origin = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "origin"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "origin", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["preAdmissionIdentifier"] {
			presentKeys.insert("preAdmissionIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.preAdmissionIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "preAdmissionIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "preAdmissionIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reAdmission"] {
			presentKeys.insert("reAdmission")
			if let val = exist as? FHIRJSON {
				do {
					self.reAdmission = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reAdmission"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reAdmission", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["specialArrangement"] {
			presentKeys.insert("specialArrangement")
			if let val = exist as? [FHIRJSON] {
				do {
					self.specialArrangement = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "specialArrangement"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "specialArrangement", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["specialCourtesy"] {
			presentKeys.insert("specialCourtesy")
			if let val = exist as? [FHIRJSON] {
				do {
					self.specialCourtesy = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "specialCourtesy"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "specialCourtesy", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let admitSource = self.admitSource {
			json["admitSource"] = admitSource.asJSON(errors: &errors)
		}
		if let admittingDiagnosis = self.admittingDiagnosis {
			json["admittingDiagnosis"] = admittingDiagnosis.map() { $0.asJSON(errors: &errors) }
		}
		if let destination = self.destination {
			json["destination"] = destination.asJSON(errors: &errors)
		}
		if let dietPreference = self.dietPreference {
			json["dietPreference"] = dietPreference.map() { $0.asJSON(errors: &errors) }
		}
		if let dischargeDiagnosis = self.dischargeDiagnosis {
			json["dischargeDiagnosis"] = dischargeDiagnosis.map() { $0.asJSON(errors: &errors) }
		}
		if let dischargeDisposition = self.dischargeDisposition {
			json["dischargeDisposition"] = dischargeDisposition.asJSON(errors: &errors)
		}
		if let origin = self.origin {
			json["origin"] = origin.asJSON(errors: &errors)
		}
		if let preAdmissionIdentifier = self.preAdmissionIdentifier {
			json["preAdmissionIdentifier"] = preAdmissionIdentifier.asJSON(errors: &errors)
		}
		if let reAdmission = self.reAdmission {
			json["reAdmission"] = reAdmission.asJSON(errors: &errors)
		}
		if let specialArrangement = self.specialArrangement {
			json["specialArrangement"] = specialArrangement.map() { $0.asJSON(errors: &errors) }
		}
		if let specialCourtesy = self.specialCourtesy {
			json["specialCourtesy"] = specialCourtesy.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
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
		if let exist = json["location"] {
			presentKeys.insert("location")
			if let val = exist as? FHIRJSON {
				do {
					self.location = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "location"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "location", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "location"))
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
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = EncounterLocationStatus(rawValue: val) {
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let location = self.location {
			json["location"] = location.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "location"))
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		
		return json
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
		if let exist = json["individual"] {
			presentKeys.insert("individual")
			if let val = exist as? FHIRJSON {
				do {
					self.individual = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "individual"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "individual", wants: FHIRJSON.self, has: type(of: exist)))
			}
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
		
		if let individual = self.individual {
			json["individual"] = individual.asJSON(errors: &errors)
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
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
				if let enumval = EncounterStatus(rawValue: val) {
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
		else {
			errors.append(FHIRValidationError(missing: "period"))
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		
		return json
	}
}

