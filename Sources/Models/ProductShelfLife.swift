//
//  ProductShelfLife.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ProductShelfLife) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
The shelf-life and storage information for a medicinal product item or container can be described using this class.
*/
open class ProductShelfLife: BackboneElement {
	override open class var resourceType: String {
		get { return "ProductShelfLife" }
	}
	
	/// Unique identifier for the packaged Medicinal Product.
	public var identifier: Identifier?
	
	/// The shelf life time period can be specified using a numerical value for the period of time and its unit of time
	/// measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting
	/// terminology The symbol and the symbol identifier shall be used.
	public var period: Quantity?
	
	/// Special precautions for storage, if any, can be specified using an appropriate controlled vocabulary The
	/// controlled term and the controlled term identifier shall be specified.
	public var specialPrecautionsForStorage: [CodeableConcept]?
	
	/// This describes the shelf life, taking into account various scenarios such as shelf life of the packaged
	/// Medicinal Product itself, shelf life after transformation where necessary and shelf life after the first opening
	/// of a bottle, etc. The shelf life type shall be specified using an appropriate controlled vocabulary The
	/// controlled term and the controlled term identifier shall be specified.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(period: Quantity, type: CodeableConcept) {
		self.init()
		self.period = period
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		period = createInstance(type: Quantity.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		if nil == period && !instCtx.containsKey("period") {
			instCtx.addError(FHIRValidationError(missing: "period"))
		}
		specialPrecautionsForStorage = createInstances(of: CodeableConcept.self, for: "specialPrecautionsForStorage", in: json, context: &instCtx, owner: self) ?? specialPrecautionsForStorage
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		if nil == self.period {
			errors.append(FHIRValidationError(missing: "period"))
		}
		arrayDecorate(json: &json, withKey: "specialPrecautionsForStorage", using: self.specialPrecautionsForStorage, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

