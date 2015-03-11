//
//  ReferralRequest.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/ReferralRequest) on 2015-03-11.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A request for referral or tranfer of care.
 *
 *  Used to record and send details about a request for referral service or transfer of a patient to the care of another
 *  provider or provider organisation.
 */
public class ReferralRequest: DomainResource
{
	override public class var resourceName: String {
		get { return "ReferralRequest" }
	}
	
	/// Date referral/transfer of care request is sent
	public var dateSent: DateTime?
	
	/// A textual description of the referral
	public var description_fhir: String?
	
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
	
	/// draft | sent | active | cancelled | rejected | completed
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
				self.description_fhir = val
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
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let dateSent = self.dateSent {
			json["dateSent"] = dateSent.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let fulfillmentTime = self.fulfillmentTime {
			json["fulfillmentTime"] = fulfillmentTime.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let recipient = self.recipient {
			json["recipient"] = Reference.asJSONArray(recipient)
		}
		if let requester = self.requester {
			json["requester"] = requester.asJSON()
		}
		if let serviceRequested = self.serviceRequested {
			json["serviceRequested"] = CodeableConcept.asJSONArray(serviceRequested)
		}
		if let specialty = self.specialty {
			json["specialty"] = specialty.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let supportingInformation = self.supportingInformation {
			json["supportingInformation"] = Reference.asJSONArray(supportingInformation)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

