//
//  ServiceRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ServiceRequest) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A request for a service to be performed.

A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.
*/
open class ServiceRequest: DomainResource {
	override open class var resourceType: String {
		get { return "ServiceRequest" }
	}
	
	/// Preconditions for service.
	public var asNeededBoolean: FHIRBool?
	
	/// Preconditions for service.
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Date request signed.
	public var authoredOn: DateTime?
	
	/// What request fulfills.
	public var basedOn: [Reference]?
	
	/// Location on Body.
	public var bodySite: [CodeableConcept]?
	
	/// Classification of service.
	public var category: [CodeableConcept]?
	
	/// What is being requested/ordered.
	public var code: CodeableConcept?
	
	/// True if service/procedure should not be performed.
	public var doNotPerform: FHIRBool?
	
	/// Encounter in which the request was created.
	public var encounter: Reference?
	
	/// Identifiers assigned to this order.
	public var identifier: [Identifier]?
	
	/// Instantiates FHIR protocol or definition.
	public var instantiatesCanonical: [FHIRURL]?
	
	/// Instantiates external protocol or definition.
	public var instantiatesUri: [FHIRURL]?
	
	/// Associated insurance coverage.
	public var insurance: [Reference]?
	
	/// Whether the request is a proposal, plan, an original order or a reflex order.
	public var intent: RequestIntent?
	
	/// Requested location.
	public var locationCode: [CodeableConcept]?
	
	/// Requested location.
	public var locationReference: [Reference]?
	
	/// Comments.
	public var note: [Annotation]?
	
	/// When service should occur.
	public var occurrenceDateTime: DateTime?
	
	/// When service should occur.
	public var occurrencePeriod: Period?
	
	/// When service should occur.
	public var occurrenceTiming: Timing?
	
	/// Additional order information.
	public var orderDetail: [CodeableConcept]?
	
	/// Patient or consumer-oriented instructions.
	public var patientInstruction: FHIRString?
	
	/// Requested performer.
	public var performer: [Reference]?
	
	/// Performer role.
	public var performerType: CodeableConcept?
	
	/// Indicates how quickly the ServiceRequest should be addressed with respect to other requests.
	public var priority: RequestPriority?
	
	/// Service amount.
	public var quantityQuantity: Quantity?
	
	/// Service amount.
	public var quantityRange: Range?
	
	/// Service amount.
	public var quantityRatio: Ratio?
	
	/// Explanation/Justification for procedure or service.
	public var reasonCode: [CodeableConcept]?
	
	/// Explanation/Justification for service or service.
	public var reasonReference: [Reference]?
	
	/// Request provenance.
	public var relevantHistory: [Reference]?
	
	/// What request replaces.
	public var replaces: [Reference]?
	
	/// Who/what is requesting service.
	public var requester: Reference?
	
	/// Composite Request ID.
	public var requisition: Identifier?
	
	/// Procedure Samples.
	public var specimen: [Reference]?
	
	/// The status of the order.
	public var status: RequestStatus?
	
	/// Individual or Entity the service is ordered for.
	public var subject: Reference?
	
