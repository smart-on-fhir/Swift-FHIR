//
//  EpisodeOfCare.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/EpisodeOfCare) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  An association of a Patient with an Organization and  Healthcare Provider(s) for a period of time that the
 *  Organization assumes some level of responsibility.
 *
 *  An association between a patient and an organization / healthcare provider(s) during which time encounters may
 *  occur. The managing organization assumes a level of responsibility for the patient during this time.
 */
public class EpisodeOfCare: DomainResource {
	override public class var resourceName: String {
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
	
	/// planned | waitlist | active | onhold | finished | cancelled | entered-in-error.
	public var status: String?
	
	/// Past list of status codes.
	public var statusHistory: [EpisodeOfCareStatusHistory]?
	
	/// Other practitioners facilitating this episode of care.
	public var team: [Reference]?
	
	/// Type/class  - e.g. specialist referral, disease management.
	public var type: [CodeableConcept]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, status: String) {
		self.init(json: nil)
		self.patient = patient
		self.status = status
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["account"] {
				presentKeys.insert("account")
				if let val = exist as? [FHIRJSON] {
					self.account = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "account", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["careManager"] {
				presentKeys.insert("careManager")
				if let val = exist as? FHIRJSON {
					self.careManager = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "careManager", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["team"] {
				presentKeys.insert("team")
				if let val = exist as? [FHIRJSON] {
					self.team = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "team", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
		
		if let account = self.account {
			json["account"] = Reference.asJSONArray(account)
		}
		if let careManager = self.careManager {
			json["careManager"] = careManager.asJSON()
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
		if let team = self.team {
			json["team"] = Reference.asJSONArray(team)
		}
		if let type = self.type {
			json["type"] = CodeableConcept.asJSONArray(type)
		}
		
		return json
	}
}


/**
 *  Past list of status codes.
 *
 *  The history of statuses that the EpisodeOfCare has been through (without requiring processing the history of the
 *  resource).
 */
public class EpisodeOfCareStatusHistory: BackboneElement {
	override public class var resourceName: String {
		get { return "EpisodeOfCareStatusHistory" }
	}
	
	/// Period for the status.
	public var period: Period?
	
	/// planned | waitlist | active | onhold | finished | cancelled | entered-in-error.
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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

