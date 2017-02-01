//
//  Substance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Substance) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
A homogeneous material with a definite composition.
*/
open class Substance: DomainResource {
	override open class var resourceType: String {
		get { return "Substance" }
	}
	
	/// What class/type of substance this is.
	public var category: [CodeableConcept]?
	
	/// What substance this is.
	public var code: CodeableConcept?
	
	/// Textual description of the substance, comments.
	public var description_fhir: FHIRString?
	
	/// Unique identifier.
	public var identifier: [Identifier]?
	
	/// Composition information about the substance.
	public var ingredient: [SubstanceIngredient]?
	
	/// If this describes a specific package/container of the substance.
	public var instance: [SubstanceInstance]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		category = try createInstances(of: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		ingredient = try createInstances(of: SubstanceIngredient.self, for: "ingredient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? ingredient
		instance = try createInstances(of: SubstanceInstance.self, for: "instance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? instance
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "ingredient", using: self.ingredient, errors: &errors)
		arrayDecorate(json: &json, withKey: "instance", using: self.instance, errors: &errors)
	}
}


/**
Composition information about the substance.

A substance can be composed of other substances.
*/
open class SubstanceIngredient: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceIngredient" }
	}
	
	/// Optional amount (concentration).
	public var quantity: Ratio?
	
	/// A component of the substance.
	public var substanceCodeableConcept: CodeableConcept?
	
	/// A component of the substance.
	public var substanceReference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(substance: Any) {
		self.init()
		if let value = substance as? CodeableConcept {
			self.substanceCodeableConcept = value
		}
		else if let value = substance as? Reference {
			self.substanceReference = value
		}
		else {
			fhir_warn("Type “\(type(of: substance))” for property “\(substance)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		quantity = try createInstance(type: Ratio.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		substanceCodeableConcept = try createInstance(type: CodeableConcept.self, for: "substanceCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? substanceCodeableConcept
		substanceReference = try createInstance(type: Reference.self, for: "substanceReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? substanceReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.substanceCodeableConcept && nil == self.substanceReference {
			errors.append(FHIRValidationError(missing: "substance[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.substanceCodeableConcept?.decorate(json: &json, withKey: "substanceCodeableConcept", errors: &errors)
		self.substanceReference?.decorate(json: &json, withKey: "substanceReference", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.substanceCodeableConcept && nil == self.substanceReference {
			errors.append(FHIRValidationError(missing: "substance[x]"))
		}
	}
}


/**
If this describes a specific package/container of the substance.

Substance may be used to describe a kind of substance, or a specific package/container of the substance: an instance.
*/
open class SubstanceInstance: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceInstance" }
	}
	
	/// When no longer valid to use.
	public var expiry: DateTime?
	
	/// Identifier of the package/container.
	public var identifier: Identifier?
	
	/// Amount of substance in the package.
	public var quantity: Quantity?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		expiry = try createInstance(type: DateTime.self, for: "expiry", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expiry
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.expiry?.decorate(json: &json, withKey: "expiry", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
	}
}

