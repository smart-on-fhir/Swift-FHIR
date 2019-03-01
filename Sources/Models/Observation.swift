//
//  Observation.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Observation) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Measurements and simple assertions.

Measurements and simple assertions made about a patient, device or other subject.
*/
open class Observation: DomainResource {
	override open class var resourceType: String {
		get { return "Observation" }
	}
	
	/// Fulfills plan, proposal or order.
	public var basedOn: [Reference]?
	
	/// Observed body part.
	public var bodySite: CodeableConcept?
	
	/// Classification of  type of observation.
	public var category: [CodeableConcept]?
	
	/// Type of observation (code / type).
	public var code: CodeableConcept?
	
	/// Component results.
	public var component: [ObservationComponent]?
	
	/// Why the result is missing.
	public var dataAbsentReason: CodeableConcept?
	
	/// Related measurements the observation is made from.
	public var derivedFrom: [Reference]?
	
	/// (Measurement) Device.
	public var device: Reference?
	
	/// Clinically relevant time/time-period for observation.
	public var effectiveDateTime: DateTime?
	
	/// Clinically relevant time/time-period for observation.
	public var effectiveInstant: Instant?
	
	/// Clinically relevant time/time-period for observation.
	public var effectivePeriod: Period?
	
	/// Clinically relevant time/time-period for observation.
	public var effectiveTiming: Timing?
	
	/// Healthcare event during which this observation is made.
	public var encounter: Reference?
	
	/// What the observation is about, when it is not about the subject of record.
	public var focus: [Reference]?
	
	/// Related resource that belongs to the Observation group.
	public var hasMember: [Reference]?
	
	/// Business Identifier for observation.
	public var identifier: [Identifier]?
	
	/// High, low, normal, etc..
	public var interpretation: [CodeableConcept]?
	
	/// Date/Time this version was made available.
	public var issued: Instant?
	
	/// How it was done.
	public var method: CodeableConcept?
	
	/// Comments about the observation.
	public var note: [Annotation]?
	
	/// Part of referenced event.
	public var partOf: [Reference]?
	
	/// Who is responsible for the observation.
	public var performer: [Reference]?
	
	/// Provides guide for interpretation.
	public var referenceRange: [ObservationReferenceRange]?
	
	/// Specimen used for this observation.
	public var specimen: Reference?
	
	/// The status of the result value.
	public var status: ObservationStatus?
	
	/// Who and/or what the observation is about.
	public var subject: Reference?
	
	/// Actual result.
	public var valueBoolean: FHIRBool?
	
	/// Actual result.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Actual result.
	public var valueDateTime: DateTime?
	
	/// Actual result.
	public var valueInteger: FHIRInteger?
	
	/// Actual result.
	public var valuePeriod: Period?
	
	/// Actual result.
	public var valueQuantity: Quantity?
	
	/// Actual result.
	public var valueRange: Range?
	
	/// Actual result.
	public var valueRatio: Ratio?
	
	/// Actual result.
	public var valueSampledData: SampledData?
	
	/// Actual result.
	public var valueString: FHIRString?
	
