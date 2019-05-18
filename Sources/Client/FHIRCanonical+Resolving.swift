//
//  FHIRCanonical+Resolving.swift
//  SwiftFHIR
//
//  Created by Dave Carlson, May 2019
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


/**
An extension to FHIRCanonical. This allows reference resolving while keeping the superclass'es attributes in place.

Systems resolving references to canonical URLs SHOULD first try to resolve the reference using the canonical reference (e.g. search on a known registry of terminology, conformance, or knowledge resources as appropriate), and then fall back to direct resolution using the URL as a literal reference if a local version of the canonical resource cannot be found. This approach is safe because the approaches must refer to the same artifact, though implementations will need to make appropriate arrangements regarding the version and/or currency of their local copy of the artifact.

This is a version specific reference to a value set. Note that this refers to the ValueSet.version not the ValueSet.meta.versionId. Searching for this on a FHIR server would look like this:

	GET fhir/ValueSet?url=http://hl7.org/fhir/ValueSet/my-valueset&version=0.8
*/
extension FHIRCanonical {
	
	/**
	Determines if a reference has already been resolved, if it is a contained or a bundled resource which can be returned immediately.
	
	If this method returns nil, it's possible that the referenced resource must be fetched from a server. Use the `resolve(type:callback:)`
	method to achive that feat. That method will initially call this method and hence may return immediately if a reference has already been
	resolved (or is contained/bundled).
	
	- parameter type: The resource type that should be dereferenced
	- returns: An instance of the desired type, nil if it cannot immediately be resolved OR if it is of a different type
	*/
	public func resolved<T: Resource>(_ type: T.Type) -> T? {
		if let refid = self.fragment {
			if let resolved = _owner?.resolvedReference(refid) {
				if let res = resolved as? T {
					return res
				}
				fhir_warn("reference “\(refid)” was dereferenced to «\(resolved)», which is not of the expected type “\(T.self)”")
			}
			
			// not yet resolved, let's look at contained resources
			if let contained = _owner?._owningResource?.containedResource(refid) {
				if let contained = contained as? T {
					return contained
				}
				fhir_warn("reference “\(refid)” was contained as «\(contained)», which is not of the expected type “\(T.self)”")
				return nil
			}
		}
		
		// not contained, are we in a bundle and the resource is bundled?
		if let refUrl = self.url?.absoluteString {
			var bundle = _owner?._owningBundle
			while nil != bundle {
				if let entries = bundle?.entry {
					for entry in entries {
						if let resource = entry.resource, resource.hasURI(self) {
							if let found = entry.resource as? T {
								return found
							}
							fhir_warn("reference “\(refUrl)” was bundled as «\(String(describing: entry.resource))», which is not of the expected type “\(T.self)”")
							return nil
						}
					}
				}
				bundle = bundle?._owningBundle
			}
		}
		
		// TODO attempt to retrieve resource from repository, database, or cache of Definition type resources.
		//		Define a repostory protocol with default implementation within the framework.
		
		return nil
	}
	
	/**
	Resolves the canonical URI by attempting to fetch from a server.
	
	Checks if a reference can be resolved immediately by calling `resolved(type:)` first, if not proceeds to request the referenced resource
	from the respective location.
	
	- parameter type:     The type of the resource to expect
	- parameter callback: The callback to call upon success or failure, with the resolved resource or nil
	*/
	public func resolve<T: Resource>(_ type: T.Type, callback: @escaping ((T?) -> Void)) {
		if let resolved = resolved(T.self) {
			callback(resolved)
		}
		else if let ref = self.url?.absoluteFHIRString {
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
			
			if let server = server {
				T.readFrom(path, server: server) { resource, error in
					if let res = resource, res.hasURI(self) {
						self._owner?._owningResource?.didResolveReference(ref.string, resolved: res)
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
	}
}


extension Resource {
	
	/**
	Check if Resource has 'url' and 'version' elements (i.e. a FHIR Definition type resource),
	return true if resource url and version match this canonical URI.
	*/
	func hasURI(_ canonical: FHIRCanonical) -> Bool {
		var match = false
		
		// No class reflection in Swift, serialize to JSON and look for key value.
		var json = FHIRJSON()
		var errors = [FHIRValidationError]()
		self.decorate(json: &json, withKey: "resource", errors: &errors)
		
		if let resourceJSON = json["resource"] as? FHIRJSON {
			if let url = resourceJSON["url"] as? String, url == canonical.url?.absoluteString {
				// if canonical URI specifies a version, then resource version must match
				if let version = canonical.version {
					match = version == resourceJSON["version"] as? String
				}
				else {
					match = true
				}
			}
		}
		
		return match
	}
	
}
