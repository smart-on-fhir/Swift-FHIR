//
//  Reference+Resolving.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 10/14/14.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  An extension to Reference. This allows reference resolving while keeping the superclass'es attributes in place.
 */
extension Reference
{
	/**
		Determines if a reference has already been resolved or if it is a contained resource which can be returned
		immediately.
	
		- parameter type: The resource type that should be dereferenced
		- returns: An instance of the desired type, or nil if it hasn't been resolved yet OR is of a different type
	 */
	public func resolved<T: Resource>(type: T.Type) -> T? {
		let refid = processedReferenceIdentifier()
		if nil == refid {
			print("Reference.resolved(): This reference does not have a reference-id, cannot resolve")
			return nil
		}
		
		if let resolved = _owner?.resolvedReference(refid!) {
			if let res = resolved as? T {
				return res
			}
			print("Reference.resolved(): Reference \(refid) was dereferenced to \(resolved), which is not of the expected type \(T.self)")
		}
		
		// not yet resolved, let's look at contained resources
		if let contained = _owner?.containedReference(refid!) {
			let t = T.self									// getting crashes when using T(...) directly as of 6.1 GM 2
			let instance = t.init(json: contained.json)
			contained.owner.didResolveReference(refid!, resolved: instance)
			return instance
		}
		
		return nil
	}
	
	/**
		Checks if a reference can be resolved immediately by calling `resolved()` first, if not proceeds to request the
		referenced resource from the respective location.
	
		- parameter type: The type of the resource to expect
		- parameter callback: The callback to call upon success or failure, with the resolved resource or nil
	 */
	public func resolve<T: Resource>(type: T.Type, callback: (T? -> Void)) {
		if let resolved = resolved(T) {
			callback(resolved)
		}
		else if let ref = reference {
			if let server = owningResource()?._server {
				
				// TODO: absolute URL
				if let _ = ref.rangeOfString("://") {
					print("TODO: Resolve reference with absolute URL \(ref)")
					callback(nil)
				}
					
				// relative URL
				else {
					T.readFrom(ref, server: server) { resource, error in
						if let res = resource {
							self._owner?.didResolveReference(ref, resolved: res)
							callback(res as? T)		// `readFrom()` will always instantiate its own type, so this should never fail
						}
						else {
							if let err = error {
								print("Reference.resolve(): Error resolving reference \(ref): \(err)")
							}
							callback(nil)
						}
					}
				}
			}
			else {
				print("Reference.resolve(): The reference \(self) does not have a server instance, cannot resolve")
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
			return reference![advance(reference!.startIndex, 1)..<reference!.endIndex]
		}
		return reference
	}
}

