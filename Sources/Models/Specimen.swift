//
//  Specimen.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Specimen) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Sample for analysis.
 *
 *  A sample to be used for analysis.
 */
public class Specimen: DomainResource {
	override public class var resourceName: String {
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
	
	/// available | unavailable | unsatisfactory | entered-in-error.
	public var status: String?
	
	/// Where the specimen came from. This may be from the patient(s) or from the environment or a device.
	public var subject: Reference?
	
	/// Treatment and processing step details.
	public var treatment: [SpecimenTreatment]?
	
	/// Kind of material that forms the specimen.
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(subject: Reference) {
		self.init(json: nil)
		self.subject = subject
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["accessionIdentifier"] {
				presentKeys.insert("accessionIdentifier")
				if let val = exist as? FHIRJSON {
					self.accessionIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "accessionIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["collection"] {
				presentKeys.insert("collection")
				if let val = exist as? FHIRJSON {
					self.collection = SpecimenCollection(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "collection", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["container"] {
				presentKeys.insert("container")
				if let val = exist as? [FHIRJSON] {
					self.container = SpecimenContainer.from(val, owner: self) as? [SpecimenContainer]
				}
				else {
					errors.append(FHIRJSONError(key: "container", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.from(val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["parent"] {
				presentKeys.insert("parent")
				if let val = exist as? [FHIRJSON] {
					self.parent = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "parent", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["receivedTime"] {
				presentKeys.insert("receivedTime")
				if let val = exist as? String {
					self.receivedTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "receivedTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["request"] {
				presentKeys.insert("request")
				if let val = exist as? [FHIRJSON] {
					self.request = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "request", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "subject"))
			}
			if let exist: AnyObject = js["treatment"] {
				presentKeys.insert("treatment")
				if let val = exist as? [FHIRJSON] {
					self.treatment = SpecimenTreatment.from(val, owner: self) as? [SpecimenTreatment]
				}
				else {
					errors.append(FHIRJSONError(key: "treatment", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let accessionIdentifier = self.accessionIdentifier {
			json["accessionIdentifier"] = accessionIdentifier.asJSON()
		}
		if let collection = self.collection {
			json["collection"] = collection.asJSON()
		}
		if let container = self.container {
			json["container"] = SpecimenContainer.asJSONArray(container)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let note = self.note {
			json["note"] = Annotation.asJSONArray(note)
		}
		if let parent = self.parent {
			json["parent"] = Reference.asJSONArray(parent)
		}
		if let receivedTime = self.receivedTime {
			json["receivedTime"] = receivedTime.asJSON()
		}
		if let request = self.request {
			json["request"] = Reference.asJSONArray(request)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let treatment = self.treatment {
			json["treatment"] = SpecimenTreatment.asJSONArray(treatment)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Collection details.
 *
 *  Details concerning the specimen collection.
 */
public class SpecimenCollection: BackboneElement {
	override public class var resourceName: String {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["bodySite"] {
				presentKeys.insert("bodySite")
				if let val = exist as? FHIRJSON {
					self.bodySite = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "bodySite", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["collectedDateTime"] {
				presentKeys.insert("collectedDateTime")
				if let val = exist as? String {
					self.collectedDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "collectedDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["collectedPeriod"] {
				presentKeys.insert("collectedPeriod")
				if let val = exist as? FHIRJSON {
					self.collectedPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "collectedPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["collector"] {
				presentKeys.insert("collector")
				if let val = exist as? FHIRJSON {
					self.collector = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "collector", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["method"] {
				presentKeys.insert("method")
				if let val = exist as? FHIRJSON {
					self.method = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "method", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.asJSON()
		}
		if let collectedDateTime = self.collectedDateTime {
			json["collectedDateTime"] = collectedDateTime.asJSON()
		}
		if let collectedPeriod = self.collectedPeriod {
			json["collectedPeriod"] = collectedPeriod.asJSON()
		}
		if let collector = self.collector {
			json["collector"] = collector.asJSON()
		}
		if let method = self.method {
			json["method"] = method.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		
		return json
	}
}


/**
 *  Direct container of specimen (tube/slide, etc.).
 *
 *  The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is not
 *  addressed here.
 */
public class SpecimenContainer: BackboneElement {
	override public class var resourceName: String {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["additiveCodeableConcept"] {
				presentKeys.insert("additiveCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.additiveCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "additiveCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["additiveReference"] {
				presentKeys.insert("additiveReference")
				if let val = exist as? FHIRJSON {
					self.additiveReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "additiveReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["capacity"] {
				presentKeys.insert("capacity")
				if let val = exist as? FHIRJSON {
					self.capacity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "capacity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["specimenQuantity"] {
				presentKeys.insert("specimenQuantity")
				if let val = exist as? FHIRJSON {
					self.specimenQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "specimenQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let additiveCodeableConcept = self.additiveCodeableConcept {
			json["additiveCodeableConcept"] = additiveCodeableConcept.asJSON()
		}
		if let additiveReference = self.additiveReference {
			json["additiveReference"] = additiveReference.asJSON()
		}
		if let capacity = self.capacity {
			json["capacity"] = capacity.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let specimenQuantity = self.specimenQuantity {
			json["specimenQuantity"] = specimenQuantity.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Treatment and processing step details.
 *
 *  Details concerning treatment and processing steps for the specimen.
 */
public class SpecimenTreatment: BackboneElement {
	override public class var resourceName: String {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["additive"] {
				presentKeys.insert("additive")
				if let val = exist as? [FHIRJSON] {
					self.additive = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "additive", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["procedure"] {
				presentKeys.insert("procedure")
				if let val = exist as? FHIRJSON {
					self.procedure = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "procedure", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["timeDateTime"] {
				presentKeys.insert("timeDateTime")
				if let val = exist as? String {
					self.timeDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "timeDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["timePeriod"] {
				presentKeys.insert("timePeriod")
				if let val = exist as? FHIRJSON {
					self.timePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let additive = self.additive {
			json["additive"] = Reference.asJSONArray(additive)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let procedure = self.procedure {
			json["procedure"] = procedure.asJSON()
		}
		if let timeDateTime = self.timeDateTime {
			json["timeDateTime"] = timeDateTime.asJSON()
		}
		if let timePeriod = self.timePeriod {
			json["timePeriod"] = timePeriod.asJSON()
		}
		
		return json
	}
}

