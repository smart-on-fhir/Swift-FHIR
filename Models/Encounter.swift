//
//  Encounter.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (encounter.profile.json) on 2014-11-12.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  An interaction during which services are provided to the patient.
 *
 *  Scope and Usage A patient encounter is further characterized by the setting in which it takes place. Amongst them
 *  are ambulatory, emergency, home health, inpatient and virtual encounters. An Encounter encompasses the lifecycle
 *  from pre-admission, the actual encounter (for ambulatory encounters), and admission, stay and discharge (for
 *  inpatient encounters). During the encounter the patient may move from practitioner to practitioner and location to
 *  location.
 *  
 *  Because of the broad scope of Encounter, not all elements will be relevant in all settings. For this reason,
 *  admission/discharge related information is kept in a separate Hospitalization component within Encounter. The class
 *  element is used to distinguish between these settings, which will guide further validation and application of
 *  business rules.
 *  
 *  There is also substantial variance from organization to organization (and between jurisdictions and countries) on
 *  which business events translate to the start of a new Encounter, or what level of aggregation is used for Encounter.
 *  For example, each single visit of a practitioner during a hospitalization may lead to a new instance of Encounter,
 *  but depending on local practice and the systems involved, it may well be that this is aggregated to a single
 *  instance for a whole hospitalization. Even more aggregation may occur where jurisdictions introduce groups of
 *  Encounters for financial or other reasons. Encounters can be aggregated or grouped under other Encounters using the
 *  partOf element. See below for examples.
 *  
 *  Encounter instances may exist before the actual encounter takes place to convey pre-admission information, including
 *  using Encounters elements to reflect the planned start date, planned accommodation or planned encounter locations.
 *  In this case the status element is set to 'planned'.
 */
public class Encounter: FHIRResource
{
	override public class var resourceName: String {
		get { return "Encounter" }
	}
	
	/// Details about an admission to a clinic
	public var hospitalization: EncounterHospitalization?
	
	/// Identifier(s) by which this encounter is known
	public var identifier: [Identifier]?
	
	/// Reason the encounter takes place (resource)
	public var indication: FHIRReference<FHIRResource>?
	
	/// inpatient | outpatient | ambulatory | emergency +
	public var klass: String?
	
	/// Quantity of time the encounter lasted
	public var length: Duration?
	
	/// List of locations the patient has been at
	public var location: [EncounterLocation]?
	
	/// Another Encounter this encounter is part of
	public var partOf: FHIRReference<Encounter>?
	
	/// List of participants involved in the encounter
	public var participant: [EncounterParticipant]?
	
	/// The start and end time of the encounter
	public var period: Period?
	
	/// Indicates the urgency of the encounter
	public var priority: CodeableConcept?
	
	/// Reason the encounter takes place (code)
	public var reason: CodeableConcept?
	
	/// Department or team providing care
	public var serviceProvider: FHIRReference<Organization>?
	
	/// planned | in progress | onleave | finished | cancelled
	public var status: String?
	
	/// The patient present at the encounter
	public var subject: FHIRReference<Patient>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Specific type of encounter
	public var type: [CodeableConcept]?
	
