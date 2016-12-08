//
//  ContactPoint.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ContactPoint) on 2016-12-08.
//  2016, SMART Health IT.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		rank = try createInstance(type: FHIRInteger.self, for: "rank", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? rank
		system = createEnum(type: ContactPointSystem.self, for: "system", in: json, presentKeys: &presentKeys, errors: &errors) ?? system
		use = createEnum(type: ContactPointUse.self, for: "use", in: json, presentKeys: &presentKeys, errors: &errors) ?? use
		value = try createInstance(type: FHIRString.self, for: "value", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? value
		
		return errors.isEmpty ? nil : errors
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

