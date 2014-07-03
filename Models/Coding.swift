//
//  Coding.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A reference to a code defined by a terminology system.
 */
class Coding: FHIRElement
{
	override var resourceName: String {
		get { return "Coding" }
	}

	/*! Identity of the terminology system */
	var system: NSURL?

	/*! Version of the system - if relevant */
	var version: String?

	/*! Symbol in syntax defined by the system */
	var code: String?

	/*! Representation defined by the system */
	var display: String?

	/*! If this code was chosen directly by the user */
	var primary: Bool?

	/*! Set this coding was chosen from */
	var valueSet: ResourceReference?

}
