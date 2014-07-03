//
//  Identifier.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  An identifier intended for computation.
 */
class Identifier: FHIRElement
{
	override var resourceName: String {
		get { return "Identifier" }
	}

	/*! usual | official | temp | secondary (If known) */
	var use: String?

	/*! Description of identifier */
	var label: String?

	/*! The namespace for the identifier */
	var system: NSURL?

	/*! The value that is unique */
	var value: String?

	/*! Time period when id is/was valid for use */
	var period: Period?

	/*! Organization that issued id (may be just text) */
	var assigner: ResourceReference?

}
