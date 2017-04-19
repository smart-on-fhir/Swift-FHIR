//
//  Coding.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Coding) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
A reference to a code defined by a terminology system.
*/
open class Coding: Element {
	override open class var resourceType: String {
		get { return "Coding" }
	}
	
	/// Symbol in syntax defined by the system.
	public var code: FHIRString?
	
	/// Representation defined by the system.
	public var display: FHIRString?
	
	/// Identity of the terminology system.
	public var system: FHIRURL?
	
	/// If this coding was chosen directly by the user.
	public var userSelected: FHIRBool?
	
	/// Version of the system - if relevant.
	public var version: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: FHIRString.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		display = createInstance(type: FHIRString.self, for: "display", in: json, context: &instCtx, owner: self) ?? display
		system = createInstance(type: FHIRURL.self, for: "system", in: json, context: &instCtx, owner: self) ?? system
		userSelected = createInstance(type: FHIRBool.self, for: "userSelected", in: json, context: &instCtx, owner: self) ?? userSelected
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.display?.decorate(json: &json, withKey: "display", errors: &errors)
		self.system?.decorate(json: &json, withKey: "system", errors: &errors)
		self.userSelected?.decorate(json: &json, withKey: "userSelected", errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}

