//
//  DomainResource+Containment.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 27/01/16.
//  2016, SMART Health IT.
//

#if !NO_MODEL_IMPORT
import Models
#endif


extension DomainResource {
	
	/**
	Returns the contained resource that has the given id, if it exists.
	
	- parameter refid: The reference id the resource carries
	- returns: The resource, if contained
	*/
	func containedResource(_ refid: String) -> Resource? {
		if let contained = contained {
			for cont in contained {
				if let id = cont.id, id == refid {
					return cont
				}
			}
		}
		return _owningResource?.containedResource(refid)
	}
	
	/**
	Contains the given resource and returns the Reference element on success.
	
	Use the return value to assign it to the appropriate property of the containing resource:
	
	    let order = Order(json: ["id": ...])
	    let patient = Patient(json: ["id": "subject", ...])
	    order.subject = try! order.containResource(patient)
	
	If a resource with the same `id` is already contained, it will be replaced.
	
	- parameter resource: The instance to contain in the receiver
	- parameter display:  The string that will become the reference's `display`
	- returns:            A `Reference` instance pointing to the contained resource (as "#id")
	*/
	open func contain(resource: Resource, withDisplay display: String? = nil) throws -> Reference {
		guard resource !== self else {
			throw FHIRError.resourceCannotContainItself
		}
		guard let refid = resource.id, !refid.isEmpty else {
			throw FHIRError.resourceWithoutId
		}
		
		// contain
		var cont = contained ?? [Resource]()
		if let existing = containedResource(refid.string) {
			fhir_logIfDebug("Containing resource \(resource) will replace resource \(existing) already contained in \(self)")
			cont = cont.filter() { $0 !== existing }
		}
		cont.append(resource)
		contained = cont
		
		// mark as resolved
		didResolveReference(refid.string, resolved: resource)
		
		// return reference
		let ref = Reference(owner: self)
		ref.reference = FHIRString("#\(refid)")
		if let display = display {
			ref.display = FHIRString(display)
		}
		return ref
	}
	
	/**
	Adds a relative or absolute reference to the receiver, depending on whether the resources live on the same server or not.
	
	You need to make sure both the receiver and the given resource have their `_server` set, otherwise the method cannot determine when a
	relative URL could be used.
	
	You usually use the method like this:
	
	    let server = FHIROpenServer(...)
	
	    let lab = Organization()
	    lab.id = "ACME"
	    ...
	    lab._server = server
	
	    let task = Task()
	    task.created = DateTime.now()
	    ...
	    task._server = server
	
	    task.owner = try task.referenceResource(lab)
	
	- parameter resource: The resource that should be referenced
	- parameter display:  The string that will become the reference's `display`
	- returns:            A `Reference`, ready for use
	*/
	open func reference(resource: Resource, withDisplay display: FHIRString? = nil) throws -> Reference {
		let ref = Reference(owner: self)
		ref.display = display
		
		// determine whether reference is absolute (resources not on same server)
		let absolute = (nil == _server || nil == resource._server || (_server!.baseURL != resource._server!.baseURL))
		if absolute {
			ref.reference = try resource.absoluteURL().absoluteFHIRString
		}
		else if let id = resource.id {
			ref.reference = FHIRString(resource.relativeURLBase() + "/\(id)")
		}
		else {
			throw FHIRError.resourceWithoutId
		}
		return ref
	}
}

