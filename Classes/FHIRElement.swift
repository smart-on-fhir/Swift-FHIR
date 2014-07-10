//
//  FHIRElement.swift
//  SMART-on-FHIR
//
//  Created by Pascal Pfiffner on 7/2/14.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Abstract superclass for all FHIR data elements.
 */
class FHIRElement
{
	class var resourceName: String {
		get { return "FHIRElement" }
	}
	
	/*! This should be `extension` but it is a keyword in Swift; renamed to `fhirExtension`. */
	var fhirExtension: [Extension]?
	
	/*! Optional modifier extensions. */
	var modifierExtension: [Extension]?
	
	
	// MARK: JSON Capabilities
	
	@required init(json: NSDictionary?) {
	}
	
	@final class func from(array: Array<NSDictionary>) -> [FHIRElement] {
		var arr: [FHIRElement] = []
		for arrJSON in array {
			arr += self(json: arrJSON)
		}
		return arr
	}
}
