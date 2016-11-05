//
//  Specimen.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/Specimen) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
Sample for analysis.

A sample to be used for analysis.
*/
open class Specimen: DomainResource {
	override open class var resourceType: String {
		get { return "Specimen" }
	}
	
	/// Identifier assigned by the lab.
	public var accessionIdentifier: Identifier?
	
	/// Collection details.
	public var collection: SpecimenCollection?
	
	/// Direct container of specimen (tube/slide, etc.).
	public var container: [SpecimenContainer]?
	
	/// External Identifier.
	public var identifier: [Identifier]?
	
	/// Comments.
	public var note: [Annotation]?
	
	/// Specimen from which this specimen originated.
	public var parent: [Reference]?
	
	/// The time when specimen was received for processing.
	public var receivedTime: DateTime?
	
	/// Why the specimen was collected.
	public var request: [Reference]?
	
	/// The availability of the specimen.
	public var status: SpecimenStatus?
	
	/// Where the specimen came from. This may be from the patient(s) or from the environment or a device.
	public var subject: Reference?
	
	/// Treatment and processing step details.
	public var treatment: [SpecimenTreatment]?
	
	/// Kind of material that forms the specimen.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(subject: Reference) {
		self.init()
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["accessionIdentifier"] {
			presentKeys.insert("accessionIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.accessionIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "accessionIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "accessionIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["collection"] {
			presentKeys.insert("collection")
			if let val = exist as? FHIRJSON {
				do {
					self.collection = try SpecimenCollection(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "collection"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "collection", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["container"] {
			presentKeys.insert("container")
			if let val = exist as? [FHIRJSON] {
				do {
					self.container = try SpecimenContainer.instantiate(fromArray: val, owner: self) as? [SpecimenContainer]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "container"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "container", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["parent"] {
			presentKeys.insert("parent")
			if let val = exist as? [FHIRJSON] {
				do {
					self.parent = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "parent"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "parent", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["receivedTime"] {
			presentKeys.insert("receivedTime")
			if let val = exist as? String {
				self.receivedTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "receivedTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["request"] {
			presentKeys.insert("request")
			if let val = exist as? [FHIRJSON] {
				do {
					self.request = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "request"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "request", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = SpecimenStatus(rawValue: val) {
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
		else {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		if let exist = json["treatment"] {
			presentKeys.insert("treatment")
			if let val = exist as? [FHIRJSON] {
				do {
					self.treatment = try SpecimenTreatment.instantiate(fromArray: val, owner: self) as? [SpecimenTreatment]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "treatment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "treatment", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let accessionIdentifier = self.accessionIdentifier {
			json["accessionIdentifier"] = accessionIdentifier.asJSON(errors: &errors)
		}
		if let collection = self.collection {
			json["collection"] = collection.asJSON(errors: &errors)
		}
		if let container = self.container {
			json["container"] = container.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let parent = self.parent {
			json["parent"] = parent.map() { $0.asJSON(errors: &errors) }
		}
		if let receivedTime = self.receivedTime {
			json["receivedTime"] = receivedTime.asJSON()
		}
		if let request = self.request {
			json["request"] = request.map() { $0.asJSON(errors: &errors) }
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		if let treatment = self.treatment {
			json["treatment"] = treatment.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Collection details.

Details concerning the specimen collection.
*/
open class SpecimenCollection: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenCollection" }
	}
	
	/// Anatomical collection site.
	public var bodySite: CodeableConcept?
	
	/// Collection time.
	public var collectedDateTime: DateTime?
	
	/// Collection time.
	public var collectedPeriod: Period?
	
	/// Who collected the specimen.
	public var collector: Reference?
	
	/// Technique used to perform collection.
	public var method: CodeableConcept?
	
	/// The quantity of specimen collected.
	public var quantity: Quantity?
	
	
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
		if let exist = json["collectedDateTime"] {
			presentKeys.insert("collectedDateTime")
			if let val = exist as? String {
				self.collectedDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "collectedDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["collectedPeriod"] {
			presentKeys.insert("collectedPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.collectedPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "collectedPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "collectedPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["collector"] {
			presentKeys.insert("collector")
			if let val = exist as? FHIRJSON {
				do {
					self.collector = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "collector"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "collector", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["quantity"] {
			presentKeys.insert("quantity")
			if let val = exist as? FHIRJSON {
				do {
					self.quantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "quantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.asJSON(errors: &errors)
		}
		if let collectedDateTime = self.collectedDateTime {
			json["collectedDateTime"] = collectedDateTime.asJSON()
		}
		if let collectedPeriod = self.collectedPeriod {
			json["collectedPeriod"] = collectedPeriod.asJSON(errors: &errors)
		}
		if let collector = self.collector {
			json["collector"] = collector.asJSON(errors: &errors)
		}
		if let method = self.method {
			json["method"] = method.asJSON(errors: &errors)
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Direct container of specimen (tube/slide, etc.).

The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is not
addressed here.
*/
open class SpecimenContainer: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenContainer" }
	}
	
	/// Additive associated with container.
	public var additiveCodeableConcept: CodeableConcept?
	
	/// Additive associated with container.
	public var additiveReference: Reference?
	
	/// Container volume or size.
	public var capacity: Quantity?
	
	/// Textual description of the container.
	public var description_fhir: String?
	
	/// Id for the container.
	public var identifier: [Identifier]?
	
	/// Quantity of specimen within container.
	public var specimenQuantity: Quantity?
	
	/// Kind of container directly associated with specimen.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["additiveCodeableConcept"] {
			presentKeys.insert("additiveCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.additiveCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "additiveCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "additiveCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["additiveReference"] {
			presentKeys.insert("additiveReference")
			if let val = exist as? FHIRJSON {
				do {
					self.additiveReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "additiveReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "additiveReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["capacity"] {
			presentKeys.insert("capacity")
			if let val = exist as? FHIRJSON {
				do {
					self.capacity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "capacity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "capacity", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["specimenQuantity"] {
			presentKeys.insert("specimenQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.specimenQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "specimenQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "specimenQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let additiveCodeableConcept = self.additiveCodeableConcept {
			json["additiveCodeableConcept"] = additiveCodeableConcept.asJSON(errors: &errors)
		}
		if let additiveReference = self.additiveReference {
			json["additiveReference"] = additiveReference.asJSON(errors: &errors)
		}
		if let capacity = self.capacity {
			json["capacity"] = capacity.asJSON(errors: &errors)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let specimenQuantity = self.specimenQuantity {
			json["specimenQuantity"] = specimenQuantity.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Treatment and processing step details.

Details concerning treatment and processing steps for the specimen.
*/
open class SpecimenTreatment: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenTreatment" }
	}
	
	/// Material used in the processing step.
	public var additive: [Reference]?
	
	/// Textual description of procedure.
	public var description_fhir: String?
	
	/// Indicates the treatment or processing step  applied to the specimen.
	public var procedure: CodeableConcept?
	
	/// Date and time of specimen treatment.
	public var timeDateTime: DateTime?
	
	/// Date and time of specimen treatment.
	public var timePeriod: Period?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["additive"] {
			presentKeys.insert("additive")
			if let val = exist as? [FHIRJSON] {
				do {
					self.additive = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "additive"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "additive", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["procedure"] {
			presentKeys.insert("procedure")
			if let val = exist as? FHIRJSON {
				do {
					self.procedure = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "procedure"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "procedure", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["timeDateTime"] {
			presentKeys.insert("timeDateTime")
			if let val = exist as? String {
				self.timeDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "timeDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["timePeriod"] {
			presentKeys.insert("timePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.timePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "timePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "timePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let additive = self.additive {
			json["additive"] = additive.map() { $0.asJSON(errors: &errors) }
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let procedure = self.procedure {
			json["procedure"] = procedure.asJSON(errors: &errors)
		}
		if let timeDateTime = self.timeDateTime {
			json["timeDateTime"] = timeDateTime.asJSON()
		}
		if let timePeriod = self.timePeriod {
			json["timePeriod"] = timePeriod.asJSON(errors: &errors)
		}
		
		return json
	}
}

