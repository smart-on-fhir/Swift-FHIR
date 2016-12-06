//
//  AllergyIntolerance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/AllergyIntolerance) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Allergy or Intolerance (generally: Risk of adverse reaction to a substance).

Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to
a substance.
*/
open class AllergyIntolerance: DomainResource {
	override open class var resourceType: String {
		get { return "AllergyIntolerance" }
	}
	
	/// Date record was believed accurate.
	public var assertedDate: DateTime?
	
	/// Source of the information about the allergy.
	public var asserter: Reference?
	
	/// Category of the identified substance.
	public var category: [AllergyIntoleranceCategory]?
	
	/// The clinical status of the allergy or intolerance.
	public var clinicalStatus: AllergyIntoleranceClinicalStatus?
	
	/// Allergy or intolerance code.
	public var code: CodeableConcept?
	
	/// Estimate of the potential clinical harm, or seriousness, of the reaction to the identified substance.
	public var criticality: AllergyIntoleranceCriticality?
	
	/// External ids for this item.
	public var identifier: [Identifier]?
	
	/// Date(/time) of last known occurrence of a reaction.
	public var lastOccurrence: DateTime?
	
	/// Additional text not captured in other fields.
	public var note: [Annotation]?
	
	/// When allergy or intolerance was identified.
	public var onsetAge: Age?
	
	/// When allergy or intolerance was identified.
	public var onsetDateTime: DateTime?
	
	/// When allergy or intolerance was identified.
	public var onsetPeriod: Period?
	
	/// When allergy or intolerance was identified.
	public var onsetRange: Range?
	
	/// When allergy or intolerance was identified.
	public var onsetString: FHIRString?
	
	/// Who the sensitivity is for.
	public var patient: Reference?
	
	/// Adverse Reaction Events linked to exposure to substance.
	public var reaction: [AllergyIntoleranceReaction]?
	
	/// Who recorded the sensitivity.
	public var recorder: Reference?
	
	/// Identification of the underlying physiological mechanism for the reaction risk.
	public var type: AllergyIntoleranceType?
	