	/// Actual result.
	public var valueTime: FHIRTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, status: ObservationStatus) {
		self.init()
		self.code = code
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		bodySite = createInstance(type: CodeableConcept.self, for: "bodySite", in: json, context: &instCtx, owner: self) ?? bodySite
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		component = createInstances(of: ObservationComponent.self, for: "component", in: json, context: &instCtx, owner: self) ?? component
		dataAbsentReason = createInstance(type: CodeableConcept.self, for: "dataAbsentReason", in: json, context: &instCtx, owner: self) ?? dataAbsentReason
		derivedFrom = createInstances(of: Reference.self, for: "derivedFrom", in: json, context: &instCtx, owner: self) ?? derivedFrom
		device = createInstance(type: Reference.self, for: "device", in: json, context: &instCtx, owner: self) ?? device
		effectiveDateTime = createInstance(type: DateTime.self, for: "effectiveDateTime", in: json, context: &instCtx, owner: self) ?? effectiveDateTime
		effectiveInstant = createInstance(type: Instant.self, for: "effectiveInstant", in: json, context: &instCtx, owner: self) ?? effectiveInstant
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		effectiveTiming = createInstance(type: Timing.self, for: "effectiveTiming", in: json, context: &instCtx, owner: self) ?? effectiveTiming
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		focus = createInstances(of: Reference.self, for: "focus", in: json, context: &instCtx, owner: self) ?? focus
		hasMember = createInstances(of: Reference.self, for: "hasMember", in: json, context: &instCtx, owner: self) ?? hasMember
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		interpretation = createInstances(of: CodeableConcept.self, for: "interpretation", in: json, context: &instCtx, owner: self) ?? interpretation
		issued = createInstance(type: Instant.self, for: "issued", in: json, context: &instCtx, owner: self) ?? issued
		method = createInstance(type: CodeableConcept.self, for: "method", in: json, context: &instCtx, owner: self) ?? method
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		partOf = createInstances(of: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		performer = createInstances(of: Reference.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		referenceRange = createInstances(of: ObservationReferenceRange.self, for: "referenceRange", in: json, context: &instCtx, owner: self) ?? referenceRange
		specimen = createInstance(type: Reference.self, for: "specimen", in: json, context: &instCtx, owner: self) ?? specimen
		status = createEnum(type: ObservationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		valueBoolean = createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, context: &instCtx, owner: self) ?? valueBoolean
		valueCodeableConcept = createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, context: &instCtx, owner: self) ?? valueCodeableConcept
		valueDateTime = createInstance(type: DateTime.self, for: "valueDateTime", in: json, context: &instCtx, owner: self) ?? valueDateTime
		valueInteger = createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, context: &instCtx, owner: self) ?? valueInteger
		valuePeriod = createInstance(type: Period.self, for: "valuePeriod", in: json, context: &instCtx, owner: self) ?? valuePeriod
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
		valueRange = createInstance(type: Range.self, for: "valueRange", in: json, context: &instCtx, owner: self) ?? valueRange
		valueRatio = createInstance(type: Ratio.self, for: "valueRatio", in: json, context: &instCtx, owner: self) ?? valueRatio
		valueSampledData = createInstance(type: SampledData.self, for: "valueSampledData", in: json, context: &instCtx, owner: self) ?? valueSampledData
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
		valueTime = createInstance(type: FHIRTime.self, for: "valueTime", in: json, context: &instCtx, owner: self) ?? valueTime
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.bodySite?.decorate(json: &json, withKey: "bodySite", errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		arrayDecorate(json: &json, withKey: "component", using: self.component, errors: &errors)
		self.dataAbsentReason?.decorate(json: &json, withKey: "dataAbsentReason", errors: &errors)
		arrayDecorate(json: &json, withKey: "derivedFrom", using: self.derivedFrom, errors: &errors)
		self.device?.decorate(json: &json, withKey: "device", errors: &errors)
		self.effectiveDateTime?.decorate(json: &json, withKey: "effectiveDateTime", errors: &errors)
		self.effectiveInstant?.decorate(json: &json, withKey: "effectiveInstant", errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		self.effectiveTiming?.decorate(json: &json, withKey: "effectiveTiming", errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "focus", using: self.focus, errors: &errors)
		arrayDecorate(json: &json, withKey: "hasMember", using: self.hasMember, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "interpretation", using: self.interpretation, errors: &errors)
		self.issued?.decorate(json: &json, withKey: "issued", errors: &errors)
		self.method?.decorate(json: &json, withKey: "method", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		arrayDecorate(json: &json, withKey: "performer", using: self.performer, errors: &errors)
		arrayDecorate(json: &json, withKey: "referenceRange", using: self.referenceRange, errors: &errors)
		self.specimen?.decorate(json: &json, withKey: "specimen", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.valueBoolean?.decorate(json: &json, withKey: "valueBoolean", errors: &errors)
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueDateTime?.decorate(json: &json, withKey: "valueDateTime", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valuePeriod?.decorate(json: &json, withKey: "valuePeriod", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueRange?.decorate(json: &json, withKey: "valueRange", errors: &errors)
		self.valueRatio?.decorate(json: &json, withKey: "valueRatio", errors: &errors)
		self.valueSampledData?.decorate(json: &json, withKey: "valueSampledData", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		self.valueTime?.decorate(json: &json, withKey: "valueTime", errors: &errors)
	}
}


/**
Component results.

Some observations have multiple component observations.  These component observations are expressed as separate code
value pairs that share the same attributes.  Examples include systolic and diastolic component observations for blood
pressure measurement and multiple component observations for genetics observations.
*/
open class ObservationComponent: BackboneElement {
	override open class var resourceType: String {
		get { return "ObservationComponent" }
	}
	
	/// Type of component observation (code / type).
	public var code: CodeableConcept?
	
	/// Why the component result is missing.
	public var dataAbsentReason: CodeableConcept?
	
	/// High, low, normal, etc..
	public var interpretation: [CodeableConcept]?
	
	/// Provides guide for interpretation of component result.
	public var referenceRange: [ObservationReferenceRange]?
	
	/// Actual component result.
	public var valueBoolean: FHIRBool?
	
	/// Actual component result.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Actual component result.
	public var valueDateTime: DateTime?
	
	/// Actual component result.
	public var valueInteger: FHIRInteger?
	
	/// Actual component result.
	public var valuePeriod: Period?
	
	/// Actual component result.
	public var valueQuantity: Quantity?
	
	/// Actual component result.
	public var valueRange: Range?
	
	/// Actual component result.
	public var valueRatio: Ratio?
	
	/// Actual component result.
	public var valueSampledData: SampledData?
	
	/// Actual component result.
	public var valueString: FHIRString?
	
	/// Actual component result.
	public var valueTime: FHIRTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		dataAbsentReason = createInstance(type: CodeableConcept.self, for: "dataAbsentReason", in: json, context: &instCtx, owner: self) ?? dataAbsentReason
		interpretation = createInstances(of: CodeableConcept.self, for: "interpretation", in: json, context: &instCtx, owner: self) ?? interpretation
		referenceRange = createInstances(of: ObservationReferenceRange.self, for: "referenceRange", in: json, context: &instCtx, owner: self) ?? referenceRange
		valueBoolean = createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, context: &instCtx, owner: self) ?? valueBoolean
		valueCodeableConcept = createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, context: &instCtx, owner: self) ?? valueCodeableConcept
		valueDateTime = createInstance(type: DateTime.self, for: "valueDateTime", in: json, context: &instCtx, owner: self) ?? valueDateTime
		valueInteger = createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, context: &instCtx, owner: self) ?? valueInteger
		valuePeriod = createInstance(type: Period.self, for: "valuePeriod", in: json, context: &instCtx, owner: self) ?? valuePeriod
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
		valueRange = createInstance(type: Range.self, for: "valueRange", in: json, context: &instCtx, owner: self) ?? valueRange
		valueRatio = createInstance(type: Ratio.self, for: "valueRatio", in: json, context: &instCtx, owner: self) ?? valueRatio
		valueSampledData = createInstance(type: SampledData.self, for: "valueSampledData", in: json, context: &instCtx, owner: self) ?? valueSampledData
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
		valueTime = createInstance(type: FHIRTime.self, for: "valueTime", in: json, context: &instCtx, owner: self) ?? valueTime
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.dataAbsentReason?.decorate(json: &json, withKey: "dataAbsentReason", errors: &errors)
		arrayDecorate(json: &json, withKey: "interpretation", using: self.interpretation, errors: &errors)
		arrayDecorate(json: &json, withKey: "referenceRange", using: self.referenceRange, errors: &errors)
		self.valueBoolean?.decorate(json: &json, withKey: "valueBoolean", errors: &errors)
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueDateTime?.decorate(json: &json, withKey: "valueDateTime", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valuePeriod?.decorate(json: &json, withKey: "valuePeriod", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueRange?.decorate(json: &json, withKey: "valueRange", errors: &errors)
		self.valueRatio?.decorate(json: &json, withKey: "valueRatio", errors: &errors)
		self.valueSampledData?.decorate(json: &json, withKey: "valueSampledData", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		self.valueTime?.decorate(json: &json, withKey: "valueTime", errors: &errors)
	}
}


/**
Provides guide for interpretation.

Guidance on how to interpret the value by comparison to a normal or recommended range.  Multiple reference ranges are
interpreted as an "OR".   In other words, to represent two distinct target populations, two `referenceRange` elements
would be used.
*/
open class ObservationReferenceRange: BackboneElement {
	override open class var resourceType: String {
		get { return "ObservationReferenceRange" }
	}
	
	/// Applicable age range, if relevant.
	public var age: Range?
	
	/// Reference range population.
	public var appliesTo: [CodeableConcept]?
	
	/// High Range, if relevant.
	public var high: Quantity?
	
	/// Low Range, if relevant.
	public var low: Quantity?
	
	/// Text based reference range in an observation.
	public var text: FHIRString?
	
	/// Reference range qualifier.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		age = createInstance(type: Range.self, for: "age", in: json, context: &instCtx, owner: self) ?? age
		appliesTo = createInstances(of: CodeableConcept.self, for: "appliesTo", in: json, context: &instCtx, owner: self) ?? appliesTo
		high = createInstance(type: Quantity.self, for: "high", in: json, context: &instCtx, owner: self) ?? high
		low = createInstance(type: Quantity.self, for: "low", in: json, context: &instCtx, owner: self) ?? low
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.age?.decorate(json: &json, withKey: "age", errors: &errors)
		arrayDecorate(json: &json, withKey: "appliesTo", using: self.appliesTo, errors: &errors)
		self.high?.decorate(json: &json, withKey: "high", errors: &errors)
		self.low?.decorate(json: &json, withKey: "low", errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

