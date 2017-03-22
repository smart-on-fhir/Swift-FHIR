//
//  ContactDetail.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/ContactDetail) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Contact information.

Specifies contact information for a person or organization.
*/
open class ContactDetail: Element {
	override open class var resourceType: String {
		get { return "ContactDetail" }
	}
	
	/// Name of an individual to contact.
	public var name: FHIRString?
	
	/// Contact details for individual or organization.
	public var telecom: [ContactPoint]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		telecom = createInstances(of: ContactPoint.self, for: "telecom", in: json, context: &instCtx, owner: self) ?? telecom
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
	}
}

