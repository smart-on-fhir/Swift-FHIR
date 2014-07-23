//
//  Specimen.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-23.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Sample for analysis.
 *
 *  Scope and Usage Any material sample:
 *  
 *  * taken from a biological entity, living or dead
 *  * taken from a physical object or the environment
 *  Biospecimen can contain one or more components including but not limited to cellular molecules, cells,
 *  tissues, organs, body fluids, embryos, and body excretory products (source: NCIt, modified).
 *  
 *  The specimen resource covers substances used for diagnostic and environmental testing. The focus of the
 *  specimen resource is the process for gathering, maintaining and processing the specimen as well as where the
 *  specimen originated. This is distinct from the use of Substance which is only used when these other aspects
 *  are not relevant.
 */
public class Specimen: FHIRResource
{
	override public class var resourceName: String {
		get { return "Specimen" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** External Identifier */
	public var identifier: [Identifier]?
	
	/** Kind of material that forms the specimen */
	public var type: CodeableConcept?
	
	/** Parent of specimen */
	public var source: [SpecimenSource]?
	
	/** Where the specimen came from. This may be the patient(s) or from the environment or  a device */
	public var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/** Identifier assigned by the lab */
	public var accessionIdentifier: Identifier?
	
	/** The time when specimen was received for processing */
	public var receivedTime: NSDate?
	
	/** Collection details */
	public var collection: SpecimenCollection?
	
	/** Treatment and processing step details */
	public var treatment: [SpecimenTreatment]?
	
	/** Direct container of specimen (tube/slide, etc) */
	public var container: [SpecimenContainer]?
	
	public convenience init(subject: ResourceReference?, collection: SpecimenCollection?) {
		self.init(json: nil)
		if subject {
			self.subject = subject
		}
		if collection {
			self.collection = collection
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["source"] as? [NSDictionary] {
				self.source = SpecimenSource.from(val) as? [SpecimenSource]
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["accessionIdentifier"] as? NSDictionary {
				self.accessionIdentifier = Identifier(json: val)
			}
			if let val = js["receivedTime"] as? String {
				self.receivedTime = NSDate(json: val)
			}
			if let val = js["collection"] as? NSDictionary {
				self.collection = SpecimenCollection(json: val)
			}
			if let val = js["treatment"] as? [NSDictionary] {
				self.treatment = SpecimenTreatment.from(val) as? [SpecimenTreatment]
			}
			if let val = js["container"] as? [NSDictionary] {
				self.container = SpecimenContainer.from(val) as? [SpecimenContainer]
			}
		}
	}
}


/**
 *  Parent of specimen.
 *
 *  Parent specimen from which the focal specimen was a component.
 */
public class SpecimenSource: FHIRElement
{	
	/** parent | child */
	public var relationship: String?
	
	/** The subject of the relationship */
	public var target: [FHIRElement]? {
		get { return resolveReferences("target") }
		set {
			if newValue {
				didSetReferences(newValue!, name: "target")
			}
		}
	}
	
	public convenience init(relationship: String?) {
		self.init(json: nil)
		if relationship {
			self.relationship = relationship
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["relationship"] as? String {
				self.relationship = val
			}
			if let val = js["target"] as? [NSDictionary] {
				self.target = ResourceReference.from(val) as? [ResourceReference]
			}
		}
	}
}


/**
 *  Collection details.
 *
 *  Details concerning the specimen collection.
 */
public class SpecimenCollection: FHIRElement
{	
	/** Who collected the specimen */
	public var collector: FHIRElement? {
		get { return resolveReference("collector") }
		set {
			if newValue {
				didSetReference(newValue!, name: "collector")
			}
		}
	}
	
	/** Collector comments */
	public var comment: [String]?
	
	/** Collection time */
	public var collectedDateTime: NSDate?
	
	/** Collection time */
	public var collectedPeriod: Period?
	
	/** The quantity of specimen collected */
	public var quantity: Quantity?
	
	/** Technique used to perform collection */
	public var method: CodeableConcept?
	
	/** Anatomical collection site */
	public var sourceSite: CodeableConcept?
	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["collector"] as? NSDictionary {
				self.collector = ResourceReference(json: val)
			}
			if let val = js["comment"] as? [String] {
				self.comment = val
			}
			if let val = js["collectedDateTime"] as? String {
				self.collectedDateTime = NSDate(json: val)
			}
			if let val = js["collectedPeriod"] as? NSDictionary {
				self.collectedPeriod = Period(json: val)
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val)
			}
			if let val = js["method"] as? NSDictionary {
				self.method = CodeableConcept(json: val)
			}
			if let val = js["sourceSite"] as? NSDictionary {
				self.sourceSite = CodeableConcept(json: val)
			}
		}
	}
}


/**
 *  Treatment and processing step details.
 *
 *  Details concerning treatment and processing steps for the specimen.
 */
public class SpecimenTreatment: FHIRElement
{	
	/** Textual description of procedure */
	public var description: String?
	
	/** Indicates the treatment or processing step  applied to the specimen */
	public var procedure: CodeableConcept?
	
	/** Material used in the processing step */
	public var additive: [FHIRElement]? {
		get { return resolveReferences("additive") }
		set {
			if newValue {
				didSetReferences(newValue!, name: "additive")
			}
		}
	}
	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["procedure"] as? NSDictionary {
				self.procedure = CodeableConcept(json: val)
			}
			if let val = js["additive"] as? [NSDictionary] {
				self.additive = ResourceReference.from(val) as? [ResourceReference]
			}
		}
	}
}


/**
 *  Direct container of specimen (tube/slide, etc).
 *
 *  The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is
 *  not addressed here.
 */
public class SpecimenContainer: FHIRElement
{	
	/** Id for the container */
	public var identifier: [Identifier]?
	
	/** Textual description of the container */
	public var description: String?
	
	/** Kind of container directly associated with specimen */
	public var type: CodeableConcept?
	
	/** Container volume or size */
	public var capacity: Quantity?
	
	/** Quantity of specimen within container */
	public var specimenQuantity: Quantity?
	
	/** Additive associated with container */
	public var additive: FHIRElement? {
		get { return resolveReference("additive") }
		set {
			if newValue {
				didSetReference(newValue!, name: "additive")
			}
		}
	}
	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["capacity"] as? NSDictionary {
				self.capacity = Quantity(json: val)
			}
			if let val = js["specimenQuantity"] as? NSDictionary {
				self.specimenQuantity = Quantity(json: val)
			}
			if let val = js["additive"] as? NSDictionary {
				self.additive = ResourceReference(json: val)
			}
		}
	}
}

