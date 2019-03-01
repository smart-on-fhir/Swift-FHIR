//
//  MedicinalProductInteraction.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/MedicinalProductInteraction) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
MedicinalProductInteraction.

The interactions of the medicinal product with other medicinal products, or other forms of interactions.
*/
open class MedicinalProductInteraction: DomainResource {
	override open class var resourceType: String {
		get { return "MedicinalProductInteraction" }
	}
	
	/// The interaction described.
	public var description_fhir: FHIRString?
	
	/// The effect of the interaction, for example "reduced gastric absorption of primary medication".
	public var effect: CodeableConcept?
	
	/// The incidence of the interaction, e.g. theoretical, observed.
	public var incidence: CodeableConcept?
	
	/// The specific medication, food or laboratory test that interacts.
	public var interactant: [MedicinalProductInteractionInteractant]?
	
	/// Actions for managing the interaction.
	public var management: CodeableConcept?
	
	/// The medication for which this is a described interaction.
	public var subject: [Reference]?
	
	/// The type of the interaction e.g. drug-drug interaction, drug-food interaction, drug-lab test interaction.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		effect = createInstance(type: CodeableConcept.self, for: "effect", in: json, context: &instCtx, owner: self) ?? effect
		incidence = createInstance(type: CodeableConcept.self, for: "incidence", in: json, context: &instCtx, owner: self) ?? incidence
		interactant = createInstances(of: MedicinalProductInteractionInteractant.self, for: "interactant", in: json, context: &instCtx, owner: self) ?? interactant
		management = createInstance(type: CodeableConcept.self, for: "management", in: json, context: &instCtx, owner: self) ?? management
		subject = createInstances(of: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.effect?.decorate(json: &json, withKey: "effect", errors: &errors)
		self.incidence?.decorate(json: &json, withKey: "incidence", errors: &errors)
		arrayDecorate(json: &json, withKey: "interactant", using: self.interactant, errors: &errors)
		self.management?.decorate(json: &json, withKey: "management", errors: &errors)
		arrayDecorate(json: &json, withKey: "subject", using: self.subject, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
The specific medication, food or laboratory test that interacts.
*/
open class MedicinalProductInteractionInteractant: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductInteractionInteractant" }
	}
	
	/// The specific medication, food or laboratory test that interacts.
	public var itemCodeableConcept: CodeableConcept?
	
	/// The specific medication, food or laboratory test that interacts.
	public var itemReference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: Any) {
		self.init()
		if let value = item as? Reference {
			self.itemReference = value
		}
		else if let value = item as? CodeableConcept {
			self.itemCodeableConcept = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: item))” for property “\(item)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		itemCodeableConcept = createInstance(type: CodeableConcept.self, for: "itemCodeableConcept", in: json, context: &instCtx, owner: self) ?? itemCodeableConcept
		itemReference = createInstance(type: Reference.self, for: "itemReference", in: json, context: &instCtx, owner: self) ?? itemReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.itemReference && nil == self.itemCodeableConcept {
			instCtx.addError(FHIRValidationError(missing: "item[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.itemCodeableConcept?.decorate(json: &json, withKey: "itemCodeableConcept", errors: &errors)
		self.itemReference?.decorate(json: &json, withKey: "itemReference", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.itemReference && nil == self.itemCodeableConcept {
			errors.append(FHIRValidationError(missing: "item[x]"))
		}
	}
}

