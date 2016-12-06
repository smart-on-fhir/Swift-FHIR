//
//  TriggerDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/TriggerDefinition) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Defines an expected trigger for a module.

A description of a triggering event.
*/
open class TriggerDefinition: Element {
	override open class var resourceType: String {
		get { return "TriggerDefinition" }
	}
	
	/// Triggering data of the event.
	public var eventData: DataRequirement?
	
	/// Name of the event.
	public var eventName: FHIRString?
	
	/// Timing of the event.
	public var eventTimingDate: FHIRDate?
	
	/// Timing of the event.
	public var eventTimingDateTime: DateTime?
	
	/// Timing of the event.
	public var eventTimingReference: Reference?
	
	/// Timing of the event.
	public var eventTimingTiming: Timing?
	
	/// The type of triggering event.
	public var type: TriggerType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: TriggerType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["eventData"] {
			presentKeys.insert("eventData")
			if let val = exist as? FHIRJSON {
				do {
					self.eventData = try DataRequirement(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "eventData"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "eventData", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["eventName"] {
			presentKeys.insert("eventName")
			if let val = exist as? String {
				self.eventName = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "eventName", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["eventTimingDate"] {
			presentKeys.insert("eventTimingDate")
			if let val = exist as? String {
				self.eventTimingDate = FHIRDate(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "eventTimingDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["eventTimingDateTime"] {
			presentKeys.insert("eventTimingDateTime")
			if let val = exist as? String {
				self.eventTimingDateTime = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "eventTimingDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["eventTimingReference"] {
			presentKeys.insert("eventTimingReference")
			if let val = exist as? FHIRJSON {
				do {
					self.eventTimingReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "eventTimingReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "eventTimingReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["eventTimingTiming"] {
			presentKeys.insert("eventTimingTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.eventTimingTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "eventTimingTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "eventTimingTiming", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = TriggerType(rawValue: val) {
					self.type = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "type", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let eventData = self.eventData {
			json["eventData"] = eventData.asJSON(errors: &errors)
		}
		if let eventName = self.eventName {
			json["eventName"] = eventName.asJSON()
		}
		if let eventTimingDate = self.eventTimingDate {
			json["eventTimingDate"] = eventTimingDate.asJSON()
		}
		if let eventTimingDateTime = self.eventTimingDateTime {
			json["eventTimingDateTime"] = eventTimingDateTime.asJSON()
		}
		if let eventTimingReference = self.eventTimingReference {
			json["eventTimingReference"] = eventTimingReference.asJSON(errors: &errors)
		}
		if let eventTimingTiming = self.eventTimingTiming {
			json["eventTimingTiming"] = eventTimingTiming.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return json
	}
}

