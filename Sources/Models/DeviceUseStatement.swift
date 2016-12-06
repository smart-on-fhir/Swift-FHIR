//
//  DeviceUseStatement.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/DeviceUseStatement) on 2016-12-06.
//  2016, SMART Health IT.
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
	public var notes: [String]?
	
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
		if let exist = json["bodySite"] {
			presentKeys.insert("bodySite")
			if let val = exist as? FHIRJSON {
				do {
					self.bodySite = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "bodySite"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "bodySite", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["device"] {
			presentKeys.insert("device")
			if let val = exist as? FHIRJSON {
				do {
					self.device = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "device"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "device", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "device"))
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
		if let exist = json["indication"] {
			presentKeys.insert("indication")
			if let val = exist as? [FHIRJSON] {
				do {
					self.indication = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "indication"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "indication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["notes"] {
			presentKeys.insert("notes")
			if let val = exist as? [String] {
				self.notes = val
			}
			else {
				errors.append(FHIRValidationError(key: "notes", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["recordedOn"] {
			presentKeys.insert("recordedOn")
			if let val = exist as? String {
				self.recordedOn = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "recordedOn", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["subject"] {
			presentKeys.insert("subject")
			if let val = exist as? FHIRJSON {
				do {
					self.subject = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subject"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		if let exist = json["timingDateTime"] {
			presentKeys.insert("timingDateTime")
			if let val = exist as? String {
				self.timingDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "timingDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["timingPeriod"] {
			presentKeys.insert("timingPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.timingPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "timingPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "timingPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["timingTiming"] {
			presentKeys.insert("timingTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.timingTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "timingTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "timingTiming", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["whenUsed"] {
			presentKeys.insert("whenUsed")
			if let val = exist as? FHIRJSON {
				do {
					self.whenUsed = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "whenUsed"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "whenUsed", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.asJSON(errors: &errors)
		}
		if let device = self.device {
			json["device"] = device.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let indication = self.indication {
			json["indication"] = indication.map() { $0.asJSON(errors: &errors) }
		}
		if let notes = self.notes {
			json["notes"] = notes.map() { $0.asJSON() }
		}
		if let recordedOn = self.recordedOn {
			json["recordedOn"] = recordedOn.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		if let timingDateTime = self.timingDateTime {
			json["timingDateTime"] = timingDateTime.asJSON()
		}
		if let timingPeriod = self.timingPeriod {
			json["timingPeriod"] = timingPeriod.asJSON(errors: &errors)
		}
		if let timingTiming = self.timingTiming {
			json["timingTiming"] = timingTiming.asJSON(errors: &errors)
		}
		if let whenUsed = self.whenUsed {
			json["whenUsed"] = whenUsed.asJSON(errors: &errors)
		}
		
		return json
	}
}

