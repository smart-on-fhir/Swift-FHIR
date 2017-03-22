//
//  Dosage.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Dosage) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
How the medication is/was taken or should be taken.

Indicates how the medication is/was taken or should be taken by the patient.
*/
open class Dosage: Element {
	override open class var resourceType: String {
		get { return "Dosage" }
	}
	
	/// Supplemental instruction - e.g. "with meals".
	public var additionalInstruction: [CodeableConcept]?
	
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
	
	/// Patient or consumer oriented instructions.
	public var patientInstruction: FHIRString?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		additionalInstruction = createInstances(of: CodeableConcept.self, for: "additionalInstruction", in: json, context: &instCtx, owner: self) ?? additionalInstruction
		asNeededBoolean = createInstance(type: FHIRBool.self, for: "asNeededBoolean", in: json, context: &instCtx, owner: self) ?? asNeededBoolean
		asNeededCodeableConcept = createInstance(type: CodeableConcept.self, for: "asNeededCodeableConcept", in: json, context: &instCtx, owner: self) ?? asNeededCodeableConcept
		doseQuantity = createInstance(type: Quantity.self, for: "doseQuantity", in: json, context: &instCtx, owner: self) ?? doseQuantity
		doseRange = createInstance(type: Range.self, for: "doseRange", in: json, context: &instCtx, owner: self) ?? doseRange
		maxDosePerAdministration = createInstance(type: Quantity.self, for: "maxDosePerAdministration", in: json, context: &instCtx, owner: self) ?? maxDosePerAdministration
		maxDosePerLifetime = createInstance(type: Quantity.self, for: "maxDosePerLifetime", in: json, context: &instCtx, owner: self) ?? maxDosePerLifetime
		maxDosePerPeriod = createInstance(type: Ratio.self, for: "maxDosePerPeriod", in: json, context: &instCtx, owner: self) ?? maxDosePerPeriod
		method = createInstance(type: CodeableConcept.self, for: "method", in: json, context: &instCtx, owner: self) ?? method
		patientInstruction = createInstance(type: FHIRString.self, for: "patientInstruction", in: json, context: &instCtx, owner: self) ?? patientInstruction
		rateQuantity = createInstance(type: Quantity.self, for: "rateQuantity", in: json, context: &instCtx, owner: self) ?? rateQuantity
		rateRange = createInstance(type: Range.self, for: "rateRange", in: json, context: &instCtx, owner: self) ?? rateRange
		rateRatio = createInstance(type: Ratio.self, for: "rateRatio", in: json, context: &instCtx, owner: self) ?? rateRatio
		route = createInstance(type: CodeableConcept.self, for: "route", in: json, context: &instCtx, owner: self) ?? route
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		site = createInstance(type: CodeableConcept.self, for: "site", in: json, context: &instCtx, owner: self) ?? site
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		timing = createInstance(type: Timing.self, for: "timing", in: json, context: &instCtx, owner: self) ?? timing
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "additionalInstruction", using: self.additionalInstruction, errors: &errors)
		self.asNeededBoolean?.decorate(json: &json, withKey: "asNeededBoolean", errors: &errors)
		self.asNeededCodeableConcept?.decorate(json: &json, withKey: "asNeededCodeableConcept", errors: &errors)
		self.doseQuantity?.decorate(json: &json, withKey: "doseQuantity", errors: &errors)
		self.doseRange?.decorate(json: &json, withKey: "doseRange", errors: &errors)
		self.maxDosePerAdministration?.decorate(json: &json, withKey: "maxDosePerAdministration", errors: &errors)
		self.maxDosePerLifetime?.decorate(json: &json, withKey: "maxDosePerLifetime", errors: &errors)
		self.maxDosePerPeriod?.decorate(json: &json, withKey: "maxDosePerPeriod", errors: &errors)
		self.method?.decorate(json: &json, withKey: "method", errors: &errors)
		self.patientInstruction?.decorate(json: &json, withKey: "patientInstruction", errors: &errors)
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

