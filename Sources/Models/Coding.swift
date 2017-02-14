//
//  Coding.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/Coding) on 2017-02-14.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: FHIRString.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		display = try createInstance(type: FHIRString.self, for: "display", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? display
		system = try createInstance(type: FHIRURL.self, for: "system", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? system
		userSelected = try createInstance(type: FHIRBool.self, for: "userSelected", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? userSelected
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
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

