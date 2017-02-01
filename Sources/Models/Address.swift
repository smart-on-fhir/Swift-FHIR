//
//  Address.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Address) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
An address expressed using postal conventions (as opposed to GPS or other location definition formats).

An address expressed using postal conventions (as opposed to GPS or other location definition formats).  This data type
may be used to convey addresses for use in delivering mail as well as for visiting locations and which might not be
valid for mail delivery.  There are a variety of postal address formats defined around the world.
*/
open class Address: Element {
	override open class var resourceType: String {
		get { return "Address" }
	}
	
	/// Name of city, town etc..
	public var city: FHIRString?
	
	/// Country (e.g. can be ISO 3166 2 or 3 letter code).
	public var country: FHIRString?
	
	/// District name (aka county).
	public var district: FHIRString?
	
	/// Street name, number, direction & P.O. Box etc..
	public var line: [FHIRString]?
	
	/// Time period when address was/is in use.
	public var period: Period?
	
	/// Postal code for area.
	public var postalCode: FHIRString?
	
	/// Sub-unit of country (abbreviations ok).
	public var state: FHIRString?
	
	/// Text representation of the address.
	public var text: FHIRString?
	
	/// Distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of
	/// addresses). Most addresses are both.
	public var type: AddressType?
	
	/// The purpose of this address.
	public var use: AddressUse?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		city = try createInstance(type: FHIRString.self, for: "city", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? city
		country = try createInstance(type: FHIRString.self, for: "country", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? country
		district = try createInstance(type: FHIRString.self, for: "district", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? district
		line = try createInstances(of: FHIRString.self, for: "line", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? line
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		postalCode = try createInstance(type: FHIRString.self, for: "postalCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? postalCode
		state = try createInstance(type: FHIRString.self, for: "state", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? state
		text = try createInstance(type: FHIRString.self, for: "text", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? text
		type = createEnum(type: AddressType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		use = createEnum(type: AddressUse.self, for: "use", in: json, presentKeys: &presentKeys, errors: &errors) ?? use
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.city?.decorate(json: &json, withKey: "city", errors: &errors)
		self.country?.decorate(json: &json, withKey: "country", errors: &errors)
		self.district?.decorate(json: &json, withKey: "district", errors: &errors)
		arrayDecorate(json: &json, withKey: "line", using: self.line, errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.postalCode?.decorate(json: &json, withKey: "postalCode", errors: &errors)
		self.state?.decorate(json: &json, withKey: "state", errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.use?.decorate(json: &json, withKey: "use", errors: &errors)
	}
}

