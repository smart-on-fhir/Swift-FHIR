//
//  Composition.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A set of resources composed into a single coherent clinical statement with clinical attestation.
 *
 *  Scope and Usage A Composition is also the basic structure from which FHIR Documents - immutable bundles with
 *  attested narrative - are built. A single logical composition may be associated with a series of derived
 *  documents, each of which is a frozen copy of the composition.
 *  
 *  Note: EN 13606 uses the term "Composition" to refer to a single commit to an EHR system, and offers some
 *  common examples: a consultation note, a progress note, a report or a letter, an investigation report, a
 *  prescription form and a set of bedside nursing observations. These logical examples are all valid uses of a
 *  Composition resource, but it is not required that all the resources are updated in a single commit.
 */
class Composition: FHIRResource
{
	override var resourceName: String {
		get { return "Composition" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Logical identifier of composition (version-independent) */
	var identifier: Identifier?

	/*! Composition editing time */
	var date: NSDate

	/*! Kind of composition (LOINC if possible) */
	var type: CodeableConcept

	/*! Categorization of Composition */
	var classification: CodeableConcept?

	/*! Human Readable name/title */
	var title: String?

	/*! preliminary | final | appended | amended | entered in error */
	var status: String

	/*! As defined by affinity domain */
	var confidentiality: Coding

	/*! Who and/or what the composition is about */
	var subject: ResourceReference

	/*! Who and/or what authored the composition */
	var author: ResourceReference[]

	/*! Attests to accuracy of composition */
	var attester: CompositionAttester[]?

	/*! Org which maintains the composition */
	var custodian: ResourceReference?

	/*! The clinical event/act/item being documented */
	var event: CompositionEvent?

	/*! Context of the conposition */
	var encounter: ResourceReference?

	/*! Composition is broken into sections */
	var section: CompositionSection[]?

	init(date: NSDate, type: CodeableConcept, status: String, confidentiality: Coding, subject: ResourceReference, author: ResourceReference[]) {
		self.date = date
		self.type = type
		self.status = status
		self.confidentiality = confidentiality
		self.subject = subject
		self.author = author
	}
}


/*!
 *  Attests to accuracy of composition.
 *
 *  A participant who has attested to the accuracy of the composition/document.
 */
class CompositionAttester: FHIRElement
{
	/*! personal | professional | legal | official */
	var mode: String[]

	/*! When composition attested */
	var time: NSDate?

	/*! Who attested the composition */
	var party: ResourceReference?

	init(mode: String[]) {
		self.mode = mode
	}
}


/*!
 *  The clinical event/act/item being documented.
 *
 *  The main event/act/item, such as a colonoscopy or an appendectomy, being documented.
 */
class CompositionEvent: FHIRElement
{
	/*! Code(s) that apply to the event being documented */
	var code: CodeableConcept[]?

	/*! The period covered by the documentation */
	var period: Period?

	/*! Full details for the event(s) the composition consents */
	var detail: ResourceReference[]?

}


/*!
 *  Composition is broken into sections.
 *
 *  The root of the sections that make up the composition.
 */
class CompositionSection: FHIRElement
{
	/*! Label for section */
	var title: String?

	/*! Classification of section (recommended) */
	var code: CodeableConcept?

	/*! If section different to composition */
	var subject: ResourceReference?

	/*! The actual data for the section */
	var content: ResourceReference?

	/*! Nested Section */
	var section: CompositionSectionSection[]?

}


/*!
 *  Nested Section.
 *
 *  A nested sub-section within this section.
 */
class CompositionSectionSection: FHIRElement
{
}
