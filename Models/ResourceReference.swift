//
//  ResourceReference.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A reference from one resource to another.
 */
class ResourceReference: FHIRElement
{
	override var resourceName: String {
		get { return "ResourceReference" }
	}

	/*! Relative, internal or absolute URL reference */
	var reference: String?

	/*! Text alternative for the resource */
	var display: String?

}
