//
//  Specimen.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Specimen) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Sample for analysis.
 *
 *  A sample to be used for analysis.
 */
public class Specimen: DomainResource {
	override public class var resourceType: String {
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
	
	/// Specimen from which this specimen originated.
	public var parent: [Reference]?
	
	/// The time when specimen was received for processing.
	public var receivedTime: DateTime?
	
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
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["accessionIdentifier"] {
				presentKeys.insert("accessionIdentifier")
				if let val = exist as? FHIRJSON {
					self.accessionIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "accessionIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["collection"] {
				presentKeys.insert("collection")
				if let val = exist as? FHIRJSON {
					self.collection = SpecimenCollection(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "collection", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["container"] {
				presentKeys.insert("container")
				if let val = exist as? [FHIRJSON] {
					self.container = SpecimenContainer.instantiate(fromArray: val, owner: self) as? [SpecimenContainer]
				}
				else {
					errors.append(FHIRJSONError(key: "container", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["parent"] {
				presentKeys.insert("parent")
				if let val = exist as? [FHIRJSON] {
					self.parent = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "parent", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["receivedTime"] {
				presentKeys.insert("receivedTime")
				if let val = exist as? String {
					self.receivedTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "receivedTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "subject"))
			}
			if let exist = js["treatment"] {
				presentKeys.insert("treatment")
				if let val = exist as? [FHIRJSON] {
					self.treatment = SpecimenTreatment.instantiate(fromArray: val, owner: self) as? [SpecimenTreatment]
				}
				else {
					errors.append(FHIRJSONError(key: "treatment", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
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
			json["container"] = container.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let parent = self.parent {
			json["parent"] = parent.map() { $0.asJSON() }
		}
		if let receivedTime = self.receivedTime {
			json["receivedTime"] = receivedTime.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let treatment = self.treatment {
			json["treatment"] = treatment.map() { $0.asJSON() }
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
	override public class var resourceType: String {
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
	
	/// Collector comments.
	public var comment: [String]?
	
	/// Technique used to perform collection.
	public var method: CodeableConcept?
	
	/// The quantity of specimen collected.
	public var quantity: Quantity?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["bodySite"] {
				presentKeys.insert("bodySite")
				if let val = exist as? FHIRJSON {
					self.bodySite = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "bodySite", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["collectedDateTime"] {
				presentKeys.insert("collectedDateTime")
				if let val = exist as? String {
					self.collectedDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "collectedDateTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["collectedPeriod"] {
				presentKeys.insert("collectedPeriod")
				if let val = exist as? FHIRJSON {
					self.collectedPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "collectedPeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["collector"] {
				presentKeys.insert("collector")
				if let val = exist as? FHIRJSON {
					self.collector = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "collector", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["comment"] {
				presentKeys.insert("comment")
				if let val = exist as? [String] {
					self.comment = val
				}
				else {
					errors.append(FHIRJSONError(key: "comment", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["method"] {
				presentKeys.insert("method")
				if let val = exist as? FHIRJSON {
					self.method = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "method", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let comment = self.comment {
			var arr = [Any]()
			for val in comment {
				arr.append(val.asJSON())
			}
			json["comment"] = arr
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
	override public class var resourceType: String {
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
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["additiveCodeableConcept"] {
				presentKeys.insert("additiveCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.additiveCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "additiveCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["additiveReference"] {
				presentKeys.insert("additiveReference")
				if let val = exist as? FHIRJSON {
					self.additiveReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "additiveReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["capacity"] {
				presentKeys.insert("capacity")
				if let val = exist as? FHIRJSON {
					self.capacity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "capacity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["specimenQuantity"] {
				presentKeys.insert("specimenQuantity")
				if let val = exist as? FHIRJSON {
					self.specimenQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "specimenQuantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
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
			json["identifier"] = identifier.map() { $0.asJSON() }
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
	override public class var resourceType: String {
		get { return "SpecimenTreatment" }
	}
	
	/// Material used in the processing step.
	public var additive: [Reference]?
	
	/// Textual description of procedure.
	public var description_fhir: String?
	
	/// Indicates the treatment or processing step  applied to the specimen.
	public var procedure: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["additive"] {
				presentKeys.insert("additive")
				if let val = exist as? [FHIRJSON] {
					self.additive = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "additive", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["procedure"] {
				presentKeys.insert("procedure")
				if let val = exist as? FHIRJSON {
					self.procedure = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "procedure", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let additive = self.additive {
			json["additive"] = additive.map() { $0.asJSON() }
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let procedure = self.procedure {
			json["procedure"] = procedure.asJSON()
		}
		
		return json
	}
}

