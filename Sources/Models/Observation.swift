//
//  Observation.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Observation) on 2016-12-06.
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
	public var comment: String?
	
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
	public var valueString: String?
	
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
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? [FHIRJSON] {
				do {
					self.category = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "category"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["comment"] {
			presentKeys.insert("comment")
			if let val = exist as? String {
				self.comment = val
			}
			else {
				errors.append(FHIRValidationError(key: "comment", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["component"] {
			presentKeys.insert("component")
			if let val = exist as? [FHIRJSON] {
				do {
					self.component = try ObservationComponent.instantiate(fromArray: val, owner: self) as? [ObservationComponent]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "component"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "component", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["dataAbsentReason"] {
			presentKeys.insert("dataAbsentReason")
			if let val = exist as? FHIRJSON {
				do {
					self.dataAbsentReason = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dataAbsentReason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dataAbsentReason", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["effectiveDateTime"] {
			presentKeys.insert("effectiveDateTime")
			if let val = exist as? String {
				self.effectiveDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "effectiveDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["effectivePeriod"] {
			presentKeys.insert("effectivePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.effectivePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "effectivePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "effectivePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["encounter"] {
			presentKeys.insert("encounter")
			if let val = exist as? FHIRJSON {
				do {
					self.encounter = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "encounter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
			}
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
		if let exist = json["interpretation"] {
			presentKeys.insert("interpretation")
			if let val = exist as? FHIRJSON {
				do {
					self.interpretation = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "interpretation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "interpretation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["issued"] {
			presentKeys.insert("issued")
			if let val = exist as? String {
				self.issued = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "issued", wants: String.self, has: type(of: exist)))
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
		if let exist = json["performer"] {
			presentKeys.insert("performer")
			if let val = exist as? [FHIRJSON] {
				do {
					self.performer = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "performer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "performer", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["referenceRange"] {
			presentKeys.insert("referenceRange")
			if let val = exist as? [FHIRJSON] {
				do {
					self.referenceRange = try ObservationReferenceRange.instantiate(fromArray: val, owner: self) as? [ObservationReferenceRange]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "referenceRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "referenceRange", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["related"] {
			presentKeys.insert("related")
			if let val = exist as? [FHIRJSON] {
				do {
					self.related = try ObservationRelated.instantiate(fromArray: val, owner: self) as? [ObservationRelated]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "related"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "related", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["specimen"] {
			presentKeys.insert("specimen")
			if let val = exist as? FHIRJSON {
				do {
					self.specimen = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "specimen"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "specimen", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = ObservationStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
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
		if let exist = json["valueAttachment"] {
			presentKeys.insert("valueAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCodeableConcept"] {
			presentKeys.insert("valueCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDateTime"] {
			presentKeys.insert("valueDateTime")
			if let val = exist as? String {
				self.valueDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuePeriod"] {
			presentKeys.insert("valuePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.valuePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valuePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valuePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueQuantity"] {
			presentKeys.insert("valueQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.valueQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRange"] {
			presentKeys.insert("valueRange")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRatio"] {
			presentKeys.insert("valueRatio")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRatio = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRatio"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRatio", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSampledData"] {
			presentKeys.insert("valueSampledData")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSampledData = try SampledData(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSampledData"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSampledData", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueString"] {
			presentKeys.insert("valueString")
			if let val = exist as? String {
				self.valueString = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueTime"] {
			presentKeys.insert("valueTime")
			if let val = exist as? String {
				self.valueTime = FHIRTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueTime", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.asJSON(errors: &errors)
		}
		if let category = self.category {
			json["category"] = category.map() { $0.asJSON(errors: &errors) }
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let component = self.component {
			json["component"] = component.map() { $0.asJSON(errors: &errors) }
		}
		if let dataAbsentReason = self.dataAbsentReason {
			json["dataAbsentReason"] = dataAbsentReason.asJSON(errors: &errors)
		}
		if let device = self.device {
			json["device"] = device.asJSON(errors: &errors)
		}
		if let effectiveDateTime = self.effectiveDateTime {
			json["effectiveDateTime"] = effectiveDateTime.asJSON()
		}
		if let effectivePeriod = self.effectivePeriod {
			json["effectivePeriod"] = effectivePeriod.asJSON(errors: &errors)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let interpretation = self.interpretation {
			json["interpretation"] = interpretation.asJSON(errors: &errors)
		}
		if let issued = self.issued {
			json["issued"] = issued.asJSON()
		}
		if let method = self.method {
			json["method"] = method.asJSON(errors: &errors)
		}
		if let performer = self.performer {
			json["performer"] = performer.map() { $0.asJSON(errors: &errors) }
		}
		if let referenceRange = self.referenceRange {
			json["referenceRange"] = referenceRange.map() { $0.asJSON(errors: &errors) }
		}
		if let related = self.related {
			json["related"] = related.map() { $0.asJSON(errors: &errors) }
		}
		if let specimen = self.specimen {
			json["specimen"] = specimen.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		if let valueAttachment = self.valueAttachment {
			json["valueAttachment"] = valueAttachment.asJSON(errors: &errors)
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON(errors: &errors)
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON(errors: &errors)
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON(errors: &errors)
		}
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON(errors: &errors)
		}
		if let valueRatio = self.valueRatio {
			json["valueRatio"] = valueRatio.asJSON(errors: &errors)
		}
		if let valueSampledData = self.valueSampledData {
			json["valueSampledData"] = valueSampledData.asJSON(errors: &errors)
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		
		return json
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
	public var valueString: String?
	
	/// Actual component result.
	public var valueTime: FHIRTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["dataAbsentReason"] {
			presentKeys.insert("dataAbsentReason")
			if let val = exist as? FHIRJSON {
				do {
					self.dataAbsentReason = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dataAbsentReason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dataAbsentReason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["interpretation"] {
			presentKeys.insert("interpretation")
			if let val = exist as? FHIRJSON {
				do {
					self.interpretation = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "interpretation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "interpretation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["referenceRange"] {
			presentKeys.insert("referenceRange")
			if let val = exist as? [FHIRJSON] {
				do {
					self.referenceRange = try ObservationReferenceRange.instantiate(fromArray: val, owner: self) as? [ObservationReferenceRange]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "referenceRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "referenceRange", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAttachment"] {
			presentKeys.insert("valueAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCodeableConcept"] {
			presentKeys.insert("valueCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDateTime"] {
			presentKeys.insert("valueDateTime")
			if let val = exist as? String {
				self.valueDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuePeriod"] {
			presentKeys.insert("valuePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.valuePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valuePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valuePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueQuantity"] {
			presentKeys.insert("valueQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.valueQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRange"] {
			presentKeys.insert("valueRange")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRatio"] {
			presentKeys.insert("valueRatio")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRatio = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRatio"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRatio", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSampledData"] {
			presentKeys.insert("valueSampledData")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSampledData = try SampledData(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSampledData"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSampledData", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueString"] {
			presentKeys.insert("valueString")
			if let val = exist as? String {
				self.valueString = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueTime"] {
			presentKeys.insert("valueTime")
			if let val = exist as? String {
				self.valueTime = FHIRTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueTime", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let dataAbsentReason = self.dataAbsentReason {
			json["dataAbsentReason"] = dataAbsentReason.asJSON(errors: &errors)
		}
		if let interpretation = self.interpretation {
			json["interpretation"] = interpretation.asJSON(errors: &errors)
		}
		if let referenceRange = self.referenceRange {
			json["referenceRange"] = referenceRange.map() { $0.asJSON(errors: &errors) }
		}
		if let valueAttachment = self.valueAttachment {
			json["valueAttachment"] = valueAttachment.asJSON(errors: &errors)
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON(errors: &errors)
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON(errors: &errors)
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON(errors: &errors)
		}
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON(errors: &errors)
		}
		if let valueRatio = self.valueRatio {
			json["valueRatio"] = valueRatio.asJSON(errors: &errors)
		}
		if let valueSampledData = self.valueSampledData {
			json["valueSampledData"] = valueSampledData.asJSON(errors: &errors)
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		
		return json
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
	public var text: String?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["age"] {
			presentKeys.insert("age")
			if let val = exist as? FHIRJSON {
				do {
					self.age = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "age"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "age", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["high"] {
			presentKeys.insert("high")
			if let val = exist as? FHIRJSON {
				do {
					self.high = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "high"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "high", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["low"] {
			presentKeys.insert("low")
			if let val = exist as? FHIRJSON {
				do {
					self.low = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "low"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "low", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["meaning"] {
			presentKeys.insert("meaning")
			if let val = exist as? [FHIRJSON] {
				do {
					self.meaning = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "meaning"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "meaning", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let age = self.age {
			json["age"] = age.asJSON(errors: &errors)
		}
		if let high = self.high {
			json["high"] = high.asJSON(errors: &errors)
		}
		if let low = self.low {
			json["low"] = low.asJSON(errors: &errors)
		}
		if let meaning = self.meaning {
			json["meaning"] = meaning.map() { $0.asJSON(errors: &errors) }
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
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
		if let exist = json["target"] {
			presentKeys.insert("target")
			if let val = exist as? FHIRJSON {
				do {
					self.target = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "target"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "target", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "target"))
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = ObservationRelationshipType(rawValue: val) {
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let target = self.target {
			json["target"] = target.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		
		return json
	}
}

