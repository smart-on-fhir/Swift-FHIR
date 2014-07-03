//
//  DocumentManifest.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A manifest that defines a set of documents.
 *
 *  Scope and Usage A document manifest gathers a set of Document Reference resources into a single package that
 *  may be the subject of workflow such as access control, auditing, and targeted delivery.
 *  
 *  Typically, Document Manifest Resources are used in document indexing systems, such as IHE XDS (see the XDS
 *  specific profile).
 */
class DocumentManifest: FHIRResource
{
	override var resourceName: String {
		get { return "DocumentManifest" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Unique Identifier for the set of documents */
	var masterIdentifier: Identifier

	/*! Other identifiers for the manifest */
	var identifier: Identifier[]?

	/*! The subject of the set of documents */
	var subject: ResourceReference[]

	/*! Intended to get notified about this set of documents */
	var recipient: ResourceReference[]?

	/*! What kind of document set this is */
	var type: CodeableConcept?

	/*! Who and/or what authored the document */
	var author: ResourceReference[]?

	/*! When this document manifest created */
	var created: NSDate?

	/*! The source system/application/software */
	var source: NSURL?

	/*! current | superceded | entered in error */
	var status: String

	/*! If this document manifest replaces another */
	var supercedes: ResourceReference?

	/*! Human-readable description (title) */
	var description: String?

	/*! Sensitivity of set of documents */
	var confidentiality: CodeableConcept?

	/*! Contents of this set of documents */
	var content: ResourceReference[]

	init(masterIdentifier: Identifier, subject: ResourceReference[], status: String, content: ResourceReference[]) {
		self.masterIdentifier = masterIdentifier
		self.subject = subject
		self.status = status
		self.content = content
	}
}
