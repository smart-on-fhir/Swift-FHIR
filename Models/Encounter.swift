//
//  Encounter.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Encounter) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  An interaction during which services are provided to the patient.
 *
 *  An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or
 *  assessing the health status of a patient.
 */
public class Encounter: DomainResource
{
	override public class var resourceName: String {
		get { return "Encounter" }
	}
	
	/// inpatient | outpatient | ambulatory | emergency +
	public var class_fhir: String?
	
	/// An episode of care that this encounter should be recorded against
	public var episodeOfCare: Reference?
	
	/// The appointment that scheduled this encounter
	public var fulfills: Reference?
	
	/// Details about an admission to a clinic
	public var hospitalization: EncounterHospitalization?
	
	/// Identifier(s) by which this encounter is known
	public var identifier: [Identifier]?
	
	/// Incoming Referral Request
	public var incomingReferralRequest: [Reference]?
	
	/// Reason the encounter takes place (resource)
	public var indication: [Reference]?
	
	/// Quantity of time the encounter lasted (less time absent)
	public var length: Duration?
	
	/// List of locations the patient has been at
	public var location: [EncounterLocation]?
	
	/// Another Encounter this encounter is part of
	public var partOf: Reference?
	
	/// List of participants involved in the encounter
	public var participant: [EncounterParticipant]?
	
	/// The patient present at the encounter
	public var patient: Reference?
	
	/// The start and end time of the encounter
	public var period: Period?
	
	/// Indicates the urgency of the encounter
	public var priority: CodeableConcept?
	
	/// Reason the encounter takes place (code)
	public var reason: [CodeableConcept]?
	
	/// The custodian organization of this Encounter record
	public var serviceProvider: Reference?
	
	/// planned | arrived | in-progress | onleave | finished | cancelled
	public var status: String?
	
	/// List of Encounter statuses
	public var statusHistory: [EncounterStatusHistory]?
	
