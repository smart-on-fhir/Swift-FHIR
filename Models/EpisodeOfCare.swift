//
//  EpisodeOfCare.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (episodeofcare.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  An association of a Patient with an Organization and  Healthcare Provider(s) for a period of time that the
 *  Organization assumes some level of responsibility.
 *
 *  An association between a patient and an organization / healthcare provider(s) during which time encounters may
 *  occur. The managing organization assumes a level of responsibility for the patient during this time.
 */
public class EpisodeOfCare: FHIRResource
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
	
	/// planned | active | onhold | finished | withdrawn | other
	public var currentStatus: String?
	
	/// Identifier(s) by which this EpisodeOfCare is known
	public var identifier: [Identifier]?
	
	/// The organization that has assumed the specific responsibilities for the specified duration
	public var managingOrganization: Reference?
	
	/// The patient that this episodeofcare applies to
	public var patient: Reference?
	
	/// The interval during which the managing organization assumes the defined responsibility
	public var period: Period?
	
	/// A Referral Request that this EpisodeOfCare manages activities within
	public var referralRequest: Reference?
	
	/// The status history for the EpisodeOfCare
	public var statusHistory: [EpisodeOfCareStatusHistory]?
	
	/// Specific type of EpisodeOfcare
	public var type: [CodeableConcept]?
	
	public convenience init(currentStatus: String?, patient: Reference?) {
		self.init(json: nil)
		if nil != currentStatus {
			self.currentStatus = currentStatus
		}
		if nil != patient {
			self.patient = patient
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["careManager"] as? JSONDictionary {
				self.careManager = Reference(json: val, owner: self)
			}
			if let val = js["careTeam"] as? [JSONDictionary] {
				self.careTeam = EpisodeOfCareCareTeam.from(val, owner: self) as? [EpisodeOfCareCareTeam]
			}
			if let val = js["condition"] as? [JSONDictionary] {
				self.condition = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["currentStatus"] as? String {
				self.currentStatus = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["managingOrganization"] as? JSONDictionary {
				self.managingOrganization = Reference(json: val, owner: self)
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["referralRequest"] as? JSONDictionary {
				self.referralRequest = Reference(json: val, owner: self)
			}
			if let val = js["statusHistory"] as? [JSONDictionary] {
				self.statusHistory = EpisodeOfCareStatusHistory.from(val, owner: self) as? [EpisodeOfCareStatusHistory]
			}
			if let val = js["type"] as? [JSONDictionary] {
				self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
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
	
	/// The practitioner within the team
	public var member: Reference?
	
	/// The period of time that this practitioner is performing some role within the episode of care
	public var period: Period?
	
	/// The role that this team member is taking within this episode of care
	public var role: [CodeableConcept]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["member"] as? JSONDictionary {
				self.member = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["role"] as? [JSONDictionary] {
				self.role = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
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
	
	/// The period during this episodeofcare that the specific status applied
	public var period: Period?
	
	/// planned | active | onhold | finished | withdrawn | other
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
}

