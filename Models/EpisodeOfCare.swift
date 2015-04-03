//
//  EpisodeOfCare.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/EpisodeOfCare) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  An association of a Patient with an Organization and  Healthcare Provider(s) for a period of time that the
 *  Organization assumes some level of responsibility.
 *
 *  An association between a patient and an organization / healthcare provider(s) during which time encounters may
 *  occur. The managing organization assumes a level of responsibility for the patient during this time.
 */
public class EpisodeOfCare: DomainResource
{
	override public class var resourceName: String {
		get { return "EpisodeOfCare" }
	}
	
	/// The practitioner that is the care manager/care co-ordinator for this patient
	public var careManager: Reference?
	
	/// The list of practitioners that may be facilitating this episode of care for specific purposes
	public var careTeam: [EpisodeOfCareCareTeam]?
	
	/// A list of conditions/problems/diagnoses that this episode of care is intended to be providing care for
	public var condition: [Reference]?
	
	/// Identifier(s) by which this EpisodeOfCare is known
	public var identifier: [Identifier]?
	
	/// The organization that has assumed the specific responsibilities for the specified duration
	public var managingOrganization: Reference?
	
	/// The patient that this EpisodeOfCare applies to
	public var patient: Reference?
	
	/// The interval during which the managing organization assumes the defined responsibility
	public var period: Period?
	
	/// Referral Request(s) that this EpisodeOfCare manages activities within
	public var referralRequest: [Reference]?
	
	/// planned | waitlist | active | onhold | finished | cancelled
	public var status: String?
	
	/// The status history for the EpisodeOfCare
	public var statusHistory: [EpisodeOfCareStatusHistory]?
	
	/// Specific type of EpisodeOfCare
	public var type: [CodeableConcept]?
	
	public convenience init(patient: Reference?, status: String?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["careManager"] as? FHIRJSON {
				self.careManager = Reference(json: val, owner: self)
			}
			if let val = js["careTeam"] as? [FHIRJSON] {
				self.careTeam = EpisodeOfCareCareTeam.from(val, owner: self) as? [EpisodeOfCareCareTeam]
			}
			if let val = js["condition"] as? [FHIRJSON] {
				self.condition = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["managingOrganization"] as? FHIRJSON {
				self.managingOrganization = Reference(json: val, owner: self)
			}
			if let val = js["patient"] as? FHIRJSON {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? FHIRJSON {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["referralRequest"] as? [FHIRJSON] {
				self.referralRequest = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["statusHistory"] as? [FHIRJSON] {
				self.statusHistory = EpisodeOfCareStatusHistory.from(val, owner: self) as? [EpisodeOfCareStatusHistory]
			}
			if let val = js["type"] as? [FHIRJSON] {
				self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let careManager = self.careManager {
			json["careManager"] = careManager.asJSON()
		}
		if let careTeam = self.careTeam {
			json["careTeam"] = EpisodeOfCareCareTeam.asJSONArray(careTeam)
		}
		if let condition = self.condition {
			json["condition"] = Reference.asJSONArray(condition)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let managingOrganization = self.managingOrganization {
			json["managingOrganization"] = managingOrganization.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let referralRequest = self.referralRequest {
			json["referralRequest"] = Reference.asJSONArray(referralRequest)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let statusHistory = self.statusHistory {
			json["statusHistory"] = EpisodeOfCareStatusHistory.asJSONArray(statusHistory)
		}
		if let type = self.type {
			json["type"] = CodeableConcept.asJSONArray(type)
		}
		
		return json
	}
}


/**
 *  The list of practitioners that may be facilitating this episode of care for specific purposes.
 */
public class EpisodeOfCareCareTeam: FHIRElement
{
	override public class var resourceName: String {
		get { return "EpisodeOfCareCareTeam" }
	}
	
	/// The practitioner (or Organization) within the team
	public var member: Reference?
	
	/// The period of time that this practitioner is performing some role within the episode of care
	public var period: Period?
	
	/// The role that this team member is taking within this episode of care
	public var role: [CodeableConcept]?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["member"] as? FHIRJSON {
				self.member = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? FHIRJSON {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["role"] as? [FHIRJSON] {
				self.role = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let member = self.member {
			json["member"] = member.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let role = self.role {
			json["role"] = CodeableConcept.asJSONArray(role)
		}
		
		return json
	}
}


/**
 *  The status history for the EpisodeOfCare.
 */
public class EpisodeOfCareStatusHistory: FHIRElement
{
	override public class var resourceName: String {
		get { return "EpisodeOfCareStatusHistory" }
	}
	
	/// The period during this EpisodeOfCare that the specific status applied
	public var period: Period?
	
	/// planned | waitlist | active | onhold | finished | cancelled
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["period"] as? FHIRJSON {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
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

