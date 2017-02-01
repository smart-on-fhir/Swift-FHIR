//
//  DeviceUseStatement.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/DeviceUseStatement) on 2017-02-01.
//  2017, SMART Health IT.
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
	
	/// Target body site.
	public var bodySite: CodeableConcept?
	
	/// Reference to device used.
	public var device: Reference?
	
	/// External identifier for this record.
	public var identifier: [Identifier]?
	
	/// Why device was used.
	public var indication: [CodeableConcept]?
	
	/// Addition details (comments, instructions).
	public var notes: [FHIRString]?
	
	/// When statement was recorded.
	public var recordedOn: DateTime?
	
	/// Patient using device.
	public var subject: Reference?
	
	/// How often  the device was used.
	public var timingDateTime: DateTime?
	
	/// How often  the device was used.
	public var timingPeriod: Period?
	
	/// How often  the device was used.
	public var timingTiming: Timing?
	
	/// Period device was used.
	public var whenUsed: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(device: Reference, subject: Reference) {
		self.init()
		self.device = device
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		bodySite = try createInstance(type: CodeableConcept.self, for: "bodySite", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? bodySite
		device = try createInstance(type: Reference.self, for: "device", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? device
		if nil == device && !presentKeys.contains("device") {
			errors.append(FHIRValidationError(missing: "device"))
		}
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		indication = try createInstances(of: CodeableConcept.self, for: "indication", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? indication
		notes = try createInstances(of: FHIRString.self, for: "notes", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? notes
		recordedOn = try createInstance(type: DateTime.self, for: "recordedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? recordedOn
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		if nil == subject && !presentKeys.contains("subject") {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		timingDateTime = try createInstance(type: DateTime.self, for: "timingDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingDateTime
		timingPeriod = try createInstance(type: Period.self, for: "timingPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingPeriod
		timingTiming = try createInstance(type: Timing.self, for: "timingTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timingTiming
		whenUsed = try createInstance(type: Period.self, for: "whenUsed", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? whenUsed
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.bodySite?.decorate(json: &json, withKey: "bodySite", errors: &errors)
		self.device?.decorate(json: &json, withKey: "device", errors: &errors)
		if nil == self.device {
			errors.append(FHIRValidationError(missing: "device"))
		}
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "indication", using: self.indication, errors: &errors)
		arrayDecorate(json: &json, withKey: "notes", using: self.notes, errors: &errors)
		self.recordedOn?.decorate(json: &json, withKey: "recordedOn", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		self.timingDateTime?.decorate(json: &json, withKey: "timingDateTime", errors: &errors)
		self.timingPeriod?.decorate(json: &json, withKey: "timingPeriod", errors: &errors)
		self.timingTiming?.decorate(json: &json, withKey: "timingTiming", errors: &errors)
		self.whenUsed?.decorate(json: &json, withKey: "whenUsed", errors: &errors)
	}
}

