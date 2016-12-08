//
//  ProcedureRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ProcedureRequest) on 2016-12-08.
//  2016, SMART Health IT.
//

import Foundation


/**
A request for a procedure to be performed.

A request for a procedure to be performed. May be a proposal or an order.
*/
open class ProcedureRequest: DomainResource {
	override open class var resourceType: String {
		get { return "ProcedureRequest" }
	}
	
	/// Preconditions for procedure.
	public var asNeededBoolean: FHIRBool?
	
	/// Preconditions for procedure.
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// What part of body to perform on.
	public var bodySite: [CodeableConcept]?
	
	/// What procedure to perform.
	public var code: CodeableConcept?
	
	/// Encounter request created during.
	public var encounter: Reference?
	
	/// Unique identifier for the request.
	public var identifier: [Identifier]?
	
	/// Additional information about desired procedure.
	public var notes: [Annotation]?
	
	/// When request was created.
	public var orderedOn: DateTime?
	
	/// Who made request.
	public var orderer: Reference?
	
	/// Who should perform the procedure.
	public var performer: Reference?
	
	/// The clinical priority associated with this order.
	public var priority: ProcedureRequestPriority?
	
	/// Why procedure should occur.
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Why procedure should occur.
	public var reasonReference: Reference?
	
	/// When procedure should occur.
	public var scheduledDateTime: DateTime?
	
	/// When procedure should occur.
	public var scheduledPeriod: Period?
	
	/// When procedure should occur.
	public var scheduledTiming: Timing?
	
	/// The status of the order.
	public var status: ProcedureRequestStatus?
	
	/// Who the procedure should be done to.
	public var subject: Reference?
	
	/// Extra information to use in performing request.
	public var supportingInfo: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, subject: Reference) {
		self.init()
		self.code = code
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		asNeededBoolean = try createInstance(type: FHIRBool.self, for: "asNeededBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? asNeededBoolean
		asNeededCodeableConcept = try createInstance(type: CodeableConcept.self, for: "asNeededCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? asNeededCodeableConcept
		bodySite = try createInstances(of: CodeableConcept.self, for: "bodySite", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? bodySite
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		encounter = try createInstance(type: Reference.self, for: "encounter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? encounter
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		notes = try createInstances(of: Annotation.self, for: "notes", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? notes
		orderedOn = try createInstance(type: DateTime.self, for: "orderedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? orderedOn
		orderer = try createInstance(type: Reference.self, for: "orderer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? orderer
		performer = try createInstance(type: Reference.self, for: "performer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performer
		priority = createEnum(type: ProcedureRequestPriority.self, for: "priority", in: json, presentKeys: &presentKeys, errors: &errors) ?? priority
		reasonCodeableConcept = try createInstance(type: CodeableConcept.self, for: "reasonCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCodeableConcept
		reasonReference = try createInstance(type: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		scheduledDateTime = try createInstance(type: DateTime.self, for: "scheduledDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? scheduledDateTime
		scheduledPeriod = try createInstance(type: Period.self, for: "scheduledPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? scheduledPeriod
		scheduledTiming = try createInstance(type: Timing.self, for: "scheduledTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? scheduledTiming
		status = createEnum(type: ProcedureRequestStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		if nil == subject && !presentKeys.contains("subject") {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		supportingInfo = try createInstances(of: Reference.self, for: "supportingInfo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supportingInfo
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.asNeededBoolean?.decorate(json: &json, withKey: "asNeededBoolean", errors: &errors)
		self.asNeededCodeableConcept?.decorate(json: &json, withKey: "asNeededCodeableConcept", errors: &errors)
		arrayDecorate(json: &json, withKey: "bodySite", using: self.bodySite, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "notes", using: self.notes, errors: &errors)
		self.orderedOn?.decorate(json: &json, withKey: "orderedOn", errors: &errors)
		self.orderer?.decorate(json: &json, withKey: "orderer", errors: &errors)
		self.performer?.decorate(json: &json, withKey: "performer", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		self.reasonCodeableConcept?.decorate(json: &json, withKey: "reasonCodeableConcept", errors: &errors)
		self.reasonReference?.decorate(json: &json, withKey: "reasonReference", errors: &errors)
		self.scheduledDateTime?.decorate(json: &json, withKey: "scheduledDateTime", errors: &errors)
		self.scheduledPeriod?.decorate(json: &json, withKey: "scheduledPeriod", errors: &errors)
		self.scheduledTiming?.decorate(json: &json, withKey: "scheduledTiming", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		arrayDecorate(json: &json, withKey: "supportingInfo", using: self.supportingInfo, errors: &errors)
	}
}

