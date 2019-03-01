//
//  SubstanceAmount.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/SubstanceAmount) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Chemical substances are a single substance type whose primary defining element is the molecular structure. Chemical
substances shall be defined on the basis of their complete covalent molecular structure; the presence of a salt
(counter-ion) and/or solvates (water, alcohols) is also captured. Purity, grade, physical form or particle size are not
taken into account in the definition of a chemical substance or in the assignment of a Substance ID.
*/
open class SubstanceAmount: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceAmount" }
	}
	
	/// Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean
	/// would be the average. If only a single definite value for a given element is given, it would be captured in this
	/// field.
	public var amountQuantity: Quantity?
	
	/// Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean
	/// would be the average. If only a single definite value for a given element is given, it would be captured in this
	/// field.
	public var amountRange: Range?
	
	/// Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean
	/// would be the average. If only a single definite value for a given element is given, it would be captured in this
	/// field.
	public var amountString: FHIRString?
	
	/// A textual comment on a numeric value.
	public var amountText: FHIRString?
	
	/// Most elements that require a quantitative value will also have a field called amount type. Amount type should
	/// always be specified because the actual value of the amount is often dependent on it. EXAMPLE: In capturing the
	/// actual relative amounts of substances or molecular fragments it is essential to indicate whether the amount
	/// refers to a mole ratio or weight ratio. For any given element an effort should be made to use same the amount
	/// type for all related definitional elements.
	public var amountType: CodeableConcept?
	
	/// Reference range of possible or expected values.
	public var referenceRange: SubstanceAmountReferenceRange?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amountQuantity = createInstance(type: Quantity.self, for: "amountQuantity", in: json, context: &instCtx, owner: self) ?? amountQuantity
		amountRange = createInstance(type: Range.self, for: "amountRange", in: json, context: &instCtx, owner: self) ?? amountRange
		amountString = createInstance(type: FHIRString.self, for: "amountString", in: json, context: &instCtx, owner: self) ?? amountString
		amountText = createInstance(type: FHIRString.self, for: "amountText", in: json, context: &instCtx, owner: self) ?? amountText
		amountType = createInstance(type: CodeableConcept.self, for: "amountType", in: json, context: &instCtx, owner: self) ?? amountType
		referenceRange = createInstance(type: SubstanceAmountReferenceRange.self, for: "referenceRange", in: json, context: &instCtx, owner: self) ?? referenceRange
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amountQuantity?.decorate(json: &json, withKey: "amountQuantity", errors: &errors)
		self.amountRange?.decorate(json: &json, withKey: "amountRange", errors: &errors)
		self.amountString?.decorate(json: &json, withKey: "amountString", errors: &errors)
		self.amountText?.decorate(json: &json, withKey: "amountText", errors: &errors)
		self.amountType?.decorate(json: &json, withKey: "amountType", errors: &errors)
		self.referenceRange?.decorate(json: &json, withKey: "referenceRange", errors: &errors)
	}
}


/**
Reference range of possible or expected values.
*/
open class SubstanceAmountReferenceRange: Element {
	override open class var resourceType: String {
		get { return "SubstanceAmountReferenceRange" }
	}
	
	/// Upper limit possible or expected.
	public var highLimit: Quantity?
	
	/// Lower limit possible or expected.
	public var lowLimit: Quantity?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		highLimit = createInstance(type: Quantity.self, for: "highLimit", in: json, context: &instCtx, owner: self) ?? highLimit
		lowLimit = createInstance(type: Quantity.self, for: "lowLimit", in: json, context: &instCtx, owner: self) ?? lowLimit
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.highLimit?.decorate(json: &json, withKey: "highLimit", errors: &errors)
		self.lowLimit?.decorate(json: &json, withKey: "lowLimit", errors: &errors)
	}
}

