//
//  Reference+Resolving.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 10/14/14.
//  2014, SMART Health IT.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


/**
An extension to Reference. This allows reference resolving while keeping the superclass'es attributes in place.
*/
extension Reference {
	
	/**
	Determines if a reference has already been resolved, if it is a contained or a bundled resource which can be returned immediately.
	
	If this method returns nil, it's possible that the referenced resource must be fetched from a server. Use the `resolve(type:callback:)`
	method to achive that feat. That method will initially call this method and hence may return immediately if a reference has already been
	resolved (or is contained/bundled).
	
	- parameter type: The resource type that should be dereferenced
	- returns: An instance of the desired type, nil if it cannot immediately be resolved OR if it is of a different type
	*/
	public func resolved<T: Resource>(_ type: T.Type) -> T? {
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
		if let contained = _owningResource?.containedResource(refid) {
			if let contained = contained as? T {
				return contained
			}
			fhir_warn("reference “\(refid)” was contained as «\(contained)», which is not of the expected type “\(T.self)”")
			return nil
		}
		
		// not contained, are we in a bundle and the resource is bundled?
		let refIsRelative = !refid.contains("://") && !refid.hasPrefix("urn:")
		var bundle = _owningBundle
		while nil != bundle {
			if let entries = bundle?.entry {
				var refUrl = refid
				if refIsRelative {
					let base = bundle?._server?.baseURL.absoluteString ?? ""
					refUrl = base + refid
				}
				
				for entry in entries {
					if let entryUrl = entry.fullUrl?.absoluteString, entryUrl == refUrl {
						if let found = entry.resource as? T {
							return found
						}
						fhir_warn("reference “\(refid)” was bundled as «\(String(describing: entry.resource))», which is not of the expected type “\(T.self)”")
						return nil
					}
				}
			}
			bundle = bundle?._owningBundle
		}
		
		return nil
	}
	
	/**
	Resolves the reference, automatically determining how to resolve it from either contained, bundled or fetching from a server.
	
	Checks if a reference can be resolved immediately by calling `resolved(type:)` first, if not proceeds to request the referenced resource
	from the respective location. Contained resources are always found by `resolved(type:)`, so this method body is only executed if no
	contained resource with the given identifier was found.
	
	- parameter type:     The type of the resource to expect
	- parameter callback: The callback to call upon success or failure, with the resolved resource or nil
	*/
	public func resolve<T: Resource>(_ type: T.Type, callback: @escaping ((T?) -> Void)) {
		if let resolved = resolved(T.self) {
			callback(resolved)
		}
		else if let ref = reference {
			var server: FHIRServer? = nil
			var path = ref.string
			
			// absolute URL
			if let _ = ref.string.range(of: "://") {
				if let url = URL(string: ref.string) {
					let base = url.deletingLastPathComponent().deletingLastPathComponent()
					path = (url.absoluteString.replacingOccurrences(of: base.absoluteString, with: ""))
					server = FHIRMinimalServer(baseURL: base, auth: nil)		// TODO: what if it's protected?
				}
				else {
					fhir_warn("Unable to construct NSURL from absolute reference «\(ref)»")
				}
			}
			
			// relative URL
			else if let srv = _owningResource?._server {
				server = srv
			}
			
			if let server = server {
				T.readFrom(path, server: server) { resource, error in
					if let res = resource {
						self._owningResource?.didResolveReference(ref.string, resolved: res)
						callback(res as? T)		// `readFrom()` will always instantiate its own type, so this should never turn into nil
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
				fhir_warn("resource \(self) does not have a server instance nor does it contain «\(ref)», cannot resolve")
				callback(nil)
			}
		}
		else {
			callback(nil)
		}
	}
	
	/** Strips the leading hash "#" symbol, if it's there, in order to perform a contained resource lookup. */
	func processedReferenceIdentifier() -> String? {
		if let ref = reference?.string, "#" == ref[ref.startIndex] {
			return ref[ref.index(ref.startIndex, offsetBy: 1)..<ref.endIndex]
		}
		return reference?.string
	}
}

