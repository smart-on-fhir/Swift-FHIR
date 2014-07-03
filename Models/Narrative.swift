//
//  Narrative.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A human-readable formatted text, including images.
 */
class Narrative: FHIRElement
{
	override var resourceName: String {
		get { return "Narrative" }
	}

	/*! generated | extensions | additional */
	var status: String

	/*! Limited xhtml content */
	var div: String

	init(status: String, div: String) {
		self.status = status
		self.div = div
	}
}
