//
//  DosageInstruction.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/DosageInstruction) on 2016-12-08.
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
	public var asNeededBoolean: FHIRBool?
	
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
	public var sequence: FHIRInteger?
	
	/// Body site to administer to.
	public var site: CodeableConcept?
	
	/// Free text dosage instructions e.g. SIG.
	public var text: FHIRString?
	
	/// When medication should be administered.
	public var timing: Timing?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		additionalInstructions = try createInstances(of: CodeableConcept.self, for: "additionalInstructions", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? additionalInstructions
		asNeededBoolean = try createInstance(type: FHIRBool.self, for: "asNeededBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? asNeededBoolean
		asNeededCodeableConcept = try createInstance(type: CodeableConcept.self, for: "asNeededCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? asNeededCodeableConcept
		doseQuantity = try createInstance(type: Quantity.self, for: "doseQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? doseQuantity
		doseRange = try createInstance(type: Range.self, for: "doseRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? doseRange
		maxDosePerAdministration = try createInstance(type: Quantity.self, for: "maxDosePerAdministration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maxDosePerAdministration
		maxDosePerLifetime = try createInstance(type: Quantity.self, for: "maxDosePerLifetime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maxDosePerLifetime
		maxDosePerPeriod = try createInstance(type: Ratio.self, for: "maxDosePerPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maxDosePerPeriod
		method = try createInstance(type: CodeableConcept.self, for: "method", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? method
		rateQuantity = try createInstance(type: Quantity.self, for: "rateQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? rateQuantity
		rateRange = try createInstance(type: Range.self, for: "rateRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? rateRange
		rateRatio = try createInstance(type: Ratio.self, for: "rateRatio", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? rateRatio
		route = try createInstance(type: CodeableConcept.self, for: "route", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? route
		sequence = try createInstance(type: FHIRInteger.self, for: "sequence", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sequence
		site = try createInstance(type: CodeableConcept.self, for: "site", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? site
		text = try createInstance(type: FHIRString.self, for: "text", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? text
		timing = try createInstance(type: Timing.self, for: "timing", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timing
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "additionalInstructions", using: self.additionalInstructions, errors: &errors)
		self.asNeededBoolean?.decorate(json: &json, withKey: "asNeededBoolean", errors: &errors)
		self.asNeededCodeableConcept?.decorate(json: &json, withKey: "asNeededCodeableConcept", errors: &errors)
		self.doseQuantity?.decorate(json: &json, withKey: "doseQuantity", errors: &errors)
		self.doseRange?.decorate(json: &json, withKey: "doseRange", errors: &errors)
		self.maxDosePerAdministration?.decorate(json: &json, withKey: "maxDosePerAdministration", errors: &errors)
		self.maxDosePerLifetime?.decorate(json: &json, withKey: "maxDosePerLifetime", errors: &errors)
		self.maxDosePerPeriod?.decorate(json: &json, withKey: "maxDosePerPeriod", errors: &errors)
		self.method?.decorate(json: &json, withKey: "method", errors: &errors)
		self.rateQuantity?.decorate(json: &json, withKey: "rateQuantity", errors: &errors)
		self.rateRange?.decorate(json: &json, withKey: "rateRange", errors: &errors)
		self.rateRatio?.decorate(json: &json, withKey: "rateRatio", errors: &errors)
		self.route?.decorate(json: &json, withKey: "route", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		self.site?.decorate(json: &json, withKey: "site", errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		self.timing?.decorate(json: &json, withKey: "timing", errors: &errors)
	}
}

