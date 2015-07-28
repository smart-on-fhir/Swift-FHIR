//
//  EpisodeOfCare.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/EpisodeOfCare) on 2015-07-28.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference?, status: String?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["careManager"] {
				presentKeys.insert("careManager")
				if let val = exist as? FHIRJSON {
					self.careManager = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "careManager", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["careTeam"] {
				presentKeys.insert("careTeam")
				if let val = exist as? [FHIRJSON] {
					self.careTeam = EpisodeOfCareCareTeam.from(val, owner: self) as? [EpisodeOfCareCareTeam]
				}
				else {
					errors.append(FHIRJSONError(key: "careTeam", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["condition"] {
				presentKeys.insert("condition")
				if let val = exist as? [FHIRJSON] {
					self.condition = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "condition", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["managingOrganization"] {
				presentKeys.insert("managingOrganization")
				if let val = exist as? FHIRJSON {
					self.managingOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "managingOrganization", wants: FHIRJSON.self, has: exist.dynamicType))
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
			else {
				errors.append(FHIRJSONError(key: "patient"))
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
			if let exist: AnyObject = js["referralRequest"] {
				presentKeys.insert("referralRequest")
				if let val = exist as? [FHIRJSON] {
					self.referralRequest = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "referralRequest", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
					self.statusHistory = EpisodeOfCareStatusHistory.from(val, owner: self) as? [EpisodeOfCareStatusHistory]
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["member"] {
				presentKeys.insert("member")
				if let val = exist as? FHIRJSON {
					self.member = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "member", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? [FHIRJSON] {
					self.role = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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

