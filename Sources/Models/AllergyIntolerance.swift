//
//  AllergyIntolerance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/AllergyIntolerance) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Allergy or Intolerance (generally: Risk of adverse reaction to a substance).
 *
 *  Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure
 *  to a substance.
 */
open class AllergyIntolerance: DomainResource {
	override open class var resourceType: String {
		get { return "AllergyIntolerance" }
	}
	
	/// Date record was believed accurate.
	public var attestedDate: DateTime?
	
	/// food | medication | biologic | environment.
	public var category: [String]?
	
	/// Allergy or intolerance code.
	public var code: CodeableConcept?
	
	/// low | high | unable-to-assess.
	public var criticality: String?
	
	/// External ids for this item.
	public var identifier: [Identifier]?
	
	/// Date(/time) of last known occurrence of a reaction.
	public var lastOccurrence: DateTime?
	
	/// Additional text not captured in other fields.
	public var note: [Annotation]?
	
	/// Date(/time) when manifestations showed.
	public var onset: DateTime?
	
	/// Who the sensitivity is for.
	public var patient: Reference?
	
	/// Adverse Reaction Events linked to exposure to substance.
	public var reaction: [AllergyIntoleranceReaction]?
	
	/// Who recorded the sensitivity.
	public var recorder: Reference?
	
	/// Source of the information about the allergy.
	public var reporter: Reference?
	
	/// active | active-confirmed | inactive | resolved | refuted | entered-in-error.
	public var status: String?
	
	/// allergy | intolerance - Underlying mechanism (if known).
	public var type: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference) {
		self.init()
		self.patient = patient
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["attestedDate"] {
			presentKeys.insert("attestedDate")
			if let val = exist as? String {
				self.attestedDate = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "attestedDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? [String] {
				self.category = val
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: Array<String>.self, has: type(of: exist)))
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
				self.criticality = val
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
				self.lastOccurrence = DateTime(string: val)
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
		if let exist = json["onset"] {
			presentKeys.insert("onset")
			if let val = exist as? String {
				self.onset = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "onset", wants: String.self, has: type(of: exist)))
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
		if let exist = json["reporter"] {
			presentKeys.insert("reporter")
			if let val = exist as? FHIRJSON {
				do {
					self.reporter = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reporter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reporter", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = val
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let attestedDate = self.attestedDate {
			json["attestedDate"] = attestedDate.asJSON()
		}
		if let category = self.category {
			var arr = [Any]()
			for val in category {
				arr.append(val.asJSON())
			}
			json["category"] = arr
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let criticality = self.criticality {
			json["criticality"] = criticality.asJSON()
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
		if let onset = self.onset {
			json["onset"] = onset.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let reaction = self.reaction {
			json["reaction"] = reaction.map() { $0.asJSON(errors: &errors) }
		}
		if let recorder = self.recorder {
			json["recorder"] = recorder.asJSON(errors: &errors)
		}
		if let reporter = self.reporter {
			json["reporter"] = reporter.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Adverse Reaction Events linked to exposure to substance.
 *
 *  Details about each adverse reaction event linked to exposure to the identified substance.
 */
open class AllergyIntoleranceReaction: BackboneElement {
	override open class var resourceType: String {
		get { return "AllergyIntoleranceReaction" }
	}
	
	/// unlikely | likely | confirmed | unknown.
	public var certainty: String?
	
	/// Description of the event as a whole.
	public var description_fhir: String?
	
	/// How the subject was exposed to the substance.
	public var exposureRoute: CodeableConcept?
	
	/// Clinical symptoms/signs associated with the Event.
	public var manifestation: [CodeableConcept]?
	
	/// Text about event not captured in other fields.
	public var note: [Annotation]?
	
	/// Date(/time) when manifestations showed.
	public var onset: DateTime?
	
	/// mild | moderate | severe (of event as a whole).
	public var severity: String?
	
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
				self.certainty = val
			}
			else {
				errors.append(FHIRValidationError(key: "certainty", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
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
				self.onset = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "onset", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["severity"] {
			presentKeys.insert("severity")
			if let val = exist as? String {
				self.severity = val
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
			json["certainty"] = certainty.asJSON()
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
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let onset = self.onset {
			json["onset"] = onset.asJSON()
		}
		if let severity = self.severity {
			json["severity"] = severity.asJSON()
		}
		if let substance = self.substance {
			json["substance"] = substance.asJSON(errors: &errors)
		}
		
		return json
	}
}

