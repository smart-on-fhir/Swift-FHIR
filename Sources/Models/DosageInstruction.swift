//
//  DosageInstruction.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/DosageInstruction) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
How medication should be taken.

Indicates how the medication is to be used by the patient.
*/
open class DosageInstruction: Element {
	override open class var resourceType: String {
		get { return "DosageInstruction" }
	}
	
	/// Supplemental instructions - e.g. "with meals".
	public var additionalInstructions: [CodeableConcept]?
	
	/// Take "as needed" (for x).
	public var asNeededBoolean: Bool?
	
	/// Take "as needed" (for x).
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Amount of medication per dose.
	public var doseQuantity: Quantity?
	
	/// Amount of medication per dose.
	public var doseRange: Range?
	
	/// Upper limit on medication per administration.
	public var maxDosePerAdministration: Quantity?
	
	/// Upper limit on medication per lifetime of the patient.
	public var maxDosePerLifetime: Quantity?
	
	/// Upper limit on medication per unit of time.
	public var maxDosePerPeriod: Ratio?
	
	/// Technique for administering medication.
	public var method: CodeableConcept?
	
	/// Amount of medication per unit of time.
	public var rateQuantity: Quantity?
	
	/// Amount of medication per unit of time.
	public var rateRange: Range?
	
	/// Amount of medication per unit of time.
	public var rateRatio: Ratio?
	
	/// How drug should enter body.
	public var route: CodeableConcept?
	
	/// The order of the dosage instructions.
	public var sequence: Int?
	
	/// Body site to administer to.
	public var site: CodeableConcept?
	
	/// Free text dosage instructions e.g. SIG.
	public var text: String?
	
	/// When medication should be administered.
	public var timing: Timing?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["additionalInstructions"] {
			presentKeys.insert("additionalInstructions")
			if let val = exist as? [FHIRJSON] {
				do {
					self.additionalInstructions = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "additionalInstructions"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "additionalInstructions", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["asNeededBoolean"] {
			presentKeys.insert("asNeededBoolean")
			if let val = exist as? Bool {
				self.asNeededBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "asNeededBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["asNeededCodeableConcept"] {
			presentKeys.insert("asNeededCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.asNeededCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "asNeededCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "asNeededCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["doseQuantity"] {
			presentKeys.insert("doseQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.doseQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "doseQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "doseQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["doseRange"] {
			presentKeys.insert("doseRange")
			if let val = exist as? FHIRJSON {
				do {
					self.doseRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "doseRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "doseRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["maxDosePerAdministration"] {
			presentKeys.insert("maxDosePerAdministration")
			if let val = exist as? FHIRJSON {
				do {
					self.maxDosePerAdministration = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "maxDosePerAdministration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "maxDosePerAdministration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["maxDosePerLifetime"] {
			presentKeys.insert("maxDosePerLifetime")
			if let val = exist as? FHIRJSON {
				do {
					self.maxDosePerLifetime = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "maxDosePerLifetime"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "maxDosePerLifetime", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["maxDosePerPeriod"] {
			presentKeys.insert("maxDosePerPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.maxDosePerPeriod = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "maxDosePerPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "maxDosePerPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["method"] {
			presentKeys.insert("method")
			if let val = exist as? FHIRJSON {
				do {
					self.method = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "method"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "method", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["rateQuantity"] {
			presentKeys.insert("rateQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.rateQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "rateQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "rateQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["rateRange"] {
			presentKeys.insert("rateRange")
			if let val = exist as? FHIRJSON {
				do {
					self.rateRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "rateRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "rateRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["rateRatio"] {
			presentKeys.insert("rateRatio")
			if let val = exist as? FHIRJSON {
				do {
					self.rateRatio = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "rateRatio"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "rateRatio", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["route"] {
			presentKeys.insert("route")
			if let val = exist as? FHIRJSON {
				do {
					self.route = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "route"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "route", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["sequence"] {
			presentKeys.insert("sequence")
			if let val = exist as? Int {
				self.sequence = val
			}
			else {
				errors.append(FHIRValidationError(key: "sequence", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["site"] {
			presentKeys.insert("site")
			if let val = exist as? FHIRJSON {
				do {
					self.site = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "site"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "site", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["text"] {
			presentKeys.insert("text")
			if let val = exist as? String {
				self.text = val
			}
			else {
				errors.append(FHIRValidationError(key: "text", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["timing"] {
			presentKeys.insert("timing")
			if let val = exist as? FHIRJSON {
				do {
					self.timing = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "timing"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "timing", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let additionalInstructions = self.additionalInstructions {
			json["additionalInstructions"] = additionalInstructions.map() { $0.asJSON(errors: &errors) }
		}
		if let asNeededBoolean = self.asNeededBoolean {
			json["asNeededBoolean"] = asNeededBoolean.asJSON()
		}
		if let asNeededCodeableConcept = self.asNeededCodeableConcept {
			json["asNeededCodeableConcept"] = asNeededCodeableConcept.asJSON(errors: &errors)
		}
		if let doseQuantity = self.doseQuantity {
			json["doseQuantity"] = doseQuantity.asJSON(errors: &errors)
		}
		if let doseRange = self.doseRange {
			json["doseRange"] = doseRange.asJSON(errors: &errors)
		}
		if let maxDosePerAdministration = self.maxDosePerAdministration {
			json["maxDosePerAdministration"] = maxDosePerAdministration.asJSON(errors: &errors)
		}
		if let maxDosePerLifetime = self.maxDosePerLifetime {
			json["maxDosePerLifetime"] = maxDosePerLifetime.asJSON(errors: &errors)
		}
		if let maxDosePerPeriod = self.maxDosePerPeriod {
			json["maxDosePerPeriod"] = maxDosePerPeriod.asJSON(errors: &errors)
		}
		if let method = self.method {
			json["method"] = method.asJSON(errors: &errors)
		}
		if let rateQuantity = self.rateQuantity {
			json["rateQuantity"] = rateQuantity.asJSON(errors: &errors)
		}
		if let rateRange = self.rateRange {
			json["rateRange"] = rateRange.asJSON(errors: &errors)
		}
		if let rateRatio = self.rateRatio {
			json["rateRatio"] = rateRatio.asJSON(errors: &errors)
		}
		if let route = self.route {
			json["route"] = route.asJSON(errors: &errors)
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let site = self.site {
			json["site"] = site.asJSON(errors: &errors)
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let timing = self.timing {
			json["timing"] = timing.asJSON(errors: &errors)
		}
		
		return json
	}
}

