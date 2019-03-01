//
//  MedicinalProductManufactured.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/MedicinalProductManufactured) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
The manufactured item as contained in the packaged medicinal product.
*/
open class MedicinalProductManufactured: DomainResource {
	override open class var resourceType: String {
		get { return "MedicinalProductManufactured" }
	}
	
	/// Ingredient.
	public var ingredient: [Reference]?
	
	/// Dose form as manufactured and before any transformation into the pharmaceutical product.
	public var manufacturedDoseForm: CodeableConcept?
	
	/// Manufacturer of the item (Note that this should be named "manufacturer" but it currently causes technical
	/// issues).
	public var manufacturer: [Reference]?
	
	/// Other codeable characteristics.
	public var otherCharacteristics: [CodeableConcept]?
	
	/// Dimensions, color etc..
	public var physicalCharacteristics: ProdCharacteristic?
	
	/// The quantity or "count number" of the manufactured item.
	public var quantity: Quantity?
	
	/// The “real world” units in which the quantity of the manufactured item is described.
	public var unitOfPresentation: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(manufacturedDoseForm: CodeableConcept, quantity: Quantity) {
		self.init()
		self.manufacturedDoseForm = manufacturedDoseForm
		self.quantity = quantity
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		ingredient = createInstances(of: Reference.self, for: "ingredient", in: json, context: &instCtx, owner: self) ?? ingredient
		manufacturedDoseForm = createInstance(type: CodeableConcept.self, for: "manufacturedDoseForm", in: json, context: &instCtx, owner: self) ?? manufacturedDoseForm
		if nil == manufacturedDoseForm && !instCtx.containsKey("manufacturedDoseForm") {
			instCtx.addError(FHIRValidationError(missing: "manufacturedDoseForm"))
		}
		manufacturer = createInstances(of: Reference.self, for: "manufacturer", in: json, context: &instCtx, owner: self) ?? manufacturer
		otherCharacteristics = createInstances(of: CodeableConcept.self, for: "otherCharacteristics", in: json, context: &instCtx, owner: self) ?? otherCharacteristics
		physicalCharacteristics = createInstance(type: ProdCharacteristic.self, for: "physicalCharacteristics", in: json, context: &instCtx, owner: self) ?? physicalCharacteristics
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		if nil == quantity && !instCtx.containsKey("quantity") {
			instCtx.addError(FHIRValidationError(missing: "quantity"))
		}
		unitOfPresentation = createInstance(type: CodeableConcept.self, for: "unitOfPresentation", in: json, context: &instCtx, owner: self) ?? unitOfPresentation
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "ingredient", using: self.ingredient, errors: &errors)
		self.manufacturedDoseForm?.decorate(json: &json, withKey: "manufacturedDoseForm", errors: &errors)
		if nil == self.manufacturedDoseForm {
			errors.append(FHIRValidationError(missing: "manufacturedDoseForm"))
		}
		arrayDecorate(json: &json, withKey: "manufacturer", using: self.manufacturer, errors: &errors)
		arrayDecorate(json: &json, withKey: "otherCharacteristics", using: self.otherCharacteristics, errors: &errors)
		self.physicalCharacteristics?.decorate(json: &json, withKey: "physicalCharacteristics", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		if nil == self.quantity {
			errors.append(FHIRValidationError(missing: "quantity"))
		}
		self.unitOfPresentation?.decorate(json: &json, withKey: "unitOfPresentation", errors: &errors)
	}
}

