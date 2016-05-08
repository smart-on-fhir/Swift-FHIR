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
	func containedResource(refid: String) -> Resource? {
		if let contained = contained {
			for cont in contained {
				if let id = cont.id where id == refid {
					return cont
				}
			}
		}
		return owningResource()?.containedResource(refid)
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
	public func containResource(resource: Resource, withDisplay display: String? = nil) throws -> Reference {
		guard resource !== self else {
			throw FHIRError.ResourceCannotContainItself
		}
		guard let refid = resource.id where !refid.isEmpty else {
			throw FHIRError.ResourceWithoutId
		}
		
		// contain
		var cont = contained ?? [Resource]()
		if let existing = containedResource(refid) {
			fhir_logIfDebug("Containing resource \(resource) will replace resource \(existing) already contained in \(self)")
			cont = cont.filter() { $0 !== existing }
		}
		cont.append(resource)
		contained = cont
		
		// mark as resolved
		didResolveReference(refid, resolved: resource)
		
		// return reference
		let ref = Reference(json: nil, owner: self)
		ref.reference = "#\(refid)"
		ref.display = display
		return ref
	}
	
	/**
	Adds a relative or absolute reference to the receiver, depending on whether the resources live on the same server or not.
	
	You need to make sure both the receiver and the given resource have their `_server` set, otherwise the method cannot determine when a
	relative URL could be used.
	
	You usually use the method like this:
	
	    let server = FHIROpenServer(...)
	
	    let lab = Organization(json: nil)
	    lab.id = "ACME"
	    ...
	    lab._server = server
	
	    let task = Task(json: nil)
	    task.created = DateTime.now()
	    ...
	    task._server = server
	
	    task.owner = try task.referenceResource(lab)
	
	- parameter resource: The resource that should be referenced
	- parameter display:  The string that will become the reference's `display`
	- returns:            A `Reference`, ready for use
	*/
	public func referenceResource(resource: Resource, withDisplay display: String? = nil) throws -> Reference {
		let ref = Reference(json: nil, owner: self)
		ref.display = display
		
		// determine whether reference is absolute (resources not on same server)
		let absolute = (nil == _server || nil == resource._server || !_server!.baseURL.isEqual(resource._server!.baseURL))
		if absolute {
			ref.reference = try resource.absoluteURL().absoluteString
		}
		else if let id = resource.id {
			ref.reference = resource.relativeURLBase().stringByAppendingString("/\(id)")
		}
		else {
			throw FHIRError.ResourceWithoutId
		}
		return ref
	}
}

