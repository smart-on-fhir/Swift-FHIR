//
//  ReferralRequest.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (referralrequest.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A request for referral or tranfer of care.
 *
 *  Used to record and send details about a request for referral service or transfer of a patient to the care of another
 *  provider or provider organisation.
 */
public class ReferralRequest: FHIRResource
{
	override public class var resourceName: String {
		get { return "ReferralRequest" }
	}
	
	/// Date referral/transfer of care request is sent
	public var dateSent: DateTime?
	
	/// A textual description of the referral
	public var description: String?
	
	/// Encounter
	public var encounter: Reference?
	
	/// Requested service(s) fulfillment time
	public var fulfillmentTime: Period?
	
	/// Identifier of request
	public var identifier: [Identifier]?
	
	/// Patient referred to care or transfer
	public var patient: Reference?
	
	/// Urgency of referral / transfer of care request
	public var priority: CodeableConcept?
	
	/// Reason for referral / Transfer of care request
	public var reason: CodeableConcept?
	
	/// Receiver of referral / transfer of care request
	public var recipient: [Reference]?
	
	/// Requester of referral / transfer of care
	public var requester: Reference?
	
	/// Service(s) requested
	public var serviceRequested: [CodeableConcept]?
	
	/// The clinical specialty (discipline) that the referral is requested for
	public var specialty: CodeableConcept?
	
	/// draft | sent | active | cancelled | refused | completed
	public var status: String?
	
	/// Additonal information to support referral or transfer of care request
	public var supportingInformation: [Reference]?
	
	/// Referral/Transition of care request type
	public var type: CodeableConcept?
	
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["dateSent"] as? String {
				self.dateSent = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["encounter"] as? JSONDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["fulfillmentTime"] as? JSONDictionary {
				self.fulfillmentTime = Period(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["priority"] as? JSONDictionary {
				self.priority = CodeableConcept(json: val, owner: self)
			}
			if let val = js["reason"] as? JSONDictionary {
				self.reason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["recipient"] as? [JSONDictionary] {
				self.recipient = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["requester"] as? JSONDictionary {
				self.requester = Reference(json: val, owner: self)
			}
			if let val = js["serviceRequested"] as? [JSONDictionary] {
				self.serviceRequested = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["specialty"] as? JSONDictionary {
				self.specialty = CodeableConcept(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["supportingInformation"] as? [JSONDictionary] {
				self.supportingInformation = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
}