	public convenience init(klass: String?, status: String?) {
		self.init(json: nil)
		if nil != klass {
			self.klass = klass
		}
		if nil != status {
			self.status = status
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["hospitalization"] as? NSDictionary {
				self.hospitalization = EncounterHospitalization(json: val, owner: self)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["indication"] as? NSDictionary {
				self.indication = FHIRReference(json: val, owner: self)
			}
			if let val = js["class"] as? String {
				self.klass = val
			}
			if let val = js["length"] as? NSDictionary {
				self.length = Duration(json: val, owner: self)
			}
			if let val = js["location"] as? [NSDictionary] {
				self.location = EncounterLocation.from(val, owner: self) as? [EncounterLocation]
			}
			if let val = js["partOf"] as? NSDictionary {
				self.partOf = FHIRReference(json: val, owner: self)
			}
			if let val = js["participant"] as? [NSDictionary] {
				self.participant = EncounterParticipant.from(val, owner: self) as? [EncounterParticipant]
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["priority"] as? NSDictionary {
				self.priority = CodeableConcept(json: val, owner: self)
			}
			if let val = js["reason"] as? NSDictionary {
				self.reason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["serviceProvider"] as? NSDictionary {
				self.serviceProvider = FHIRReference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val, owner: self)
			}
			if let val = js["type"] as? [NSDictionary] {
				self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
}


/**
 *  List of participants involved in the encounter.
 *
 *  The main practitioner responsible for providing the service.
 */
public class EncounterParticipant: FHIRElement
{	
	/// Persons involved in the encounter other than the patient
	public var individual: FHIRReference<Practitioner>?
	
	/// Role of participant in encounter
	public var type: [CodeableConcept]?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["individual"] as? NSDictionary {
				self.individual = FHIRReference(json: val, owner: self)
			}
			if let val = js["type"] as? [NSDictionary] {
				self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
}


/**
 *  Details about an admission to a clinic.
 */
public class EncounterHospitalization: FHIRElement
{	
	/// Where the patient stays during this encounter
	public var accomodation: [EncounterHospitalizationAccomodation]?
	
	/// From where patient was admitted (physician referral, transfer)
	public var admitSource: CodeableConcept?
	
	/// Location to which the patient is discharged
	public var destination: FHIRReference<Location>?
	
	/// Dietary restrictions for the patient
	public var diet: CodeableConcept?
	
	/// The final diagnosis given a patient before release from the hospital after all testing, surgery, and workup are complete
	public var dischargeDiagnosis: FHIRReference<FHIRResource>?
	
	/// Category or kind of location after discharge
	public var dischargeDisposition: CodeableConcept?
	
	/// The location from which the patient came before admission
	public var origin: FHIRReference<Location>?
	
	/// Period during which the patient was admitted
	public var period: Period?
	
	/// Pre-admission identifier
	public var preAdmissionIdentifier: Identifier?
	
	/// Is this hospitalization a readmission?
	public var reAdmission: Bool?
	
	/// Wheelchair, translator, stretcher, etc
	public var specialArrangement: [CodeableConcept]?
	
	/// Special courtesies (VIP, board member)
	public var specialCourtesy: [CodeableConcept]?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["accomodation"] as? [NSDictionary] {
				self.accomodation = EncounterHospitalizationAccomodation.from(val, owner: self) as? [EncounterHospitalizationAccomodation]
			}
			if let val = js["admitSource"] as? NSDictionary {
				self.admitSource = CodeableConcept(json: val, owner: self)
			}
			if let val = js["destination"] as? NSDictionary {
				self.destination = FHIRReference(json: val, owner: self)
			}
			if let val = js["diet"] as? NSDictionary {
				self.diet = CodeableConcept(json: val, owner: self)
			}
			if let val = js["dischargeDiagnosis"] as? NSDictionary {
				self.dischargeDiagnosis = FHIRReference(json: val, owner: self)
			}
			if let val = js["dischargeDisposition"] as? NSDictionary {
				self.dischargeDisposition = CodeableConcept(json: val, owner: self)
			}
			if let val = js["origin"] as? NSDictionary {
				self.origin = FHIRReference(json: val, owner: self)
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["preAdmissionIdentifier"] as? NSDictionary {
				self.preAdmissionIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["reAdmission"] as? Bool {
				self.reAdmission = val
			}
			if let val = js["specialArrangement"] as? [NSDictionary] {
				self.specialArrangement = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["specialCourtesy"] as? [NSDictionary] {
				self.specialCourtesy = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
}


/**
 *  Where the patient stays during this encounter.
 */
public class EncounterHospitalizationAccomodation: FHIRElement
{	
	/// The bed that is assigned to the patient
	public var bed: FHIRReference<Location>?
	
	/// Period during which the patient was assigned the bed
	public var period: Period?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["bed"] as? NSDictionary {
				self.bed = FHIRReference(json: val, owner: self)
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val, owner: self)
			}
		}
	}
}


/**
 *  List of locations the patient has been at.
 *
 *  List of locations at which the patient has been.
 */
public class EncounterLocation: FHIRElement
{	
	/// Location the encounter takes place
	public var location: FHIRReference<Location>?
	
	/// Time period during which the patient was present at the location
	public var period: Period?
	
	public convenience init(location: FHIRReference<Location>?, period: Period?) {
		self.init(json: nil)
		if nil != location {
			self.location = location
		}
		if nil != period {
			self.period = period
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["location"] as? NSDictionary {
				self.location = FHIRReference(json: val, owner: self)
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val, owner: self)
			}
		}
	}
}

