//
//  FHIRElement+Utilities.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 8/14/15.
//  2015, SMART Platforms.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


public extension Element {
	
	/** Returns an array of `Extension` elements for the given extension URL, if any. */
	public final func extensionsFor(uri: String) -> [Extension]? {
		return extension_fhir?.filter() { return $0.url?.absoluteString == uri }
	}
}


public extension DomainResource {
	
	/** Returns an array of `Extension` elements for the given extension URL, if any. */
	public final func extensionsFor(uri: String) -> [Extension]? {
		return extension_fhir?.filter() { return $0.url?.absoluteString == uri }
	}
	
	/** Returns an array of `Extension` elements for the given modifier extension URL, if any. */
	public final func modifierExtensionsFor(uri: String) -> [Extension]? {
		return modifierExtension?.filter() { return $0.url?.absoluteString == uri }
	}
}

