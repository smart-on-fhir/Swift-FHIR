//
//  MedicinalProductPharmaceutical.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/MedicinalProductPharmaceutical) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
A pharmaceutical product described in terms of its composition and dose form.
*/
open class MedicinalProductPharmaceutical: DomainResource {
	override open class var resourceType: String {
		get { return "MedicinalProductPharmaceutical" }
	}
	
	/// The administrable dose form, after necessary reconstitution.
	public var administrableDoseForm: CodeableConcept?
	
	/// Characteristics e.g. a products onset of action.
	public var characteristics: [MedicinalProductPharmaceuticalCharacteristics]?
	
	/// Accompanying device.
	public var device: [FHIRString]?
	
	/// An identifier for the pharmaceutical medicinal product.
	public var identifier: [Identifier]?
	
	/// Ingredient.
	public var ingredient: [Reference]?
	
	/// The path by which the pharmaceutical product is taken into or makes contact with the body.
	public var routeOfAdministration: [CodeableConcept]?
	
	/// Todo.
	public var unitOfPresentation: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(administrableDoseForm: CodeableConcept, routeOfAdministration: [CodeableConcept]) {
		self.init()
		self.administrableDoseForm = administrableDoseForm
		self.routeOfAdministration = routeOfAdministration
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		administrableDoseForm = createInstance(type: CodeableConcept.self, for: "administrableDoseForm", in: json, context: &instCtx, owner: self) ?? administrableDoseForm
		if nil == administrableDoseForm && !instCtx.containsKey("administrableDoseForm") {
			instCtx.addError(FHIRValidationError(missing: "administrableDoseForm"))
		}
		characteristics = createInstances(of: MedicinalProductPharmaceuticalCharacteristics.self, for: "characteristics", in: json, context: &instCtx, owner: self) ?? characteristics
		device = createInstances(of: FHIRString.self, for: "device", in: json, context: &instCtx, owner: self) ?? device
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		ingredient = createInstances(of: Reference.self, for: "ingredient", in: json, context: &instCtx, owner: self) ?? ingredient
		routeOfAdministration = createInstances(of: CodeableConcept.self, for: "routeOfAdministration", in: json, context: &instCtx, owner: self) ?? routeOfAdministration
		if (nil == routeOfAdministration || routeOfAdministration!.isEmpty) && !instCtx.containsKey("routeOfAdministration") {
			instCtx.addError(FHIRValidationError(missing: "routeOfAdministration"))
		}
		unitOfPresentation = createInstance(type: CodeableConcept.self, for: "unitOfPresentation", in: json, context: &instCtx, owner: self) ?? unitOfPresentation
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.administrableDoseForm?.decorate(json: &json, withKey: "administrableDoseForm", errors: &errors)
		if nil == self.administrableDoseForm {
			errors.append(FHIRValidationError(missing: "administrableDoseForm"))
		}
		arrayDecorate(json: &json, withKey: "characteristics", using: self.characteristics, errors: &errors)
		arrayDecorate(json: &json, withKey: "device", using: self.device, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "ingredient", using: self.ingredient, errors: &errors)
		arrayDecorate(json: &json, withKey: "routeOfAdministration", using: self.routeOfAdministration, errors: &errors)
		if nil == routeOfAdministration || self.routeOfAdministration!.isEmpty {
			errors.append(FHIRValidationError(missing: "routeOfAdministration"))
		}
		self.unitOfPresentation?.decorate(json: &json, withKey: "unitOfPresentation", errors: &errors)
	}
}


/**
Characteristics e.g. a products onset of action.
*/
open class MedicinalProductPharmaceuticalCharacteristics: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductPharmaceuticalCharacteristics" }
	}
	
	/// A coded characteristic.
	public var code: CodeableConcept?
	
	/// The status of characteristic e.g. assigned or pending.
	public var status: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		status = createInstance(type: CodeableConcept.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
	}
}

