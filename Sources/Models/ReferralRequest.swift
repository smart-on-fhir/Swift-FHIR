//
//  ReferralRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ReferralRequest) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A request for referral or transfer of care.
 *
 *  Used to record and send details about a request for referral service or transfer of a patient to the care of another
 *  provider or provider organization.
 */
public class ReferralRequest: DomainResource {
	override public class var resourceName: String {
		get { return "ReferralRequest" }
	}
	
	/// Date of creation/activation.
	public var authored: DateTime?
	
	/// Request fulfilled by this request.
	public var basedOn: [Reference]?
	
	/// proposal | plan | request.
	public var category: String?
	
	/// Originating encounter.
	public var context: Reference?
	
	/// A textual description of the referral.
	public var description_fhir: String?
	
	/// Requested service(s) fulfillment time.
	public var fulfillmentTime: Period?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// Composite request this is part of.
	public var parent: Identifier?
	
	/// Patient referred to care or transfer.
	public var patient: Reference?
	
	/// Urgency of referral / transfer of care request.
	public var priority: CodeableConcept?
	
	/// Reason for referral / transfer of care request.
	public var reason: CodeableConcept?
	
	/// Receiver of referral / transfer of care request.
	public var recipient: [Reference]?
	
	/// Requester of referral / transfer of care.
	public var requester: Reference?
	
	/// Actions requested as part of the referral.
	public var serviceRequested: [CodeableConcept]?
	
	/// The clinical specialty (discipline) that the referral is requested for.
	public var specialty: CodeableConcept?
	
	/// draft | active | cancelled | completed | entered-in-error.
	public var status: String?
	
	/// Additonal information to support referral or transfer of care request.
	public var supportingInformation: [Reference]?
	
	/// Referral/Transition of care request type.
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: String, status: String) {
		self.init(json: nil)
		self.category = category
		self.status = status
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["authored"] {
				presentKeys.insert("authored")
				if let val = exist as? String {
					self.authored = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "authored", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["basedOn"] {
				presentKeys.insert("basedOn")
				if let val = exist as? [FHIRJSON] {
					self.basedOn = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "basedOn", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? String {
					self.category = val
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "category"))
			}
			if let exist: AnyObject = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? FHIRJSON {
					self.context = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fulfillmentTime"] {
				presentKeys.insert("fulfillmentTime")
				if let val = exist as? FHIRJSON {
					self.fulfillmentTime = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fulfillmentTime", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["parent"] {
				presentKeys.insert("parent")
				if let val = exist as? FHIRJSON {
					self.parent = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "parent", wants: FHIRJSON.self, has: exist.dynamicType))
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
				if let val = exist as? FHIRJSON {
					self.reason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["recipient"] {
				presentKeys.insert("recipient")
				if let val = exist as? [FHIRJSON] {
					self.recipient = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "recipient", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requester"] {
				presentKeys.insert("requester")
				if let val = exist as? FHIRJSON {
					self.requester = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requester", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["serviceRequested"] {
				presentKeys.insert("serviceRequested")
				if let val = exist as? [FHIRJSON] {
					self.serviceRequested = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "serviceRequested", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["specialty"] {
				presentKeys.insert("specialty")
				if let val = exist as? FHIRJSON {
					self.specialty = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "specialty", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["supportingInformation"] {
				presentKeys.insert("supportingInformation")
				if let val = exist as? [FHIRJSON] {
					self.supportingInformation = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "supportingInformation", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let authored = self.authored {
			json["authored"] = authored.asJSON()
		}
		if let basedOn = self.basedOn {
			json["basedOn"] = Reference.asJSONArray(basedOn)
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let fulfillmentTime = self.fulfillmentTime {
			json["fulfillmentTime"] = fulfillmentTime.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let parent = self.parent {
			json["parent"] = parent.asJSON()
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

