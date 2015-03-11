//
//  Specimen.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/Specimen) on 2015-03-11.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Sample for analysis.
 */
public class Specimen: DomainResource
{
	override public class var resourceName: String {
		get { return "Specimen" }
	}
	
	/// Identifier assigned by the lab
	public var accessionIdentifier: Identifier?
	
	/// Collection details
	public var collection: SpecimenCollection?
	
	/// Direct container of specimen (tube/slide, etc)
	public var container: [SpecimenContainer]?
	
	/// External Identifier
	public var identifier: [Identifier]?
	
	/// Parent specimen
	public var parent: [Reference]?
	
	/// The time when specimen was received for processing
	public var receivedTime: DateTime?
	
	/// Where the specimen came from. This may be from the patient(s) or from the environment or a device
	public var subject: Reference?
	
	/// Treatment and processing step details
	public var treatment: [SpecimenTreatment]?
	
	/// Kind of material that forms the specimen
	public var type: CodeableConcept?
	
	public convenience init(subject: Reference?) {
		self.init(json: nil)
		if nil != subject {
			self.subject = subject
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["accessionIdentifier"] as? JSONDictionary {
				self.accessionIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["collection"] as? JSONDictionary {
				self.collection = SpecimenCollection(json: val, owner: self)
			}
			if let val = js["container"] as? [JSONDictionary] {
				self.container = SpecimenContainer.from(val, owner: self) as? [SpecimenContainer]
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["parent"] as? [JSONDictionary] {
				self.parent = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["receivedTime"] as? String {
				self.receivedTime = DateTime(string: val)
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["treatment"] as? [JSONDictionary] {
				self.treatment = SpecimenTreatment.from(val, owner: self) as? [SpecimenTreatment]
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
		if let parent = self.parent {
			json["parent"] = Reference.asJSONArray(parent)
		}
		if let receivedTime = self.receivedTime {
			json["receivedTime"] = receivedTime.asJSON()
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
public class SpecimenCollection: FHIRElement
{
	override public class var resourceName: String {
		get { return "SpecimenCollection" }
	}
	
	/// Anatomical collection site
	public var bodySiteCodeableConcept: CodeableConcept?
	
	/// Anatomical collection site
	public var bodySiteReference: Reference?
	
	/// Collection time
	public var collectedDateTime: DateTime?
	
	/// Collection time
	public var collectedPeriod: Period?
	
	/// Who collected the specimen
	public var collector: Reference?
	
	/// Collector comments
	public var comment: [String]?
	
	/// Technique used to perform collection
	public var method: CodeableConcept?
	
	/// The quantity of specimen collected
	public var quantity: Quantity?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["bodySiteCodeableConcept"] as? JSONDictionary {
				self.bodySiteCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["bodySiteReference"] as? JSONDictionary {
				self.bodySiteReference = Reference(json: val, owner: self)
			}
			if let val = js["collectedDateTime"] as? String {
				self.collectedDateTime = DateTime(string: val)
			}
			if let val = js["collectedPeriod"] as? JSONDictionary {
				self.collectedPeriod = Period(json: val, owner: self)
			}
			if let val = js["collector"] as? JSONDictionary {
				self.collector = Reference(json: val, owner: self)
			}
			if let val = js["comment"] as? [String] {
				self.comment = val
			}
			if let val = js["method"] as? JSONDictionary {
				self.method = CodeableConcept(json: val, owner: self)
			}
			if let val = js["quantity"] as? JSONDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let bodySiteCodeableConcept = self.bodySiteCodeableConcept {
			json["bodySiteCodeableConcept"] = bodySiteCodeableConcept.asJSON()
		}
		if let bodySiteReference = self.bodySiteReference {
			json["bodySiteReference"] = bodySiteReference.asJSON()
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
			var arr = [AnyObject]()
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
 *  Direct container of specimen (tube/slide, etc).
 *
 *  The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is not
 *  addressed here.
 */
public class SpecimenContainer: FHIRElement
{
	override public class var resourceName: String {
		get { return "SpecimenContainer" }
	}
	
	/// Additive associated with container
	public var additiveCodeableConcept: CodeableConcept?
	
	/// Additive associated with container
	public var additiveReference: Reference?
	
	/// Container volume or size
	public var capacity: Quantity?
	
	/// Textual description of the container
	public var description_fhir: String?
	
	/// Id for the container
	public var identifier: [Identifier]?
	
	/// Quantity of specimen within container
	public var specimenQuantity: Quantity?
	
	/// Kind of container directly associated with specimen
	public var type: CodeableConcept?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["additiveCodeableConcept"] as? JSONDictionary {
				self.additiveCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["additiveReference"] as? JSONDictionary {
				self.additiveReference = Reference(json: val, owner: self)
			}
			if let val = js["capacity"] as? JSONDictionary {
				self.capacity = Quantity(json: val, owner: self)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["specimenQuantity"] as? JSONDictionary {
				self.specimenQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
public class SpecimenTreatment: FHIRElement
{
	override public class var resourceName: String {
		get { return "SpecimenTreatment" }
	}
	
	/// Material used in the processing step
	public var additive: [Reference]?
	
	/// Textual description of procedure
	public var description_fhir: String?
	
	/// Indicates the treatment or processing step  applied to the specimen
	public var procedure: CodeableConcept?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["additive"] as? [JSONDictionary] {
				self.additive = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["procedure"] as? JSONDictionary {
				self.procedure = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
		
		return json
	}
}

