//
//  FHIRAbstractResource.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 7/2/14.
//  2014, SMART Health IT.
//

import Foundation


/**
Abstract superclass for all FHIR resource models.
*/
open class FHIRAbstractResource: FHIRAbstractBase {
	
	/// A specific version id, if the instance was created using `vread`.
	public var _versionId: String?
	
	/// If this instance lives on a server, this property represents that server.
	public var _server: FHIRServer? {
		get { return __server ?? _owningResource?._server }
		set { __server = newValue }
	}
	var __server: FHIRServer?
	
	
	// MARK: - FHIRJSONType
	
	/**
	Tries to find `resourceType` by inspecting the JSON dictionary, then instantiates the appropriate class for the specified resource type;
	instantiates the receiver's class otherwise.
	
	- note: If the factory does not return a subclass of the receiver, will discard the factory-created instance and use
	`self.init(json:owner:)` instead.
	- todo: Disabled factory use on Linux for now since it crashes the compiler as of Swift 3.0.1
	
	- parameter json:    A FHIRJSON decoded from a JSON response
	- parameter owner:   The FHIRAbstractBase owning the new instance, if appropriate
	- parameter context: An in-out parameter for the instantiation context
	- returns:           If possible the appropriate FHIRAbstractBase subclass, instantiated from the given JSON dictionary, Self otherwise
	- throws:            FHIRValidationError
	*/
	override public final class func instantiate(from json: FHIRJSON, owner: FHIRAbstractBase?, context: inout FHIRInstantiationContext) -> Self {
		#if !os(Linux)
		if let type = json["resourceType"] as? String {
			return factory(type, json: json, owner: owner, type: self, context: &context)
		}
		#endif
		return self.init(json: json, owner: owner, context: &context)    // must use 'required' init with dynamic type
	}
	
	/**
	The Resource, in contrast to the base element, definitely wants "resourceType" to be present. Will return an error complaining about it
	missing if it's not present.
	*/
	override open func populate(from json: FHIRJSON, context: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &context)
		if let type = json["resourceType"] as? String {
			context.insertKey("resourceType")
			if type != type(of: self).resourceType {
				context.addError(FHIRValidationError(key: "resourceType", problem: "should be “\(type(of: self).resourceType)” but is “\(type)”"))
			}
		}
		else {
			context.addError(FHIRValidationError(missing: "resourceType"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		json["resourceType"] = type(of: self).resourceType
	}
	
	
	// MARK: - CustomStringConvertible
	
	override open var description: String {
		return "<\(type(of: self).resourceType)> \(__server?.baseURL.absoluteString ?? "nil")"
	}
}

