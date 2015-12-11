//
//  Reference+Resolving.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 10/14/14.
//  2014, SMART Platforms.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


extension FHIRAbstractBase {
	
}


/**
 *  An extension to Reference. This allows reference resolving while keeping the superclass'es attributes in place.
 */
extension Reference {
	
	/**
	Determines if a reference has already been resolved or if it is a contained resource which can be returned
	immediately.
	
	- parameter type: The resource type that should be dereferenced
	- returns: An instance of the desired type, or nil if it hasn't been resolved yet OR is of a different type
	*/
	public func resolved<T: Resource>(type: T.Type) -> T? {
		guard let refid = processedReferenceIdentifier() else {
			fhir_warn("reference \(self) does not have a reference-id, cannot resolve")
			return nil
		}
		
		if let resolved = resolvedReference(refid) {
			if let res = resolved as? T {
				return res
			}
			fhir_warn("reference “\(refid)” was dereferenced to «\(resolved)», which is not of the expected type “\(T.self)”")
		}
		
		// not yet resolved, let's look at contained resources
//		if let contained = containedReference(refid) {
//			return contained.resolvedInstanceWithReferenceId(refid, ofType: type)
//		}
		return nil
	}
	
	/**
	Checks if a reference can be resolved immediately by calling `resolved()` first, if not proceeds to request the referenced resource from
	the respective location.
	
	- parameter type: The type of the resource to expect
	- parameter callback: The callback to call upon success or failure, with the resolved resource or nil
	*/
	public func resolve<T: Resource>(type: T.Type, callback: (T? -> Void)) {
		if let resolved = resolved(T) {
			callback(resolved)
		}
		else if let ref = reference {
			var server: FHIRServer? = nil
			var path = ref
			
			// absolute URL
			if let _ = ref.rangeOfString("://") {
				path = (ref as NSString).lastPathComponent
				let base = NSURL(string: (ref as NSString).stringByDeletingLastPathComponent)!
				server = FHIRBaseServer(baseURL: base, auth: nil)		// TODO: what if it's protected?
			}
			
			// relative URL
			else if let srv = owningResource()?._server {
				server = srv
			}
			
			if let server = server {
				T.readFrom(path, server: server) { resource, error in
					if let res = resource {
//						self.owningResource()?.didResolveReference(ref, resolved: res)
						callback(res as? T)		// `readFrom()` will always instantiate its own type, so this should never fail
					}
					else {
						if let err = error {
							fhir_warn("error resolving reference «\(ref)»: \(err)")
						}
						callback(nil)
					}
				}
			}
			else {
				fhir_warn("reference \(self) does not have a server instance, cannot resolve «\(ref)»")
				callback(nil)
			}
		}
		else {
			callback(nil)
		}
	}
	
	/** Strips the leading hash "#" symbol, if it's there, in order to perform a contained resource lookup. */
	func processedReferenceIdentifier() -> String? {
		if nil != reference && "#" == reference![reference!.startIndex] {
			return reference![reference!.startIndex.advancedBy(1)..<reference!.endIndex]
		}
		return reference
	}
}

