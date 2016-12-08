//
//  ReferralRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ReferralRequest) on 2016-12-08.
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
	public var description_fhir: FHIRString?
	
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
		
		authored = try createInstance(type: DateTime.self, for: "authored", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authored
		basedOn = try createInstances(of: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		category = createEnum(type: ReferralCategory.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors) ?? category
		if nil == category && !presentKeys.contains("category") {
			errors.append(FHIRValidationError(missing: "category"))
		}
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		fulfillmentTime = try createInstance(type: Period.self, for: "fulfillmentTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fulfillmentTime
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		parent = try createInstance(type: Identifier.self, for: "parent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? parent
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		priority = try createInstance(type: CodeableConcept.self, for: "priority", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? priority
		reason = try createInstance(type: CodeableConcept.self, for: "reason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reason
		recipient = try createInstances(of: Reference.self, for: "recipient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? recipient
		requester = try createInstance(type: Reference.self, for: "requester", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requester
		serviceRequested = try createInstances(of: CodeableConcept.self, for: "serviceRequested", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? serviceRequested
		specialty = try createInstance(type: CodeableConcept.self, for: "specialty", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? specialty
		status = createEnum(type: ReferralStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		supportingInformation = try createInstances(of: Reference.self, for: "supportingInformation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supportingInformation
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authored?.decorate(json: &json, withKey: "authored", errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		if nil == self.category {
			errors.append(FHIRValidationError(missing: "category"))
		}
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.fulfillmentTime?.decorate(json: &json, withKey: "fulfillmentTime", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.parent?.decorate(json: &json, withKey: "parent", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		self.reason?.decorate(json: &json, withKey: "reason", errors: &errors)
		arrayDecorate(json: &json, withKey: "recipient", using: self.recipient, errors: &errors)
		self.requester?.decorate(json: &json, withKey: "requester", errors: &errors)
		arrayDecorate(json: &json, withKey: "serviceRequested", using: self.serviceRequested, errors: &errors)
		self.specialty?.decorate(json: &json, withKey: "specialty", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "supportingInformation", using: self.supportingInformation, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

