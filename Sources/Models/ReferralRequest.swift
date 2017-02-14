//
//  ReferralRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/ReferralRequest) on 2017-02-14.
//  2017, SMART Health IT.
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
	public var authoredOn: DateTime?
	
	/// Request fulfilled by this request.
	public var basedOn: [Reference]?
	
	/// Originating encounter.
	public var context: Reference?
	
	/// Instantiates protocol or definition.
	public var definition: [Reference]?
	
	/// A textual description of the referral.
	public var description_fhir: FHIRString?
	
	/// Composite request this is part of.
	public var groupIdentifier: Identifier?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// Distinguishes the "level" of authorization/demand implicit in this request.
	public var intent: RequestIntent?
	
	/// Comments made about referral request.
	public var note: [Annotation]?
	
	/// Requested service(s) fulfillment time.
	public var occurrenceDateTime: DateTime?
	
	/// Requested service(s) fulfillment time.
	public var occurrencePeriod: Period?
	
	/// Patient referred to care or transfer.
	public var patient: Reference?
	
	/// An indication of the urgency of referral (or where applicable the type of transfer of care) request.
	public var priority: RequestPriority?
	
	/// Reason for referral / transfer of care request.
	public var reasonCode: [CodeableConcept]?
	
	/// Why is service needed?.
	public var reasonReference: [Reference]?
	
	/// Receiver of referral / transfer of care request.
	public var recipient: [Reference]?
	
	/// Key events in history of request.
	public var relevantHistory: [Reference]?
	
	/// Request(s) replaced by this request.
	public var replaces: [Reference]?
	
	/// Who/what is requesting service.
	public var requester: ReferralRequestRequester?
	
	/// Actions requested as part of the referral.
	public var serviceRequested: [CodeableConcept]?
	
	/// The clinical specialty (discipline) that the referral is requested for.
	public var specialty: CodeableConcept?
	
	/// The status of the authorization/intention reflected by the referral request record.
	public var status: RequestStatus?
	
	/// Additonal information to support referral or transfer of care request.
	public var supportingInfo: [Reference]?
	
	/// Referral/Transition of care request type.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(intent: RequestIntent, status: RequestStatus) {
		self.init()
		self.intent = intent
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		authoredOn = try createInstance(type: DateTime.self, for: "authoredOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authoredOn
		basedOn = try createInstances(of: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		definition = try createInstances(of: Reference.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		groupIdentifier = try createInstance(type: Identifier.self, for: "groupIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? groupIdentifier
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		intent = createEnum(type: RequestIntent.self, for: "intent", in: json, presentKeys: &presentKeys, errors: &errors) ?? intent
		if nil == intent && !presentKeys.contains("intent") {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		occurrenceDateTime = try createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceDateTime
		occurrencePeriod = try createInstance(type: Period.self, for: "occurrencePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrencePeriod
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, presentKeys: &presentKeys, errors: &errors) ?? priority
		reasonCode = try createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCode
		reasonReference = try createInstances(of: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		recipient = try createInstances(of: Reference.self, for: "recipient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? recipient
		relevantHistory = try createInstances(of: Reference.self, for: "relevantHistory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relevantHistory
		replaces = try createInstances(of: Reference.self, for: "replaces", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? replaces
		requester = try createInstance(type: ReferralRequestRequester.self, for: "requester", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requester
		serviceRequested = try createInstances(of: CodeableConcept.self, for: "serviceRequested", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? serviceRequested
		specialty = try createInstance(type: CodeableConcept.self, for: "specialty", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? specialty
		status = createEnum(type: RequestStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		supportingInfo = try createInstances(of: Reference.self, for: "supportingInfo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supportingInfo
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authoredOn?.decorate(json: &json, withKey: "authoredOn", errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		arrayDecorate(json: &json, withKey: "definition", using: self.definition, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.groupIdentifier?.decorate(json: &json, withKey: "groupIdentifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.intent?.decorate(json: &json, withKey: "intent", errors: &errors)
		if nil == self.intent {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.occurrencePeriod?.decorate(json: &json, withKey: "occurrencePeriod", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "recipient", using: self.recipient, errors: &errors)
		arrayDecorate(json: &json, withKey: "relevantHistory", using: self.relevantHistory, errors: &errors)
		arrayDecorate(json: &json, withKey: "replaces", using: self.replaces, errors: &errors)
		self.requester?.decorate(json: &json, withKey: "requester", errors: &errors)
		arrayDecorate(json: &json, withKey: "serviceRequested", using: self.serviceRequested, errors: &errors)
		self.specialty?.decorate(json: &json, withKey: "specialty", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "supportingInfo", using: self.supportingInfo, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Who/what is requesting service.

The individual who initiated the request and has responsibility for its activation.
*/
open class ReferralRequestRequester: BackboneElement {
	override open class var resourceType: String {
		get { return "ReferralRequestRequester" }
	}
	
	/// Individual making the request.
	public var agent: Reference?
	
	/// Organization agent is acting for.
	public var onBehalfOf: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(agent: Reference) {
		self.init()
		self.agent = agent
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		agent = try createInstance(type: Reference.self, for: "agent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? agent
		if nil == agent && !presentKeys.contains("agent") {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		onBehalfOf = try createInstance(type: Reference.self, for: "onBehalfOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onBehalfOf
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.agent?.decorate(json: &json, withKey: "agent", errors: &errors)
		if nil == self.agent {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		self.onBehalfOf?.decorate(json: &json, withKey: "onBehalfOf", errors: &errors)
	}
}

