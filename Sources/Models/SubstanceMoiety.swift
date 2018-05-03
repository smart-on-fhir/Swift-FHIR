//
//  SubstanceMoiety.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/SubstanceMoiety) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
Chemical substances are a single substance type whose primary defining element is the molecular structure. Chemical
substances shall be defined on the basis of their complete covalent molecular structure; the presence of a salt
(counter-ion) and/or solvates (water, alcohols) is also captured. Purity, grade, physical form or particle size are not
taken into account in the definition of a chemical substance or in the assignment of a Substance ID.
*/
open class SubstanceMoiety: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceMoiety" }
	}
	
	/// Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean
	/// would be the average. If only a single definite value for a given element is given, it would be captured in this
	/// field.
	public var amount: SubstanceAmount?
	
	/// The unique identifier assigned to the substance representing the moiety based on the ISO 11238 substance
	/// controlled vocabulary.
	public var identifier: Identifier?
	
	/// Molecular formula shall be captured as described in 4.7.3.
	public var molecularFormula: FHIRString?
	
	/// The name of the moiety shall be provided.
	public var name: FHIRString?
	
	/// Optical activity shall be captured as described in 4.7.2.
	public var opticalActivity: CodeableConcept?
	
	/// The role of the moiety should be specified if there is a specific role the moiety is playing.
	public var role: CodeableConcept?
	
	/// Stereochemistry shall be captured as described in 4.7.1.
	public var stereochemistry: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: SubstanceAmount.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		molecularFormula = createInstance(type: FHIRString.self, for: "molecularFormula", in: json, context: &instCtx, owner: self) ?? molecularFormula
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		opticalActivity = createInstance(type: CodeableConcept.self, for: "opticalActivity", in: json, context: &instCtx, owner: self) ?? opticalActivity
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
		stereochemistry = createInstance(type: CodeableConcept.self, for: "stereochemistry", in: json, context: &instCtx, owner: self) ?? stereochemistry
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.molecularFormula?.decorate(json: &json, withKey: "molecularFormula", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.opticalActivity?.decorate(json: &json, withKey: "opticalActivity", errors: &errors)
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
		self.stereochemistry?.decorate(json: &json, withKey: "stereochemistry", errors: &errors)
	}
}

