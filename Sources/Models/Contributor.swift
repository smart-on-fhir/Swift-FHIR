//
//  Contributor.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Contributor) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Contributor information.

A contributor to the content of a knowledge asset, including authors, editors, reviewers, and endorsers.
*/
open class Contributor: Element {
	override open class var resourceType: String {
		get { return "Contributor" }
	}
	
	/// Contact details of the contributor.
	public var contact: [ContactDetail]?
	
	/// Who contributed the content.
	public var name: FHIRString?
	
	/// The type of contributor.
	public var type: ContributorType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString, type: ContributorType) {
		self.init()
		self.name = name
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		type = createEnum(type: ContributorType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

