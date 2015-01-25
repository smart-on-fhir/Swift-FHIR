//
//  Encounter.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3969 (encounter.profile.json) on 2015-01-25.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  An interaction during which services are provided to the patient.
 *
 *  An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or
 *  assessing the health status of a patient.
 */
public class Encounter: FHIRResource
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
	
	/// Reason the encounter takes place (resource)
	public var indication: [Reference]?
	
	/// Quantity of time the encounter lasted
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
	public var reason: CodeableConcept?
	
	/// Department or team providing care
	public var serviceProvider: Reference?
	
	/// planned | arrived | in progress | onleave | finished | cancelled
	public var status: String?
	
	/// List of Encounter statuses
	public var statusHistory: [EncounterStatusHistory]?
	
	/// Specific type of encounter
	public var type: [CodeableConcept]?
	
	public convenience init(class_fhir: String?, status: String?) {
		self.init(json: nil)
		if nil != class_fhir {
			self.class_fhir = class_fhir
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["class"] as? String {
				self.class_fhir = val
			}
			if let val = js["episodeOfCare"] as? JSONDictionary {
				self.episodeOfCare = Reference(json: val, owner: self)
			}
			if let val = js["fulfills"] as? JSONDictionary {
				self.fulfills = Reference(json: val, owner: self)
			}
			if let val = js["hospitalization"] as? JSONDictionary {
				self.hospitalization = EncounterHospitalization(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["indication"] as? [JSONDictionary] {
				self.indication = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["length"] as? JSONDictionary {
				self.length = Duration(json: val, owner: self)
			}
			if let val = js["location"] as? [JSONDictionary] {
				self.location = EncounterLocation.from(val, owner: self) as? [EncounterLocation]
			}
			if let val = js["partOf"] as? JSONDictionary {
				self.partOf = Reference(json: val, owner: self)
			}
			if let val = js["participant"] as? [JSONDictionary] {
				self.participant = EncounterParticipant.from(val, owner: self) as? [EncounterParticipant]
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["priority"] as? JSONDictionary {
				self.priority = CodeableConcept(json: val, owner: self)
			}
			if let val = js["reason"] as? JSONDictionary {
				self.reason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["serviceProvider"] as? JSONDictionary {
				self.serviceProvider = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["statusHistory"] as? [JSONDictionary] {
				self.statusHistory = EncounterStatusHistory.from(val, owner: self) as? [EncounterStatusHistory]
			}
			if let val = js["type"] as? [JSONDictionary] {
				self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
			json["reason"] = reason.asJSON()
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
	
	/// Dietary restrictions for the patient
	public var diet: CodeableConcept?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["admitSource"] as? JSONDictionary {
				self.admitSource = CodeableConcept(json: val, owner: self)
			}
			if let val = js["destination"] as? JSONDictionary {
				self.destination = Reference(json: val, owner: self)
			}
			if let val = js["diet"] as? JSONDictionary {
				self.diet = CodeableConcept(json: val, owner: self)
			}
			if let val = js["dischargeDiagnosis"] as? JSONDictionary {
				self.dischargeDiagnosis = Reference(json: val, owner: self)
			}
			if let val = js["dischargeDisposition"] as? JSONDictionary {
				self.dischargeDisposition = CodeableConcept(json: val, owner: self)
			}
			if let val = js["origin"] as? JSONDictionary {
				self.origin = Reference(json: val, owner: self)
			}
			if let val = js["preAdmissionIdentifier"] as? JSONDictionary {
				self.preAdmissionIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["reAdmission"] as? Bool {
				self.reAdmission = val
			}
			if let val = js["specialArrangement"] as? [JSONDictionary] {
				self.specialArrangement = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["specialCourtesy"] as? [JSONDictionary] {
				self.specialCourtesy = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let admitSource = self.admitSource {
			json["admitSource"] = admitSource.asJSON()
		}
		if let destination = self.destination {
			json["destination"] = destination.asJSON()
		}
		if let diet = self.diet {
			json["diet"] = diet.asJSON()
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
	
	public convenience init(location: Reference?) {
		self.init(json: nil)
		if nil != location {
			self.location = location
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["location"] as? JSONDictionary {
				self.location = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["individual"] as? JSONDictionary {
				self.individual = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["type"] as? [JSONDictionary] {
				self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
	
	/// planned | arrived | in progress | onleave | finished | cancelled
	public var status: String?
	
	public convenience init(period: Period?, status: String?) {
		self.init(json: nil)
		if nil != period {
			self.period = period
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

