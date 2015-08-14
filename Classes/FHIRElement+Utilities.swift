//
//  FHIRElement+Utilities.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 8/14/15.
//  Copyright (c) 2015 SMART Health IT. All rights reserved.
//


public extension FHIRElement
{
	/** Returns an array of `Extension` elements for the given extension URL, if any. */
	public final func extensionsFor(uri: String) -> [Extension]? {
		return extension_fhir?.filter() { return $0.url?.absoluteString == uri }
	}
}
