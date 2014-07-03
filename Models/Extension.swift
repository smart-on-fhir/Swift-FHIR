//
//  Extension.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Optional Extensions Element - found in all resources..
 */
class Extension: FHIRElement
{
	override var resourceName: String {
		get { return "Extension" }
	}

	/*! identifies the meaning of the extension */
	var url: NSURL

	/*! Value of extension */
	var value: FHIRElement?

	init(url: NSURL) {
		self.url = url
	}
}
