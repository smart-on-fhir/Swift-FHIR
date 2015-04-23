//
//  EpisodeOfCare.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/EpisodeOfCare) on 2015-04-23.
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
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(patient: Reference?, status: String?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["careManager"] {
				presentKeys.addObject("careManager")
				if let val = exist as? FHIRJSON {
					self.careManager = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"careManager\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["careTeam"] {
				presentKeys.addObject("careTeam")
				if let val = exist as? [FHIRJSON] {
					self.careTeam = EpisodeOfCareCareTeam.from(val, owner: self) as? [EpisodeOfCareCareTeam]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"careTeam\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["condition"] {
				presentKeys.addObject("condition")
				if let val = exist as? [FHIRJSON] {
					self.condition = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"condition\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["managingOrganization"] {
				presentKeys.addObject("managingOrganization")
				if let val = exist as? FHIRJSON {
					self.managingOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"managingOrganization\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.addObject("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patient\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"patient\" but it is missing"))
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.addObject("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"period\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["referralRequest"] {
				presentKeys.addObject("referralRequest")
				if let val = exist as? [FHIRJSON] {
					self.referralRequest = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"referralRequest\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
			}
			if let exist: AnyObject = js["statusHistory"] {
				presentKeys.addObject("statusHistory")
				if let val = exist as? [FHIRJSON] {
					self.statusHistory = EpisodeOfCareStatusHistory.from(val, owner: self) as? [EpisodeOfCareStatusHistory]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"statusHistory\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? [FHIRJSON] {
					self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["member"] {
				presentKeys.addObject("member")
				if let val = exist as? FHIRJSON {
					self.member = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"member\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.addObject("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"period\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["role"] {
				presentKeys.addObject("role")
				if let val = exist as? [FHIRJSON] {
					self.role = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"role\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(period: Period?, status: String?) {
		self.init(json: nil)
		if nil != period {
			self.period = period
		}
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["period"] {
				presentKeys.addObject("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"period\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"period\" but it is missing"))
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
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

