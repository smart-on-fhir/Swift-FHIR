//
//  DeviceUseRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/DeviceUseRequest) on 2016-12-08.
//  2016, SMART Health IT.
//

import Foundation


/**
Medical device request.

Represents a request for a patient to employ a medical device. The device may be an implantable device, or an external
assistive device, such as a walker.
*/
open class DeviceUseRequest: DomainResource {
	override open class var resourceType: String {
		get { return "DeviceUseRequest" }
	}
	
	/// When recorded.
	public var authored: DateTime?
	
	/// What request fulfills.
	public var basedOn: [Reference]?
	
	/// Encounter or Episode motivating request.
	public var context: Reference?
	
	/// Protocol or definition.
	public var definition: [Reference]?
	
	/// Device requested.
	public var deviceCodeableConcept: CodeableConcept?
	
	/// Device requested.
	public var deviceReference: Reference?
	
	/// Request identifier.
	public var identifier: [Identifier]?
	
	/// Notes or comments.
	public var note: [Annotation]?
	
	/// Desired time or schedule for use.
	public var occurrenceDateTime: DateTime?
	
	/// Desired time or schedule for use.
	public var occurrencePeriod: Period?
	
	/// Desired time or schedule for use.
	public var occurrenceTiming: Timing?
	
	/// Requested Filler.
	public var performer: Reference?
	
	/// Fille role.
	public var performerType: CodeableConcept?
	
	/// Coded Reason for request.
	public var reasonCode: [CodeableConcept]?
	
	/// Linked Reason for request.
	public var reasonReference: [Reference]?
	
	/// Request provenance.
	public var relevantHistory: [Reference]?
	
	/// What request replaces.
	public var replaces: [Reference]?
	
	/// Who/what is requesting diagnostics.
	public var requester: Reference?
	
	/// Identifier of composite request.
	public var requisition: Identifier?
	
	/// proposal | plan | original-order | encoded | reflex-order.
	public var stage: CodeableConcept?
	
	/// The status of the request.
	public var status: RequestStatus?
	
	/// Focus of request.
	public var subject: Reference?
	
	/// Additional clinical information.
	public var supportingInfo: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(device: Any, stage: CodeableConcept, subject: Reference) {
		self.init()
		if let value = device as? Reference {
			self.deviceReference = value
		}
		else if let value = device as? CodeableConcept {
			self.deviceCodeableConcept = value
		}
		else {
			fhir_warn("Type “\(type(of: device))” for property “\(device)” is invalid, ignoring")
		}
		self.stage = stage
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		authored = try createInstance(type: DateTime.self, for: "authored", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authored
		basedOn = try createInstances(of: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		definition = try createInstances(of: Reference.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		deviceCodeableConcept = try createInstance(type: CodeableConcept.self, for: "deviceCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? deviceCodeableConcept
		deviceReference = try createInstance(type: Reference.self, for: "deviceReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? deviceReference
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		occurrenceDateTime = try createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceDateTime
		occurrencePeriod = try createInstance(type: Period.self, for: "occurrencePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrencePeriod
		occurrenceTiming = try createInstance(type: Timing.self, for: "occurrenceTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceTiming
		performer = try createInstance(type: Reference.self, for: "performer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performer
		performerType = try createInstance(type: CodeableConcept.self, for: "performerType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performerType
		reasonCode = try createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCode
		reasonReference = try createInstances(of: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		relevantHistory = try createInstances(of: Reference.self, for: "relevantHistory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relevantHistory
		replaces = try createInstances(of: Reference.self, for: "replaces", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? replaces
		requester = try createInstance(type: Reference.self, for: "requester", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requester
		requisition = try createInstance(type: Identifier.self, for: "requisition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requisition
		stage = try createInstance(type: CodeableConcept.self, for: "stage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? stage
		if nil == stage && !presentKeys.contains("stage") {
			errors.append(FHIRValidationError(missing: "stage"))
		}
		status = createEnum(type: RequestStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		if nil == subject && !presentKeys.contains("subject") {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		supportingInfo = try createInstances(of: Reference.self, for: "supportingInfo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supportingInfo
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.deviceReference && nil == self.deviceCodeableConcept {
			errors.append(FHIRValidationError(missing: "device[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authored?.decorate(json: &json, withKey: "authored", errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		arrayDecorate(json: &json, withKey: "definition", using: self.definition, errors: &errors)
		self.deviceCodeableConcept?.decorate(json: &json, withKey: "deviceCodeableConcept", errors: &errors)
		self.deviceReference?.decorate(json: &json, withKey: "deviceReference", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.occurrencePeriod?.decorate(json: &json, withKey: "occurrencePeriod", errors: &errors)
		self.occurrenceTiming?.decorate(json: &json, withKey: "occurrenceTiming", errors: &errors)
		self.performer?.decorate(json: &json, withKey: "performer", errors: &errors)
		self.performerType?.decorate(json: &json, withKey: "performerType", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "relevantHistory", using: self.relevantHistory, errors: &errors)
		arrayDecorate(json: &json, withKey: "replaces", using: self.replaces, errors: &errors)
		self.requester?.decorate(json: &json, withKey: "requester", errors: &errors)
		self.requisition?.decorate(json: &json, withKey: "requisition", errors: &errors)
		self.stage?.decorate(json: &json, withKey: "stage", errors: &errors)
		if nil == self.stage {
			errors.append(FHIRValidationError(missing: "stage"))
		}
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		arrayDecorate(json: &json, withKey: "supportingInfo", using: self.supportingInfo, errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.deviceReference && nil == self.deviceCodeableConcept {
			errors.append(FHIRValidationError(missing: "device[x]"))
		}
	}
}