	/// Specific type of encounter
	public var type: [CodeableConcept]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["class"] {
				presentKeys.insert("class")
				if let val = exist as? String {
					self.class_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "class", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["episodeOfCare"] {
				presentKeys.insert("episodeOfCare")
				if let val = exist as? FHIRJSON {
					self.episodeOfCare = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "episodeOfCare", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fulfills"] {
				presentKeys.insert("fulfills")
				if let val = exist as? FHIRJSON {
					self.fulfills = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fulfills", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["hospitalization"] {
				presentKeys.insert("hospitalization")
				if let val = exist as? FHIRJSON {
					self.hospitalization = EncounterHospitalization(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "hospitalization", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["incomingReferralRequest"] {
				presentKeys.insert("incomingReferralRequest")
				if let val = exist as? [FHIRJSON] {
					self.incomingReferralRequest = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "incomingReferralRequest", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["indication"] {
				presentKeys.insert("indication")
				if let val = exist as? [FHIRJSON] {
					self.indication = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "indication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["length"] {
				presentKeys.insert("length")
				if let val = exist as? FHIRJSON {
					self.length = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "length", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? [FHIRJSON] {
					self.location = EncounterLocation.from(val, owner: self) as? [EncounterLocation]
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["partOf"] {
				presentKeys.insert("partOf")
				if let val = exist as? FHIRJSON {
					self.partOf = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "partOf", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["participant"] {
				presentKeys.insert("participant")
				if let val = exist as? [FHIRJSON] {
					self.participant = EncounterParticipant.from(val, owner: self) as? [EncounterParticipant]
				}
				else {
					errors.append(FHIRJSONError(key: "participant", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["priority"] {
				presentKeys.insert("priority")
				if let val = exist as? FHIRJSON {
					self.priority = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "priority", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? [FHIRJSON] {
					self.reason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["serviceProvider"] {
				presentKeys.insert("serviceProvider")
				if let val = exist as? FHIRJSON {
					self.serviceProvider = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "serviceProvider", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["statusHistory"] {
				presentKeys.insert("statusHistory")
				if let val = exist as? [FHIRJSON] {
					self.statusHistory = EncounterStatusHistory.from(val, owner: self) as? [EncounterStatusHistory]
				}
				else {
					errors.append(FHIRJSONError(key: "statusHistory", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [FHIRJSON] {
					self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let class_fhir = self.class_fhir {
			json["class"] = class_fhir.asJSON()
		}
		if let episodeOfCare = self.episodeOfCare {
			json["episodeOfCare"] = episodeOfCare.asJSON()
		}
		if let fulfills = self.fulfills {
			json["fulfills"] = fulfills.asJSON()
		}
		if let hospitalization = self.hospitalization {
			json["hospitalization"] = hospitalization.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let incomingReferralRequest = self.incomingReferralRequest {
			json["incomingReferralRequest"] = Reference.asJSONArray(incomingReferralRequest)
		}
		if let indication = self.indication {
			json["indication"] = Reference.asJSONArray(indication)
		}
		if let length = self.length {
			json["length"] = length.asJSON()
		}
		if let location = self.location {
			json["location"] = EncounterLocation.asJSONArray(location)
		}
		if let partOf = self.partOf {
			json["partOf"] = partOf.asJSON()
		}
		if let participant = self.participant {
			json["participant"] = EncounterParticipant.asJSONArray(participant)
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
			json["reason"] = CodeableConcept.asJSONArray(reason)
		}
		if let serviceProvider = self.serviceProvider {
			json["serviceProvider"] = serviceProvider.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let statusHistory = self.statusHistory {
			json["statusHistory"] = EncounterStatusHistory.asJSONArray(statusHistory)
		}
		if let type = self.type {
			json["type"] = CodeableConcept.asJSONArray(type)
		}
		
		return json
	}
}


/**
 *  Details about an admission to a clinic.
 */
public class EncounterHospitalization: FHIRElement
{
	override public class var resourceName: String {
		get { return "EncounterHospitalization" }
	}
	
	/// From where patient was admitted (physician referral, transfer)
	public var admitSource: CodeableConcept?
	
	/// Location to which the patient is discharged
	public var destination: Reference?
	
	/// Diet preferences reported by the patient
	public var dietPreference: CodeableConcept?
	
	/// The final diagnosis given a patient before release from the hospital after all testing, surgery, and workup are complete
	public var dischargeDiagnosis: Reference?
	
	/// Category or kind of location after discharge
	public var dischargeDisposition: CodeableConcept?
	
	/// The location from which the patient came before admission
	public var origin: Reference?
	
	/// Pre-admission identifier
	public var preAdmissionIdentifier: Identifier?
	
	/// Is this hospitalization a readmission?
	public var reAdmission: Bool?
	
	/// Wheelchair, translator, stretcher, etc
	public var specialArrangement: [CodeableConcept]?
	
	/// Special courtesies (VIP, board member)
	public var specialCourtesy: [CodeableConcept]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["admitSource"] {
				presentKeys.insert("admitSource")
				if let val = exist as? FHIRJSON {
					self.admitSource = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "admitSource", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["destination"] {
				presentKeys.insert("destination")
				if let val = exist as? FHIRJSON {
					self.destination = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "destination", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dietPreference"] {
				presentKeys.insert("dietPreference")
				if let val = exist as? FHIRJSON {
					self.dietPreference = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dietPreference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dischargeDiagnosis"] {
				presentKeys.insert("dischargeDiagnosis")
				if let val = exist as? FHIRJSON {
					self.dischargeDiagnosis = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dischargeDiagnosis", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dischargeDisposition"] {
				presentKeys.insert("dischargeDisposition")
				if let val = exist as? FHIRJSON {
					self.dischargeDisposition = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dischargeDisposition", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["origin"] {
				presentKeys.insert("origin")
				if let val = exist as? FHIRJSON {
					self.origin = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "origin", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["preAdmissionIdentifier"] {
				presentKeys.insert("preAdmissionIdentifier")
				if let val = exist as? FHIRJSON {
					self.preAdmissionIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "preAdmissionIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reAdmission"] {
				presentKeys.insert("reAdmission")
				if let val = exist as? Bool {
					self.reAdmission = val
				}
				else {
					errors.append(FHIRJSONError(key: "reAdmission", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["specialArrangement"] {
				presentKeys.insert("specialArrangement")
				if let val = exist as? [FHIRJSON] {
					self.specialArrangement = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "specialArrangement", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["specialCourtesy"] {
				presentKeys.insert("specialCourtesy")
				if let val = exist as? [FHIRJSON] {
					self.specialCourtesy = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "specialCourtesy", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let admitSource = self.admitSource {
			json["admitSource"] = admitSource.asJSON()
		}
		if let destination = self.destination {
			json["destination"] = destination.asJSON()
		}
		if let dietPreference = self.dietPreference {
			json["dietPreference"] = dietPreference.asJSON()
		}
		if let dischargeDiagnosis = self.dischargeDiagnosis {
			json["dischargeDiagnosis"] = dischargeDiagnosis.asJSON()
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
			json["specialArrangement"] = CodeableConcept.asJSONArray(specialArrangement)
		}
		if let specialCourtesy = self.specialCourtesy {
			json["specialCourtesy"] = CodeableConcept.asJSONArray(specialCourtesy)
		}
		
		return json
	}
}


/**
 *  List of locations the patient has been at.
 *
 *  List of locations at which the patient has been.
 */
public class EncounterLocation: FHIRElement
{
	override public class var resourceName: String {
		get { return "EncounterLocation" }
	}
	
	/// Location the encounter takes place
	public var location: Reference?
	
	/// Time period during which the patient was present at the location
	public var period: Period?
	
	/// planned | present | reserved
	public var status: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(location: Reference?) {
		self.init(json: nil)
		if nil != location {
			self.location = location
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "location"))
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
 *  The main practitioner responsible for providing the service.
 */
public class EncounterParticipant: FHIRElement
{
	override public class var resourceName: String {
		get { return "EncounterParticipant" }
	}
	
	/// Persons involved in the encounter other than the patient
	public var individual: Reference?
	
	/// Period of time during the encounter participant was present
	public var period: Period?
	
	/// Role of participant in encounter
	public var type: [CodeableConcept]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["individual"] {
				presentKeys.insert("individual")
				if let val = exist as? FHIRJSON {
					self.individual = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "individual", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [FHIRJSON] {
					self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let individual = self.individual {
			json["individual"] = individual.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let type = self.type {
			json["type"] = CodeableConcept.asJSONArray(type)
		}
		
		return json
	}
}


/**
 *  List of Encounter statuses.
 *
 *  The current status is always found in the current version of the resource. This status history permits the encounter
 *  resource to contain the status history without the needing to read through the historical versions of the resource,
 *  or even have the server store them.
 */
public class EncounterStatusHistory: FHIRElement
{
	override public class var resourceName: String {
		get { return "EncounterStatusHistory" }
	}
	
	/// The time that the episode was in the specified status
	public var period: Period?
	
	/// planned | arrived | in-progress | onleave | finished | cancelled
	public var status: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(period: Period?, status: String?) {
		self.init(json: nil)
		if nil != period {
			self.period = period
		}
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "period"))
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

