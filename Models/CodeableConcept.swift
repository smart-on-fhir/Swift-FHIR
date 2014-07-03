//
//  CodeableConcept.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Concept - reference to a terminology or just  text.
 */
class CodeableConcept: FHIRElement
{
	override var resourceName: String {
		get { return "CodeableConcept" }
	}

	/*! Code defined by a terminology system */
	var coding: Coding[]?

	/*! Plain text representation of the concept */
	var text: String?

}