	/// Additional clinical information.
	public var supportingInfo: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(intent: RequestIntent, status: RequestStatus, subject: Reference) {
		self.init()
		self.intent = intent
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		asNeededBoolean = createInstance(type: FHIRBool.self, for: "asNeededBoolean", in: json, context: &instCtx, owner: self) ?? asNeededBoolean
		asNeededCodeableConcept = createInstance(type: CodeableConcept.self, for: "asNeededCodeableConcept", in: json, context: &instCtx, owner: self) ?? asNeededCodeableConcept
		authoredOn = createInstance(type: DateTime.self, for: "authoredOn", in: json, context: &instCtx, owner: self) ?? authoredOn
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		bodySite = createInstances(of: CodeableConcept.self, for: "bodySite", in: json, context: &instCtx, owner: self) ?? bodySite
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		doNotPerform = createInstance(type: FHIRBool.self, for: "doNotPerform", in: json, context: &instCtx, owner: self) ?? doNotPerform
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		instantiatesCanonical = createInstances(of: FHIRURL.self, for: "instantiatesCanonical", in: json, context: &instCtx, owner: self) ?? instantiatesCanonical
		instantiatesUri = createInstances(of: FHIRURL.self, for: "instantiatesUri", in: json, context: &instCtx, owner: self) ?? instantiatesUri
		insurance = createInstances(of: Reference.self, for: "insurance", in: json, context: &instCtx, owner: self) ?? insurance
		intent = createEnum(type: RequestIntent.self, for: "intent", in: json, context: &instCtx) ?? intent
		if nil == intent && !instCtx.containsKey("intent") {
			instCtx.addError(FHIRValidationError(missing: "intent"))
		}
		locationCode = createInstances(of: CodeableConcept.self, for: "locationCode", in: json, context: &instCtx, owner: self) ?? locationCode
		locationReference = createInstances(of: Reference.self, for: "locationReference", in: json, context: &instCtx, owner: self) ?? locationReference
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		occurrenceDateTime = createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, context: &instCtx, owner: self) ?? occurrenceDateTime
		occurrencePeriod = createInstance(type: Period.self, for: "occurrencePeriod", in: json, context: &instCtx, owner: self) ?? occurrencePeriod
		occurrenceTiming = createInstance(type: Timing.self, for: "occurrenceTiming", in: json, context: &instCtx, owner: self) ?? occurrenceTiming
		orderDetail = createInstances(of: CodeableConcept.self, for: "orderDetail", in: json, context: &instCtx, owner: self) ?? orderDetail
		patientInstruction = createInstance(type: FHIRString.self, for: "patientInstruction", in: json, context: &instCtx, owner: self) ?? patientInstruction
		performer = createInstances(of: Reference.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		performerType = createInstance(type: CodeableConcept.self, for: "performerType", in: json, context: &instCtx, owner: self) ?? performerType
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, context: &instCtx) ?? priority
		quantityQuantity = createInstance(type: Quantity.self, for: "quantityQuantity", in: json, context: &instCtx, owner: self) ?? quantityQuantity
		quantityRange = createInstance(type: Range.self, for: "quantityRange", in: json, context: &instCtx, owner: self) ?? quantityRange
		quantityRatio = createInstance(type: Ratio.self, for: "quantityRatio", in: json, context: &instCtx, owner: self) ?? quantityRatio
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		relevantHistory = createInstances(of: Reference.self, for: "relevantHistory", in: json, context: &instCtx, owner: self) ?? relevantHistory
		replaces = createInstances(of: Reference.self, for: "replaces", in: json, context: &instCtx, owner: self) ?? replaces
		requester = createInstance(type: Reference.self, for: "requester", in: json, context: &instCtx, owner: self) ?? requester
		requisition = createInstance(type: Identifier.self, for: "requisition", in: json, context: &instCtx, owner: self) ?? requisition
		specimen = createInstances(of: Reference.self, for: "specimen", in: json, context: &instCtx, owner: self) ?? specimen
		status = createEnum(type: RequestStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
		supportingInfo = createInstances(of: Reference.self, for: "supportingInfo", in: json, context: &instCtx, owner: self) ?? supportingInfo
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.asNeededBoolean?.decorate(json: &json, withKey: "asNeededBoolean", errors: &errors)
		self.asNeededCodeableConcept?.decorate(json: &json, withKey: "asNeededCodeableConcept", errors: &errors)
		self.authoredOn?.decorate(json: &json, withKey: "authoredOn", errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		arrayDecorate(json: &json, withKey: "bodySite", using: self.bodySite, errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.doNotPerform?.decorate(json: &json, withKey: "doNotPerform", errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "instantiatesCanonical", using: self.instantiatesCanonical, errors: &errors)
		arrayDecorate(json: &json, withKey: "instantiatesUri", using: self.instantiatesUri, errors: &errors)
		arrayDecorate(json: &json, withKey: "insurance", using: self.insurance, errors: &errors)
		self.intent?.decorate(json: &json, withKey: "intent", errors: &errors)
		if nil == self.intent {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		arrayDecorate(json: &json, withKey: "locationCode", using: self.locationCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "locationReference", using: self.locationReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.occurrencePeriod?.decorate(json: &json, withKey: "occurrencePeriod", errors: &errors)
		self.occurrenceTiming?.decorate(json: &json, withKey: "occurrenceTiming", errors: &errors)
		arrayDecorate(json: &json, withKey: "orderDetail", using: self.orderDetail, errors: &errors)
		self.patientInstruction?.decorate(json: &json, withKey: "patientInstruction", errors: &errors)
		arrayDecorate(json: &json, withKey: "performer", using: self.performer, errors: &errors)
		self.performerType?.decorate(json: &json, withKey: "performerType", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		self.quantityQuantity?.decorate(json: &json, withKey: "quantityQuantity", errors: &errors)
		self.quantityRange?.decorate(json: &json, withKey: "quantityRange", errors: &errors)
		self.quantityRatio?.decorate(json: &json, withKey: "quantityRatio", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "relevantHistory", using: self.relevantHistory, errors: &errors)
		arrayDecorate(json: &json, withKey: "replaces", using: self.replaces, errors: &errors)
		self.requester?.decorate(json: &json, withKey: "requester", errors: &errors)
		self.requisition?.decorate(json: &json, withKey: "requisition", errors: &errors)
		arrayDecorate(json: &json, withKey: "specimen", using: self.specimen, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		arrayDecorate(json: &json, withKey: "supportingInfo", using: self.supportingInfo, errors: &errors)
	}
}

