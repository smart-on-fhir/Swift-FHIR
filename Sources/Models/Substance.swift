//
//  Substance.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Substance) on 2017-03-22.
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
	
	/// A code to indicate if the substance is actively used.
	public var status: FHIRSubstanceStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		ingredient = createInstances(of: SubstanceIngredient.self, for: "ingredient", in: json, context: &instCtx, owner: self) ?? ingredient
		instance = createInstances(of: SubstanceInstance.self, for: "instance", in: json, context: &instCtx, owner: self) ?? instance
		status = createEnum(type: FHIRSubstanceStatus.self, for: "status", in: json, context: &instCtx) ?? status
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
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		quantity = createInstance(type: Ratio.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		substanceCodeableConcept = createInstance(type: CodeableConcept.self, for: "substanceCodeableConcept", in: json, context: &instCtx, owner: self) ?? substanceCodeableConcept
		substanceReference = createInstance(type: Reference.self, for: "substanceReference", in: json, context: &instCtx, owner: self) ?? substanceReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.substanceCodeableConcept && nil == self.substanceReference {
			instCtx.addError(FHIRValidationError(missing: "substance[x]"))
		}
		
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		expiry = createInstance(type: DateTime.self, for: "expiry", in: json, context: &instCtx, owner: self) ?? expiry
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.expiry?.decorate(json: &json, withKey: "expiry", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
	}
}

