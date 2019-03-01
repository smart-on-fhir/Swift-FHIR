//
//  DeviceUseStatement.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/DeviceUseStatement) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Record of use of a device.

A record of a device being used by a patient where the record is the result of a report from the patient or another
clinician.
*/
open class DeviceUseStatement: DomainResource {
	override open class var resourceType: String {
		get { return "DeviceUseStatement" }
	}
	
	/// Fulfills plan, proposal or order.
	public var basedOn: [Reference]?
	
	/// Target body site.
	public var bodySite: CodeableConcept?
	
	/// Supporting information.
	public var derivedFrom: [Reference]?
	
	/// Reference to device used.
	public var device: Reference?
	
	/// External identifier for this record.
	public var identifier: [Identifier]?
	
	/// Addition details (comments, instructions).
	public var note: [Annotation]?
	
	/// Why device was used.
	public var reasonCode: [CodeableConcept]?
	
	/// Why was DeviceUseStatement performed?.
	public var reasonReference: [Reference]?
	
	/// When statement was recorded.
	public var recordedOn: DateTime?
	
	/// Who made the statement.
	public var source: Reference?
	
	/// A code representing the patient or other source's judgment about the state of the device used that this
	/// statement is about.  Generally this will be active or completed.
	public var status: DeviceUseStatementStatus?
	
	/// Patient using device.
	public var subject: Reference?
	
	/// How often  the device was used.
	public var timingDateTime: DateTime?
	
	/// How often  the device was used.
	public var timingPeriod: Period?
	
	/// How often  the device was used.
	public var timingTiming: Timing?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(device: Reference, status: DeviceUseStatementStatus, subject: Reference) {
		self.init()
		self.device = device
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		bodySite = createInstance(type: CodeableConcept.self, for: "bodySite", in: json, context: &instCtx, owner: self) ?? bodySite
		derivedFrom = createInstances(of: Reference.self, for: "derivedFrom", in: json, context: &instCtx, owner: self) ?? derivedFrom
		device = createInstance(type: Reference.self, for: "device", in: json, context: &instCtx, owner: self) ?? device
		if nil == device && !instCtx.containsKey("device") {
			instCtx.addError(FHIRValidationError(missing: "device"))
		}
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		recordedOn = createInstance(type: DateTime.self, for: "recordedOn", in: json, context: &instCtx, owner: self) ?? recordedOn
		source = createInstance(type: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		status = createEnum(type: DeviceUseStatementStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
		timingDateTime = createInstance(type: DateTime.self, for: "timingDateTime", in: json, context: &instCtx, owner: self) ?? timingDateTime
		timingPeriod = createInstance(type: Period.self, for: "timingPeriod", in: json, context: &instCtx, owner: self) ?? timingPeriod
		timingTiming = createInstance(type: Timing.self, for: "timingTiming", in: json, context: &instCtx, owner: self) ?? timingTiming
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.bodySite?.decorate(json: &json, withKey: "bodySite", errors: &errors)
		arrayDecorate(json: &json, withKey: "derivedFrom", using: self.derivedFrom, errors: &errors)
		self.device?.decorate(json: &json, withKey: "device", errors: &errors)
		if nil == self.device {
			errors.append(FHIRValidationError(missing: "device"))
		}
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.recordedOn?.decorate(json: &json, withKey: "recordedOn", errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		self.timingDateTime?.decorate(json: &json, withKey: "timingDateTime", errors: &errors)
		self.timingPeriod?.decorate(json: &json, withKey: "timingPeriod", errors: &errors)
		self.timingTiming?.decorate(json: &json, withKey: "timingTiming", errors: &errors)
	}
}

