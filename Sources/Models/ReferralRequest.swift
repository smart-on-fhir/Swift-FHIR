//
//  ReferralRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/ReferralRequest) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
A request for referral or transfer of care.

Used to record and send details about a request for referral service or transfer of a patient to the care of another
provider or provider organization.
*/
open class ReferralRequest: DomainResource {
	override open class var resourceType: String {
		get { return "ReferralRequest" }
	}
	
	/// Date of creation/activation.
	public var authored: DateTime?
	
	/// Request fulfilled by this request.
	public var basedOn: [Reference]?
	
	/// Distinguishes the "level" of authorization/demand implicit in this request.
	public var category: ReferralCategory?
	
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
	
	/// The status of the authorization/intention reflected by the referral request record.
	public var status: ReferralStatus?
	
	/// Additonal information to support referral or transfer of care request.
	public var supportingInformation: [Reference]?
	
	/// Referral/Transition of care request type.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: ReferralCategory, status: ReferralStatus) {
		self.init()
		self.category = category
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["authored"] {
			presentKeys.insert("authored")
			if let val = exist as? String {
				self.authored = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "authored", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["basedOn"] {
			presentKeys.insert("basedOn")
			if let val = exist as? [FHIRJSON] {
				do {
					self.basedOn = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "basedOn"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "basedOn", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? String {
				if let enumval = ReferralCategory(rawValue: val) {
					self.category = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "category", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "category"))
		}
		if let exist = json["context"] {
			presentKeys.insert("context")
			if let val = exist as? FHIRJSON {
				do {
					self.context = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "context"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "context", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["fulfillmentTime"] {
			presentKeys.insert("fulfillmentTime")
			if let val = exist as? FHIRJSON {
				do {
					self.fulfillmentTime = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fulfillmentTime"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fulfillmentTime", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["parent"] {
			presentKeys.insert("parent")
			if let val = exist as? FHIRJSON {
				do {
					self.parent = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "parent"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "parent", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["priority"] {
			presentKeys.insert("priority")
			if let val = exist as? FHIRJSON {
				do {
					self.priority = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "priority"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "priority", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? FHIRJSON {
				do {
					self.reason = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["recipient"] {
			presentKeys.insert("recipient")
			if let val = exist as? [FHIRJSON] {
				do {
					self.recipient = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "recipient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "recipient", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["requester"] {
			presentKeys.insert("requester")
			if let val = exist as? FHIRJSON {
				do {
					self.requester = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requester"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requester", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["serviceRequested"] {
			presentKeys.insert("serviceRequested")
			if let val = exist as? [FHIRJSON] {
				do {
					self.serviceRequested = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "serviceRequested"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "serviceRequested", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["specialty"] {
			presentKeys.insert("specialty")
			if let val = exist as? FHIRJSON {
				do {
					self.specialty = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "specialty"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "specialty", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = ReferralStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["supportingInformation"] {
			presentKeys.insert("supportingInformation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.supportingInformation = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "supportingInformation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "supportingInformation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let authored = self.authored {
			json["authored"] = authored.asJSON()
		}
		if let basedOn = self.basedOn {
			json["basedOn"] = basedOn.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.rawValue
		}
		if let context = self.context {
			json["context"] = context.asJSON(errors: &errors)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let fulfillmentTime = self.fulfillmentTime {
			json["fulfillmentTime"] = fulfillmentTime.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let parent = self.parent {
			json["parent"] = parent.asJSON(errors: &errors)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON(errors: &errors)
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON(errors: &errors)
		}
		if let recipient = self.recipient {
			json["recipient"] = recipient.map() { $0.asJSON(errors: &errors) }
		}
		if let requester = self.requester {
			json["requester"] = requester.asJSON(errors: &errors)
		}
		if let serviceRequested = self.serviceRequested {
			json["serviceRequested"] = serviceRequested.map() { $0.asJSON(errors: &errors) }
		}
		if let specialty = self.specialty {
			json["specialty"] = specialty.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let supportingInformation = self.supportingInformation {
			json["supportingInformation"] = supportingInformation.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}

