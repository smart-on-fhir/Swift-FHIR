//
//  Specimen.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-17.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
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
class Specimen: FHIRResource
{
	override class var resourceName: String {
		get { return "Specimen" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! External Identifier */
	var identifier: [Identifier]?
	
	/*! Kind of material that forms the specimen */
	var type: CodeableConcept?
	
	/*! Parent of specimen */
	var source: [SpecimenSource]?
	
	/*! Where the specimen came from. This may be the patient(s) or from the environment or  a device */
	var subject: ResourceReference?
	
	/*! Identifier assigned by the lab */
	var accessionIdentifier: Identifier?
	
	/*! The time when specimen was received for processing */
	var receivedTime: NSDate?
	
	/*! Collection details */
	var collection: SpecimenCollection?
	
	/*! Treatment and processing step details */
	var treatment: [SpecimenTreatment]?
	
	/*! Direct container of specimen (tube/slide, etc) */
	var container: [SpecimenContainer]?
	
	convenience init(subject: ResourceReference?, collection: SpecimenCollection?) {
		self.init(json: nil)
		if subject {
			self.subject = subject
		}
		if collection {
			self.collection = collection
		}
	}	
	
	init(json: NSDictionary?) {
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
		super.init(json: json)
	}
}


/*!
 *  Parent of specimen.
 *
 *  Parent specimen from which the focal specimen was a component.
 */
class SpecimenSource: FHIRElement
{	
	/*! parent | child */
	var relationship: String?
	
	/*! The subject of the relationship */
	var target: [ResourceReference]?
	
	convenience init(relationship: String?) {
		self.init(json: nil)
		if relationship {
			self.relationship = relationship
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["relationship"] as? String {
				self.relationship = val
			}
			if let val = js["target"] as? [NSDictionary] {
				self.target = ResourceReference.from(val) as? [ResourceReference]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Collection details.
 *
 *  Details concerning the specimen collection.
 */
class SpecimenCollection: FHIRElement
{	
	/*! Who collected the specimen */
	var collector: ResourceReference?
	
	/*! Collector comments */
	var comment: [String]?
	
	/*! Collection time */
	var collectedDateTime: NSDate?
	
	/*! Collection time */
	var collectedPeriod: Period?
	
	/*! The quantity of specimen collected */
	var quantity: Quantity?
	
	/*! Technique used to perform collection */
	var method: CodeableConcept?
	
	/*! Anatomical collection site */
	var sourceSite: CodeableConcept?
	
	
	init(json: NSDictionary?) {
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
		super.init(json: json)
	}
}


/*!
 *  Treatment and processing step details.
 *
 *  Details concerning treatment and processing steps for the specimen.
 */
class SpecimenTreatment: FHIRElement
{	
	/*! Textual description of procedure */
	var description: String?
	
	/*! Indicates the treatment or processing step  applied to the specimen */
	var procedure: CodeableConcept?
	
	/*! Material used in the processing step */
	var additive: [ResourceReference]?
	
	
	init(json: NSDictionary?) {
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
		super.init(json: json)
	}
}


/*!
 *  Direct container of specimen (tube/slide, etc).
 *
 *  The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is
 *  not addressed here.
 */
class SpecimenContainer: FHIRElement
{	
	/*! Id for the container */
	var identifier: [Identifier]?
	
	/*! Textual description of the container */
	var description: String?
	
	/*! Kind of container directly associated with specimen */
	var type: CodeableConcept?
	
	/*! Container volume or size */
	var capacity: Quantity?
	
	/*! Quantity of specimen within container */
	var specimenQuantity: Quantity?
	
	/*! Additive associated with container */
	var additive: ResourceReference?
	
	
	init(json: NSDictionary?) {
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
		super.init(json: json)
	}
}
