//
//  Observation.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Observation) on 2016-12-08.
//  2016, SMART Health IT.
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
	
	/// Observed body part.
	public var bodySite: CodeableConcept?
	
	/// Classification of  type of observation.
	public var category: [CodeableConcept]?
	
	/// Type of observation (code / type).
	public var code: CodeableConcept?
	
	/// Comments about result.
	public var comment: FHIRString?
	
	/// Component results.
	public var component: [ObservationComponent]?
	
	/// Why the result is missing.
	public var dataAbsentReason: CodeableConcept?
	
	/// (Measurement) Device.
	public var device: Reference?
	
	/// Clinically relevant time/time-period for observation.
	public var effectiveDateTime: DateTime?
	
	/// Clinically relevant time/time-period for observation.
	public var effectivePeriod: Period?
	
	/// Healthcare event during which this observation is made.
	public var encounter: Reference?
	
	/// Unique Id for this particular observation.
	public var identifier: [Identifier]?
	
	/// High, low, normal, etc..
	public var interpretation: CodeableConcept?
	
	/// Date/Time this was made available.
	public var issued: Instant?
	
	/// How it was done.
	public var method: CodeableConcept?
	
	/// Who is responsible for the observation.
	public var performer: [Reference]?
	
	/// Provides guide for interpretation.
	public var referenceRange: [ObservationReferenceRange]?
	
	/// Resource related to this observation.
	public var related: [ObservationRelated]?
	
	/// Specimen used for this observation.
	public var specimen: Reference?
	
	/// The status of the result value.
	public var status: ObservationStatus?
	
	/// Who and/or what this is about.
	public var subject: Reference?
	
	/// Actual result.
	public var valueAttachment: Attachment?
	
	/// Actual result.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Actual result.
	public var valueDateTime: DateTime?
	
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		bodySite = try createInstance(type: CodeableConcept.self, for: "bodySite", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? bodySite
		category = try createInstances(of: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		comment = try createInstance(type: FHIRString.self, for: "comment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? comment
		component = try createInstances(of: ObservationComponent.self, for: "component", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? component
		dataAbsentReason = try createInstance(type: CodeableConcept.self, for: "dataAbsentReason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dataAbsentReason
		device = try createInstance(type: Reference.self, for: "device", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? device
		effectiveDateTime = try createInstance(type: DateTime.self, for: "effectiveDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? effectiveDateTime
		effectivePeriod = try createInstance(type: Period.self, for: "effectivePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? effectivePeriod
		encounter = try createInstance(type: Reference.self, for: "encounter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? encounter
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		interpretation = try createInstance(type: CodeableConcept.self, for: "interpretation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? interpretation
		issued = try createInstance(type: Instant.self, for: "issued", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? issued
		method = try createInstance(type: CodeableConcept.self, for: "method", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? method
		performer = try createInstances(of: Reference.self, for: "performer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performer
		referenceRange = try createInstances(of: ObservationReferenceRange.self, for: "referenceRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? referenceRange
		related = try createInstances(of: ObservationRelated.self, for: "related", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? related
		specimen = try createInstance(type: Reference.self, for: "specimen", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? specimen
		status = createEnum(type: ObservationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		valueAttachment = try createInstance(type: Attachment.self, for: "valueAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAttachment
		valueCodeableConcept = try createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCodeableConcept
		valueDateTime = try createInstance(type: DateTime.self, for: "valueDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDateTime
		valuePeriod = try createInstance(type: Period.self, for: "valuePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valuePeriod
		valueQuantity = try createInstance(type: Quantity.self, for: "valueQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueQuantity
		valueRange = try createInstance(type: Range.self, for: "valueRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueRange
		valueRatio = try createInstance(type: Ratio.self, for: "valueRatio", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueRatio
		valueSampledData = try createInstance(type: SampledData.self, for: "valueSampledData", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSampledData
		valueString = try createInstance(type: FHIRString.self, for: "valueString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueString
		valueTime = try createInstance(type: FHIRTime.self, for: "valueTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueTime
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.bodySite?.decorate(json: &json, withKey: "bodySite", errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		arrayDecorate(json: &json, withKey: "component", using: self.component, errors: &errors)
		self.dataAbsentReason?.decorate(json: &json, withKey: "dataAbsentReason", errors: &errors)
		self.device?.decorate(json: &json, withKey: "device", errors: &errors)
		self.effectiveDateTime?.decorate(json: &json, withKey: "effectiveDateTime", errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.interpretation?.decorate(json: &json, withKey: "interpretation", errors: &errors)
		self.issued?.decorate(json: &json, withKey: "issued", errors: &errors)
		self.method?.decorate(json: &json, withKey: "method", errors: &errors)
		arrayDecorate(json: &json, withKey: "performer", using: self.performer, errors: &errors)
		arrayDecorate(json: &json, withKey: "referenceRange", using: self.referenceRange, errors: &errors)
		arrayDecorate(json: &json, withKey: "related", using: self.related, errors: &errors)
		self.specimen?.decorate(json: &json, withKey: "specimen", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.valueAttachment?.decorate(json: &json, withKey: "valueAttachment", errors: &errors)
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueDateTime?.decorate(json: &json, withKey: "valueDateTime", errors: &errors)
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
	public var interpretation: CodeableConcept?
	
	/// Provides guide for interpretation of component result.
	public var referenceRange: [ObservationReferenceRange]?
	
	/// Actual component result.
	public var valueAttachment: Attachment?
	
	/// Actual component result.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Actual component result.
	public var valueDateTime: DateTime?
	
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		dataAbsentReason = try createInstance(type: CodeableConcept.self, for: "dataAbsentReason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dataAbsentReason
		interpretation = try createInstance(type: CodeableConcept.self, for: "interpretation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? interpretation
		referenceRange = try createInstances(of: ObservationReferenceRange.self, for: "referenceRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? referenceRange
		valueAttachment = try createInstance(type: Attachment.self, for: "valueAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAttachment
		valueCodeableConcept = try createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCodeableConcept
		valueDateTime = try createInstance(type: DateTime.self, for: "valueDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDateTime
		valuePeriod = try createInstance(type: Period.self, for: "valuePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valuePeriod
		valueQuantity = try createInstance(type: Quantity.self, for: "valueQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueQuantity
		valueRange = try createInstance(type: Range.self, for: "valueRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueRange
		valueRatio = try createInstance(type: Ratio.self, for: "valueRatio", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueRatio
		valueSampledData = try createInstance(type: SampledData.self, for: "valueSampledData", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSampledData
		valueString = try createInstance(type: FHIRString.self, for: "valueString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueString
		valueTime = try createInstance(type: FHIRTime.self, for: "valueTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueTime
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.dataAbsentReason?.decorate(json: &json, withKey: "dataAbsentReason", errors: &errors)
		self.interpretation?.decorate(json: &json, withKey: "interpretation", errors: &errors)
		arrayDecorate(json: &json, withKey: "referenceRange", using: self.referenceRange, errors: &errors)
		self.valueAttachment?.decorate(json: &json, withKey: "valueAttachment", errors: &errors)
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueDateTime?.decorate(json: &json, withKey: "valueDateTime", errors: &errors)
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

Guidance on how to interpret the value by comparison to a normal or recommended range.
*/
open class ObservationReferenceRange: BackboneElement {
	override open class var resourceType: String {
		get { return "ObservationReferenceRange" }
	}
	
	/// Applicable age range, if relevant.
	public var age: Range?
	
	/// High Range, if relevant.
	public var high: Quantity?
	
	/// Low Range, if relevant.
	public var low: Quantity?
	
	/// Reference range qualifier.
	public var meaning: [CodeableConcept]?
	
	/// Text based reference range in an observation.
	public var text: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		age = try createInstance(type: Range.self, for: "age", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? age
		high = try createInstance(type: Quantity.self, for: "high", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? high
		low = try createInstance(type: Quantity.self, for: "low", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? low
		meaning = try createInstances(of: CodeableConcept.self, for: "meaning", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? meaning
		text = try createInstance(type: FHIRString.self, for: "text", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? text
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.age?.decorate(json: &json, withKey: "age", errors: &errors)
		self.high?.decorate(json: &json, withKey: "high", errors: &errors)
		self.low?.decorate(json: &json, withKey: "low", errors: &errors)
		arrayDecorate(json: &json, withKey: "meaning", using: self.meaning, errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
	}
}


/**
Resource related to this observation.

A  reference to another resource (usually another Observation) whose relationship is defined by the relationship type
code.
*/
open class ObservationRelated: BackboneElement {
	override open class var resourceType: String {
		get { return "ObservationRelated" }
	}
	
	/// Resource that is related to this one.
	public var target: Reference?
	
	/// A code specifying the kind of relationship that exists with the target resource.
	public var type: ObservationRelationshipType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(target: Reference) {
		self.init()
		self.target = target
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		target = try createInstance(type: Reference.self, for: "target", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? target
		if nil == target && !presentKeys.contains("target") {
			errors.append(FHIRValidationError(missing: "target"))
		}
		type = createEnum(type: ObservationRelationshipType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.target?.decorate(json: &json, withKey: "target", errors: &errors)
		if nil == self.target {
			errors.append(FHIRValidationError(missing: "target"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