	/// Assertion about certainty associated with the propensity, or potential risk, of a reaction to the identified
	/// substance (including pharmaceutical product).
	public var verificationStatus: AllergyIntoleranceVerificationStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, verificationStatus: AllergyIntoleranceVerificationStatus) {
		self.init()
		self.patient = patient
		self.verificationStatus = verificationStatus
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["assertedDate"] {
			presentKeys.insert("assertedDate")
			if let val = exist as? String {
				self.assertedDate = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "assertedDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["asserter"] {
			presentKeys.insert("asserter")
			if let val = exist as? FHIRJSON {
				do {
					self.asserter = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "asserter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "asserter", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? [String] { var i = -1
				self.category = val.map() { i += 1
					if let enumval = AllergyIntoleranceCategory(rawValue: $0) { return enumval }
					errors.append(FHIRValidationError(key: "category.\(i)", problem: "the value “\(val)” is not valid"))
					return nil
				}.filter() { nil != $0 }.map() { $0! }
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["clinicalStatus"] {
			presentKeys.insert("clinicalStatus")
			if let val = exist as? String {
				if let enumval = AllergyIntoleranceClinicalStatus(rawValue: val) {
					self.clinicalStatus = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "clinicalStatus", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "clinicalStatus", wants: String.self, has: type(of: exist)))
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
		if let exist = json["criticality"] {
			presentKeys.insert("criticality")
			if let val = exist as? String {
				if let enumval = AllergyIntoleranceCriticality(rawValue: val) {
					self.criticality = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "criticality", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "criticality", wants: String.self, has: type(of: exist)))
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
		if let exist = json["lastOccurrence"] {
			presentKeys.insert("lastOccurrence")
			if let val = exist as? String {
				self.lastOccurrence = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "lastOccurrence", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? [FHIRJSON] {
				do {
					self.note = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["onsetAge"] {
			presentKeys.insert("onsetAge")
			if let val = exist as? FHIRJSON {
				do {
					self.onsetAge = try Age(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "onsetAge"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "onsetAge", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["onsetDateTime"] {
			presentKeys.insert("onsetDateTime")
			if let val = exist as? String {
				self.onsetDateTime = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "onsetDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["onsetPeriod"] {
			presentKeys.insert("onsetPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.onsetPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "onsetPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "onsetPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["onsetRange"] {
			presentKeys.insert("onsetRange")
			if let val = exist as? FHIRJSON {
				do {
					self.onsetRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "onsetRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "onsetRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["onsetString"] {
			presentKeys.insert("onsetString")
			if let val = exist as? String {
				self.onsetString = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "onsetString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		if let exist = json["reaction"] {
			presentKeys.insert("reaction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reaction = try AllergyIntoleranceReaction.instantiate(fromArray: val, owner: self) as? [AllergyIntoleranceReaction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reaction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reaction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["recorder"] {
			presentKeys.insert("recorder")
			if let val = exist as? FHIRJSON {
				do {
					self.recorder = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "recorder"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "recorder", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = AllergyIntoleranceType(rawValue: val) {
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
		if let exist = json["verificationStatus"] {
			presentKeys.insert("verificationStatus")
			if let val = exist as? String {
				if let enumval = AllergyIntoleranceVerificationStatus(rawValue: val) {
					self.verificationStatus = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "verificationStatus", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "verificationStatus", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "verificationStatus"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let assertedDate = self.assertedDate {
			json["assertedDate"] = assertedDate.asJSON()
		}
		if let asserter = self.asserter {
			json["asserter"] = asserter.asJSON(errors: &errors)
		}
		if let category = self.category {
			json["category"] = category.map() { $0.rawValue }
		}
		if let clinicalStatus = self.clinicalStatus {
			json["clinicalStatus"] = clinicalStatus.rawValue
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let criticality = self.criticality {
			json["criticality"] = criticality.rawValue
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let lastOccurrence = self.lastOccurrence {
			json["lastOccurrence"] = lastOccurrence.asJSON()
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let onsetAge = self.onsetAge {
			json["onsetAge"] = onsetAge.asJSON(errors: &errors)
		}
		if let onsetDateTime = self.onsetDateTime {
			json["onsetDateTime"] = onsetDateTime.asJSON()
		}
		if let onsetPeriod = self.onsetPeriod {
			json["onsetPeriod"] = onsetPeriod.asJSON(errors: &errors)
		}
		if let onsetRange = self.onsetRange {
			json["onsetRange"] = onsetRange.asJSON(errors: &errors)
		}
		if let onsetString = self.onsetString {
			json["onsetString"] = onsetString.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		if let reaction = self.reaction {
			json["reaction"] = reaction.map() { $0.asJSON(errors: &errors) }
		}
		if let recorder = self.recorder {
			json["recorder"] = recorder.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		if let verificationStatus = self.verificationStatus {
			json["verificationStatus"] = verificationStatus.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "verificationStatus"))
		}
		
		return json
	}
}


/**
Adverse Reaction Events linked to exposure to substance.

Details about each adverse reaction event linked to exposure to the identified substance.
*/
open class AllergyIntoleranceReaction: BackboneElement {
	override open class var resourceType: String {
		get { return "AllergyIntoleranceReaction" }
	}
	
	/// Statement about the degree of clinical certainty that the specific substance was the cause of the manifestation
	/// in this reaction event.
	public var certainty: AllergyIntoleranceCertainty?
	
	/// Description of the event as a whole.
	public var description_fhir: FHIRString?
	
	/// How the subject was exposed to the substance.
	public var exposureRoute: CodeableConcept?
	
	/// Clinical symptoms/signs associated with the Event.
	public var manifestation: [CodeableConcept]?
	
	/// Text about event not captured in other fields.
	public var note: [Annotation]?
	
	/// Date(/time) when manifestations showed.
	public var onset: DateTime?
	
	/// Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different
	/// manifestations.
	public var severity: AllergyIntoleranceSeverity?
	
	/// Specific substance or pharmaceutical product considered to be responsible for event.
	public var substance: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(manifestation: [CodeableConcept]) {
		self.init()
		self.manifestation = manifestation
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["certainty"] {
			presentKeys.insert("certainty")
			if let val = exist as? String {
				if let enumval = AllergyIntoleranceCertainty(rawValue: val) {
					self.certainty = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "certainty", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "certainty", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["exposureRoute"] {
			presentKeys.insert("exposureRoute")
			if let val = exist as? FHIRJSON {
				do {
					self.exposureRoute = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "exposureRoute"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "exposureRoute", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["manifestation"] {
			presentKeys.insert("manifestation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.manifestation = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "manifestation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "manifestation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "manifestation"))
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? [FHIRJSON] {
				do {
					self.note = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["onset"] {
			presentKeys.insert("onset")
			if let val = exist as? String {
				self.onset = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "onset", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["severity"] {
			presentKeys.insert("severity")
			if let val = exist as? String {
				if let enumval = AllergyIntoleranceSeverity(rawValue: val) {
					self.severity = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "severity", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "severity", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["substance"] {
			presentKeys.insert("substance")
			if let val = exist as? FHIRJSON {
				do {
					self.substance = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "substance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "substance", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let certainty = self.certainty {
			json["certainty"] = certainty.rawValue
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let exposureRoute = self.exposureRoute {
			json["exposureRoute"] = exposureRoute.asJSON(errors: &errors)
		}
		if let manifestation = self.manifestation {
			json["manifestation"] = manifestation.map() { $0.asJSON(errors: &errors) }
		}
		else {
			errors.append(FHIRValidationError(missing: "manifestation"))
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let onset = self.onset {
			json["onset"] = onset.asJSON()
		}
		if let severity = self.severity {
			json["severity"] = severity.rawValue
		}
		if let substance = self.substance {
			json["substance"] = substance.asJSON(errors: &errors)
		}
		
		return json
	}
}

