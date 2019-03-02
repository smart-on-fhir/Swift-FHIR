//
//  ImmunizationEvaluation.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ImmunizationEvaluation) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Immunization evaluation information.

Describes a comparison of an immunization event against published recommendations to determine if the administration is
"valid" in relation to those  recommendations.
*/
open class ImmunizationEvaluation: DomainResource {
	override open class var resourceType: String {
		get { return "ImmunizationEvaluation" }
	}
	
	/// Who is responsible for publishing the recommendations.
	public var authority: Reference?
	
	/// Date evaluation was performed.
	public var date: DateTime?
	
	/// Evaluation notes.
	public var description_fhir: FHIRString?
	
	/// Dose number within series.
	public var doseNumberPositiveInt: FHIRInteger?
	
	/// Dose number within series.
	public var doseNumberString: FHIRString?
	
	/// Status of the dose relative to published recommendations.
	public var doseStatus: CodeableConcept?
	
	/// Reason for the dose status.
	public var doseStatusReason: [CodeableConcept]?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// Immunization being evaluated.
	public var immunizationEvent: Reference?
	
	/// Who this evaluation is for.
	public var patient: Reference?
	
	/// Name of vaccine series.
	public var series: FHIRString?
	
	/// Recommended number of doses for immunity.
	public var seriesDosesPositiveInt: FHIRInteger?
	
	/// Recommended number of doses for immunity.
	public var seriesDosesString: FHIRString?
	
	/// Indicates the current status of the evaluation of the vaccination administration event.
	/// Only use: ['completed', 'entered-in-error']
	public var status: MedicationAdministrationStatusCodes?
	
	/// Evaluation target disease.
	public var targetDisease: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(doseStatus: CodeableConcept, immunizationEvent: Reference, patient: Reference, status: MedicationAdministrationStatusCodes, targetDisease: CodeableConcept) {
		self.init()
		self.doseStatus = doseStatus
		self.immunizationEvent = immunizationEvent
		self.patient = patient
		self.status = status
		self.targetDisease = targetDisease
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authority = createInstance(type: Reference.self, for: "authority", in: json, context: &instCtx, owner: self) ?? authority
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		doseNumberPositiveInt = createInstance(type: FHIRInteger.self, for: "doseNumberPositiveInt", in: json, context: &instCtx, owner: self) ?? doseNumberPositiveInt
		doseNumberString = createInstance(type: FHIRString.self, for: "doseNumberString", in: json, context: &instCtx, owner: self) ?? doseNumberString
		doseStatus = createInstance(type: CodeableConcept.self, for: "doseStatus", in: json, context: &instCtx, owner: self) ?? doseStatus
		if nil == doseStatus && !instCtx.containsKey("doseStatus") {
			instCtx.addError(FHIRValidationError(missing: "doseStatus"))
		}
		doseStatusReason = createInstances(of: CodeableConcept.self, for: "doseStatusReason", in: json, context: &instCtx, owner: self) ?? doseStatusReason
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		immunizationEvent = createInstance(type: Reference.self, for: "immunizationEvent", in: json, context: &instCtx, owner: self) ?? immunizationEvent
		if nil == immunizationEvent && !instCtx.containsKey("immunizationEvent") {
			instCtx.addError(FHIRValidationError(missing: "immunizationEvent"))
		}
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		series = createInstance(type: FHIRString.self, for: "series", in: json, context: &instCtx, owner: self) ?? series
		seriesDosesPositiveInt = createInstance(type: FHIRInteger.self, for: "seriesDosesPositiveInt", in: json, context: &instCtx, owner: self) ?? seriesDosesPositiveInt
		seriesDosesString = createInstance(type: FHIRString.self, for: "seriesDosesString", in: json, context: &instCtx, owner: self) ?? seriesDosesString
		status = createEnum(type: MedicationAdministrationStatusCodes.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		targetDisease = createInstance(type: CodeableConcept.self, for: "targetDisease", in: json, context: &instCtx, owner: self) ?? targetDisease
		if nil == targetDisease && !instCtx.containsKey("targetDisease") {
			instCtx.addError(FHIRValidationError(missing: "targetDisease"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authority?.decorate(json: &json, withKey: "authority", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.doseNumberPositiveInt?.decorate(json: &json, withKey: "doseNumberPositiveInt", errors: &errors)
		self.doseNumberString?.decorate(json: &json, withKey: "doseNumberString", errors: &errors)
		self.doseStatus?.decorate(json: &json, withKey: "doseStatus", errors: &errors)
		if nil == self.doseStatus {
			errors.append(FHIRValidationError(missing: "doseStatus"))
		}
		arrayDecorate(json: &json, withKey: "doseStatusReason", using: self.doseStatusReason, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.immunizationEvent?.decorate(json: &json, withKey: "immunizationEvent", errors: &errors)
		if nil == self.immunizationEvent {
			errors.append(FHIRValidationError(missing: "immunizationEvent"))
		}
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.series?.decorate(json: &json, withKey: "series", errors: &errors)
		self.seriesDosesPositiveInt?.decorate(json: &json, withKey: "seriesDosesPositiveInt", errors: &errors)
		self.seriesDosesString?.decorate(json: &json, withKey: "seriesDosesString", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.targetDisease?.decorate(json: &json, withKey: "targetDisease", errors: &errors)
		if nil == self.targetDisease {
			errors.append(FHIRValidationError(missing: "targetDisease"))
		}
	}
}

