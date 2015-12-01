//
//  FHIRContainedResource.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 7/18/14.
//  2014, SMART Health IT.
//


/**
 *  Contained resources are stored to instances of this class until they are resolved.
 *
 *  The id of contained resources will be referenced from their parents as URL fragment, meaning "med1" will be referenced as "#med1".
 *
 *  http://hl7.org/fhir/references.html#contained
 */
public final class FHIRContainedResource {
	
	/// The id of the resource.
	public var id: String?
	
	/// The complete JSON dictionary.
	var json: FHIRJSON?
	
	/// Contained resources always have an owner, the resource they are contained in.
	let owner: FHIRElement
	
	public init(id: String?, json: FHIRJSON?, owner: FHIRElement) {
		self.id = id
		self.json = json
		self.owner = owner
	}
	
	public convenience init(json: FHIRJSON, owner: FHIRElement) {
		let id = json["id"] as? String
		self.init(id: id, json: json, owner: owner)
	}
	
	public func resolvedInstanceWithReferenceId<T: Resource>(refid: String, ofType type: T.Type) -> T? {
		if let instance = T.instantiateFrom(json, owner: owner) as? T {
			owner.didResolveReference(refid, resolved: instance)
			return instance
		}
		return nil
	}
}

