//
//  ContactPoint.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/ContactPoint) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Details of a Technology mediated contact point (phone, fax, email, etc.).

Details for all kinds of technology mediated contact points for a person or organization, including telephone, email,
etc.
*/
open class ContactPoint: Element {
	override open class var resourceType: String {
		get { return "ContactPoint" }
	}
	
	/// Time period when the contact point was/is in use.
	public var period: Period?
	
	/// Specify preferred order of use (1 = highest).
	public var rank: FHIRInteger?
	
	/// Telecommunications form for contact point - what communications system is required to make use of the contact.
	public var system: ContactPointSystem?
	
	/// Identifies the purpose for the contact point.
	public var use: ContactPointUse?
	
	/// The actual contact point details.
	public var value: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		rank = createInstance(type: FHIRInteger.self, for: "rank", in: json, context: &instCtx, owner: self) ?? rank
		system = createEnum(type: ContactPointSystem.self, for: "system", in: json, context: &instCtx) ?? system
		use = createEnum(type: ContactPointUse.self, for: "use", in: json, context: &instCtx) ?? use
		value = createInstance(type: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.rank?.decorate(json: &json, withKey: "rank", errors: &errors)
		self.system?.decorate(json: &json, withKey: "system", errors: &errors)
		self.use?.decorate(json: &json, withKey: "use", errors: &errors)
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
	}
}

