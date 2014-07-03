//
//  Specimen.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
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
	override var resourceName: String {
		get { return "Specimen" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! External Identifier */
	var identifier: Identifier[]?

	/*! Kind of material that forms the specimen */
	var type: CodeableConcept?

	/*! Parent of specimen */
	var source: SpecimenSource[]?

	/*! Where the specimen came from. This may be the patient(s) or from the environment or  a device */
	var subject: ResourceReference

	/*! Identifier assigned by the lab */
	var accessionIdentifier: Identifier?

	/*! The time when specimen was received for processing */
	var receivedTime: NSDate?

	/*! Collection details */
	var collection: SpecimenCollection

	/*! Treatment and processing step details */
	var treatment: SpecimenTreatment[]?

	/*! Direct container of specimen (tube/slide, etc) */
	var container: SpecimenContainer[]?

	init(subject: ResourceReference, collection: SpecimenCollection) {
		self.subject = subject
		self.collection = collection
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
	var relationship: String

	/*! The subject of the relationship */
	var target: ResourceReference[]?

	init(relationship: String) {
		self.relationship = relationship
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
	var comment: String[]?

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
	var additive: ResourceReference[]?

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
	var identifier: Identifier[]?

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

}
