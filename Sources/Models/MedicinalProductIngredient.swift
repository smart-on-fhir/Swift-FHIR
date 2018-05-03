//
//  MedicinalProductIngredient.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/MedicinalProductIngredient) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
An ingredient of a manufactured item or pharmaceutical product.
*/
open class MedicinalProductIngredient: DomainResource {
	override open class var resourceType: String {
		get { return "MedicinalProductIngredient" }
	}
	
	/// If the ingredient is a known or suspected allergen.
	public var allergenicIndicator: FHIRBool?
	
	/// Identifier for the ingredient.
	public var identifier: Identifier?
	
	/// Manufacturer of this Ingredient.
	public var manufacturer: [Reference]?
	
	/// Ingredient role e.g. Active ingredient, excipient.
	public var role: CodeableConcept?
	
	/// A specified substance that comprises this ingredient.
	public var specifiedSubstance: [MedicinalProductIngredientSpecifiedSubstance]?
	
	/// The ingredient substance.
	public var substance: MedicinalProductIngredientSubstance?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(role: CodeableConcept) {
		self.init()
		self.role = role
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		allergenicIndicator = createInstance(type: FHIRBool.self, for: "allergenicIndicator", in: json, context: &instCtx, owner: self) ?? allergenicIndicator
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		manufacturer = createInstances(of: Reference.self, for: "manufacturer", in: json, context: &instCtx, owner: self) ?? manufacturer
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
		if nil == role && !instCtx.containsKey("role") {
			instCtx.addError(FHIRValidationError(missing: "role"))
		}
		specifiedSubstance = createInstances(of: MedicinalProductIngredientSpecifiedSubstance.self, for: "specifiedSubstance", in: json, context: &instCtx, owner: self) ?? specifiedSubstance
		substance = createInstance(type: MedicinalProductIngredientSubstance.self, for: "substance", in: json, context: &instCtx, owner: self) ?? substance
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.allergenicIndicator?.decorate(json: &json, withKey: "allergenicIndicator", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "manufacturer", using: self.manufacturer, errors: &errors)
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
		if nil == self.role {
			errors.append(FHIRValidationError(missing: "role"))
		}
		arrayDecorate(json: &json, withKey: "specifiedSubstance", using: self.specifiedSubstance, errors: &errors)
		self.substance?.decorate(json: &json, withKey: "substance", errors: &errors)
	}
}


/**
A specified substance that comprises this ingredient.
*/
open class MedicinalProductIngredientSpecifiedSubstance: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductIngredientSpecifiedSubstance" }
	}
	
	/// The specified substance.
	public var code: CodeableConcept?
	
	/// Confidentiality level of the specified substance as the ingredient.
	public var confidentiality: CodeableConcept?
	
	/// The group of specified substance, e.g. group 1 to 4.
	public var group: CodeableConcept?
	
	/// Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product.
	public var strength: [MedicinalProductIngredientSpecifiedSubstanceStrength]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, group: CodeableConcept) {
		self.init()
		self.code = code
		self.group = group
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		confidentiality = createInstance(type: CodeableConcept.self, for: "confidentiality", in: json, context: &instCtx, owner: self) ?? confidentiality
		group = createInstance(type: CodeableConcept.self, for: "group", in: json, context: &instCtx, owner: self) ?? group
		if nil == group && !instCtx.containsKey("group") {
			instCtx.addError(FHIRValidationError(missing: "group"))
		}
		strength = createInstances(of: MedicinalProductIngredientSpecifiedSubstanceStrength.self, for: "strength", in: json, context: &instCtx, owner: self) ?? strength
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.confidentiality?.decorate(json: &json, withKey: "confidentiality", errors: &errors)
		self.group?.decorate(json: &json, withKey: "group", errors: &errors)
		if nil == self.group {
			errors.append(FHIRValidationError(missing: "group"))
		}
		arrayDecorate(json: &json, withKey: "strength", using: self.strength, errors: &errors)
	}
}


/**
Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product.
*/
open class MedicinalProductIngredientSpecifiedSubstanceStrength: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductIngredientSpecifiedSubstanceStrength" }
	}
	
	/// The strength per unitary volume (or mass).
	public var concentration: Ratio?
	
	/// The country or countries for which the strength range applies.
	public var country: [CodeableConcept]?
	
	/// For when strength is measured at a particular point or distance.
	public var measurementPoint: FHIRString?
	
	/// The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical
	/// product or manufactured item.
	public var presentation: Ratio?
	
	/// Strength expressed in terms of a reference substance.
	public var referenceStrength: [MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(presentation: Ratio) {
		self.init()
		self.presentation = presentation
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		concentration = createInstance(type: Ratio.self, for: "concentration", in: json, context: &instCtx, owner: self) ?? concentration
		country = createInstances(of: CodeableConcept.self, for: "country", in: json, context: &instCtx, owner: self) ?? country
		measurementPoint = createInstance(type: FHIRString.self, for: "measurementPoint", in: json, context: &instCtx, owner: self) ?? measurementPoint
		presentation = createInstance(type: Ratio.self, for: "presentation", in: json, context: &instCtx, owner: self) ?? presentation
		if nil == presentation && !instCtx.containsKey("presentation") {
			instCtx.addError(FHIRValidationError(missing: "presentation"))
		}
		referenceStrength = createInstances(of: MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength.self, for: "referenceStrength", in: json, context: &instCtx, owner: self) ?? referenceStrength
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.concentration?.decorate(json: &json, withKey: "concentration", errors: &errors)
		arrayDecorate(json: &json, withKey: "country", using: self.country, errors: &errors)
		self.measurementPoint?.decorate(json: &json, withKey: "measurementPoint", errors: &errors)
		self.presentation?.decorate(json: &json, withKey: "presentation", errors: &errors)
		if nil == self.presentation {
			errors.append(FHIRValidationError(missing: "presentation"))
		}
		arrayDecorate(json: &json, withKey: "referenceStrength", using: self.referenceStrength, errors: &errors)
	}
}


/**
Strength expressed in terms of a reference substance.
*/
open class MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength" }
	}
	
	/// Relevent refrerence substance.
	public var substance: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		substance = createInstance(type: CodeableConcept.self, for: "substance", in: json, context: &instCtx, owner: self) ?? substance
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.substance?.decorate(json: &json, withKey: "substance", errors: &errors)
	}
}


/**
The ingredient substance.
*/
open class MedicinalProductIngredientSubstance: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductIngredientSubstance" }
	}
	
	/// The ingredient substance.
	public var code: CodeableConcept?
	
	/// Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product.
	public var strength: [MedicinalProductIngredientSpecifiedSubstanceStrength]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, strength: [MedicinalProductIngredientSpecifiedSubstanceStrength]) {
		self.init()
		self.code = code
		self.strength = strength
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		strength = createInstances(of: MedicinalProductIngredientSpecifiedSubstanceStrength.self, for: "strength", in: json, context: &instCtx, owner: self) ?? strength
		if (nil == strength || strength!.isEmpty) && !instCtx.containsKey("strength") {
			instCtx.addError(FHIRValidationError(missing: "strength"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		arrayDecorate(json: &json, withKey: "strength", using: self.strength, errors: &errors)
		if nil == strength || self.strength!.isEmpty {
			errors.append(FHIRValidationError(missing: "strength"))
		}
	}
}

