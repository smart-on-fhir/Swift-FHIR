//
//  Encounter.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/Encounter) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  An interaction during which services are provided to the patient.
 *
 *  An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or
 *  assessing the health status of a patient.
 */
open class Encounter: DomainResource {
	override open class var resourceType: String {
		get { return "Encounter" }
	}
	
	/// The set of accounts that may be used for billing for this Encounter.
	public var account: [Reference]?
	
	/// The appointment that scheduled this encounter.
	public var appointment: Reference?
	
	/// inpatient | outpatient | ambulatory | emergency +.
	public var class_fhir: Coding?
	
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
	
	/// planned | arrived | in-progress | onleave | finished | cancelled | entered-in-error.
	public var status: String?
	
	/// List of past encounter statuses.
	public var statusHistory: [EncounterStatusHistory]?
	
	/// Specific type of encounter.
	public var type: [CodeableConcept]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init(json: nil)
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["account"] {
				presentKeys.insert("account")
				if let val = exist as? [FHIRJSON] {
					self.account = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "account", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["appointment"] {
				presentKeys.insert("appointment")
				if let val = exist as? FHIRJSON {
					self.appointment = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "appointment", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["class"] {
				presentKeys.insert("class")
				if let val = exist as? FHIRJSON {
					self.class_fhir = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "class", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["episodeOfCare"] {
				presentKeys.insert("episodeOfCare")
				if let val = exist as? [FHIRJSON] {
					self.episodeOfCare = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "episodeOfCare", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["hospitalization"] {
				presentKeys.insert("hospitalization")
				if let val = exist as? FHIRJSON {
					self.hospitalization = EncounterHospitalization(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "hospitalization", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["incomingReferral"] {
				presentKeys.insert("incomingReferral")
				if let val = exist as? [FHIRJSON] {
					self.incomingReferral = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "incomingReferral", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["indication"] {
				presentKeys.insert("indication")
				if let val = exist as? [FHIRJSON] {
					self.indication = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "indication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["length"] {
				presentKeys.insert("length")
				if let val = exist as? FHIRJSON {
					self.length = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "length", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? [FHIRJSON] {
					self.location = EncounterLocation.instantiate(fromArray: val, owner: self) as? [EncounterLocation]
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["partOf"] {
				presentKeys.insert("partOf")
				if let val = exist as? FHIRJSON {
					self.partOf = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "partOf", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["participant"] {
				presentKeys.insert("participant")
				if let val = exist as? [FHIRJSON] {
					self.participant = EncounterParticipant.instantiate(fromArray: val, owner: self) as? [EncounterParticipant]
				}
				else {
					errors.append(FHIRJSONError(key: "participant", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["priority"] {
				presentKeys.insert("priority")
				if let val = exist as? FHIRJSON {
					self.priority = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "priority", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? [FHIRJSON] {
					self.reason = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["serviceProvider"] {
				presentKeys.insert("serviceProvider")
				if let val = exist as? FHIRJSON {
					self.serviceProvider = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "serviceProvider", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist = js["statusHistory"] {
				presentKeys.insert("statusHistory")
				if let val = exist as? [FHIRJSON] {
					self.statusHistory = EncounterStatusHistory.instantiate(fromArray: val, owner: self) as? [EncounterStatusHistory]
				}
				else {
					errors.append(FHIRJSONError(key: "statusHistory", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [FHIRJSON] {
					self.type = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let account = self.account {
			json["account"] = account.map() { $0.asJSON() }
		}
		if let appointment = self.appointment {
			json["appointment"] = appointment.asJSON()
		}
		if let class_fhir = self.class_fhir {
			json["class"] = class_fhir.asJSON()
		}
		if let episodeOfCare = self.episodeOfCare {
			json["episodeOfCare"] = episodeOfCare.map() { $0.asJSON() }
		}
		if let hospitalization = self.hospitalization {
			json["hospitalization"] = hospitalization.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let incomingReferral = self.incomingReferral {
			json["incomingReferral"] = incomingReferral.map() { $0.asJSON() }
		}
		if let indication = self.indication {
			json["indication"] = indication.map() { $0.asJSON() }
		}
		if let length = self.length {
			json["length"] = length.asJSON()
		}
		if let location = self.location {
			json["location"] = location.map() { $0.asJSON() }
		}
		if let partOf = self.partOf {
			json["partOf"] = partOf.asJSON()
		}
		if let participant = self.participant {
			json["participant"] = participant.map() { $0.asJSON() }
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.map() { $0.asJSON() }
		}
		if let serviceProvider = self.serviceProvider {
			json["serviceProvider"] = serviceProvider.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let statusHistory = self.statusHistory {
			json["statusHistory"] = statusHistory.map() { $0.asJSON() }
		}
		if let type = self.type {
			json["type"] = type.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Details about the admission to a healthcare service.
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
	
	/// The final diagnosis given a patient before release from the hospital after all testing, surgery, and workup are complete.
	public var dischargeDiagnosis: [Reference]?
	
	/// Category or kind of location after discharge.
	public var dischargeDisposition: CodeableConcept?
	
	/// The location from which the patient came before admission.
	public var origin: Reference?
	
	/// Pre-admission identifier.
	public var preAdmissionIdentifier: Identifier?
	
	/// The type of hospital re-admission that has occurred (if any). If the value is absent, then this is not identified as a readmission.
	public var reAdmission: CodeableConcept?
	
	/// Wheelchair, translator, stretcher, etc..
	public var specialArrangement: [CodeableConcept]?
	
	/// Special courtesies (VIP, board member).
	public var specialCourtesy: [CodeableConcept]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["admitSource"] {
				presentKeys.insert("admitSource")
				if let val = exist as? FHIRJSON {
					self.admitSource = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "admitSource", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["admittingDiagnosis"] {
				presentKeys.insert("admittingDiagnosis")
				if let val = exist as? [FHIRJSON] {
					self.admittingDiagnosis = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "admittingDiagnosis", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["destination"] {
				presentKeys.insert("destination")
				if let val = exist as? FHIRJSON {
					self.destination = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "destination", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["dietPreference"] {
				presentKeys.insert("dietPreference")
				if let val = exist as? [FHIRJSON] {
					self.dietPreference = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "dietPreference", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["dischargeDiagnosis"] {
				presentKeys.insert("dischargeDiagnosis")
				if let val = exist as? [FHIRJSON] {
					self.dischargeDiagnosis = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "dischargeDiagnosis", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["dischargeDisposition"] {
				presentKeys.insert("dischargeDisposition")
				if let val = exist as? FHIRJSON {
					self.dischargeDisposition = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dischargeDisposition", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["origin"] {
				presentKeys.insert("origin")
				if let val = exist as? FHIRJSON {
					self.origin = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "origin", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["preAdmissionIdentifier"] {
				presentKeys.insert("preAdmissionIdentifier")
				if let val = exist as? FHIRJSON {
					self.preAdmissionIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "preAdmissionIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["reAdmission"] {
				presentKeys.insert("reAdmission")
				if let val = exist as? FHIRJSON {
					self.reAdmission = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reAdmission", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["specialArrangement"] {
				presentKeys.insert("specialArrangement")
				if let val = exist as? [FHIRJSON] {
					self.specialArrangement = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "specialArrangement", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["specialCourtesy"] {
				presentKeys.insert("specialCourtesy")
				if let val = exist as? [FHIRJSON] {
					self.specialCourtesy = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "specialCourtesy", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let admitSource = self.admitSource {
			json["admitSource"] = admitSource.asJSON()
		}
		if let admittingDiagnosis = self.admittingDiagnosis {
			json["admittingDiagnosis"] = admittingDiagnosis.map() { $0.asJSON() }
		}
		if let destination = self.destination {
			json["destination"] = destination.asJSON()
		}
		if let dietPreference = self.dietPreference {
			json["dietPreference"] = dietPreference.map() { $0.asJSON() }
		}
		if let dischargeDiagnosis = self.dischargeDiagnosis {
			json["dischargeDiagnosis"] = dischargeDiagnosis.map() { $0.asJSON() }
		}
		if let dischargeDisposition = self.dischargeDisposition {
			json["dischargeDisposition"] = dischargeDisposition.asJSON()
		}
		if let origin = self.origin {
			json["origin"] = origin.asJSON()
		}
		if let preAdmissionIdentifier = self.preAdmissionIdentifier {
			json["preAdmissionIdentifier"] = preAdmissionIdentifier.asJSON()
		}
		if let reAdmission = self.reAdmission {
			json["reAdmission"] = reAdmission.asJSON()
		}
		if let specialArrangement = self.specialArrangement {
			json["specialArrangement"] = specialArrangement.map() { $0.asJSON() }
		}
		if let specialCourtesy = self.specialCourtesy {
			json["specialCourtesy"] = specialCourtesy.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  List of locations where the patient has been.
 *
 *  List of locations where  the patient has been during this encounter.
 */
open class EncounterLocation: BackboneElement {
	override open class var resourceType: String {
		get { return "EncounterLocation" }
	}
	
	/// Location the encounter takes place.
	public var location: Reference?
	
	/// Time period during which the patient was present at the location.
	public var period: Period?
	
	/// planned | active | reserved | completed.
	public var status: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(location: Reference) {
		self.init(json: nil)
		self.location = location
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "location"))
			}
			if let exist = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}


/**
 *  List of participants involved in the encounter.
 *
 *  The list of people responsible for providing the service.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["individual"] {
				presentKeys.insert("individual")
				if let val = exist as? FHIRJSON {
					self.individual = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "individual", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [FHIRJSON] {
					self.type = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let individual = self.individual {
			json["individual"] = individual.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let type = self.type {
			json["type"] = type.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  List of past encounter statuses.
 *
 *  The status history permits the encounter resource to contain the status history without needing to read through the
 *  historical versions of the resource, or even have the server store them.
 */
open class EncounterStatusHistory: BackboneElement {
	override open class var resourceType: String {
		get { return "EncounterStatusHistory" }
	}
	
	/// The time that the episode was in the specified status.
	public var period: Period?
	
	/// planned | arrived | in-progress | onleave | finished | cancelled | entered-in-error.
	public var status: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(period: Period, status: String) {
		self.init(json: nil)
		self.period = period
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "period"))
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}

