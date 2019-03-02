//
//  SubstancePolymer.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/SubstancePolymer) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Todo.
*/
open class SubstancePolymer: DomainResource {
	override open class var resourceType: String {
		get { return "SubstancePolymer" }
	}
	
	/// Todo.
	public var `class`: CodeableConcept?
	
	/// Todo.
	public var copolymerConnectivity: [CodeableConcept]?
	
	/// Todo.
	public var geometry: CodeableConcept?
	
	/// Todo.
	public var modification: [FHIRString]?
	
	/// Todo.
	public var monomerSet: [SubstancePolymerMonomerSet]?
	
	/// Todo.
	public var repeat_fhir: [SubstancePolymerRepeat]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		`class` = createInstance(type: CodeableConcept.self, for: "class", in: json, context: &instCtx, owner: self) ?? `class`
		copolymerConnectivity = createInstances(of: CodeableConcept.self, for: "copolymerConnectivity", in: json, context: &instCtx, owner: self) ?? copolymerConnectivity
		geometry = createInstance(type: CodeableConcept.self, for: "geometry", in: json, context: &instCtx, owner: self) ?? geometry
		modification = createInstances(of: FHIRString.self, for: "modification", in: json, context: &instCtx, owner: self) ?? modification
		monomerSet = createInstances(of: SubstancePolymerMonomerSet.self, for: "monomerSet", in: json, context: &instCtx, owner: self) ?? monomerSet
		repeat_fhir = createInstances(of: SubstancePolymerRepeat.self, for: "repeat", in: json, context: &instCtx, owner: self) ?? repeat_fhir
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.`class`?.decorate(json: &json, withKey: "class", errors: &errors)
		arrayDecorate(json: &json, withKey: "copolymerConnectivity", using: self.copolymerConnectivity, errors: &errors)
		self.geometry?.decorate(json: &json, withKey: "geometry", errors: &errors)
		arrayDecorate(json: &json, withKey: "modification", using: self.modification, errors: &errors)
		arrayDecorate(json: &json, withKey: "monomerSet", using: self.monomerSet, errors: &errors)
		arrayDecorate(json: &json, withKey: "repeat", using: self.repeat_fhir, errors: &errors)
	}
}


/**
Todo.
*/
open class SubstancePolymerMonomerSet: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstancePolymerMonomerSet" }
	}
	
	/// Todo.
	public var ratioType: CodeableConcept?
	
	/// Todo.
	public var startingMaterial: [SubstancePolymerMonomerSetStartingMaterial]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		ratioType = createInstance(type: CodeableConcept.self, for: "ratioType", in: json, context: &instCtx, owner: self) ?? ratioType
		startingMaterial = createInstances(of: SubstancePolymerMonomerSetStartingMaterial.self, for: "startingMaterial", in: json, context: &instCtx, owner: self) ?? startingMaterial
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.ratioType?.decorate(json: &json, withKey: "ratioType", errors: &errors)
		arrayDecorate(json: &json, withKey: "startingMaterial", using: self.startingMaterial, errors: &errors)
	}
}


/**
Todo.
*/
open class SubstancePolymerMonomerSetStartingMaterial: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstancePolymerMonomerSetStartingMaterial" }
	}
	
	/// Todo.
	public var amount: SubstanceAmount?
	
	/// Todo.
	public var isDefining: FHIRBool?
	
	/// Todo.
	public var material: CodeableConcept?
	
	/// Todo.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: SubstanceAmount.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		isDefining = createInstance(type: FHIRBool.self, for: "isDefining", in: json, context: &instCtx, owner: self) ?? isDefining
		material = createInstance(type: CodeableConcept.self, for: "material", in: json, context: &instCtx, owner: self) ?? material
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		self.isDefining?.decorate(json: &json, withKey: "isDefining", errors: &errors)
		self.material?.decorate(json: &json, withKey: "material", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Todo.
*/
open class SubstancePolymerRepeat: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstancePolymerRepeat" }
	}
	
	/// Todo.
	public var averageMolecularFormula: FHIRString?
	
	/// Todo.
	public var numberOfUnits: FHIRInteger?
	
	/// Todo.
	public var repeatUnit: [SubstancePolymerRepeatRepeatUnit]?
	
	/// Todo.
	public var repeatUnitAmountType: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		averageMolecularFormula = createInstance(type: FHIRString.self, for: "averageMolecularFormula", in: json, context: &instCtx, owner: self) ?? averageMolecularFormula
		numberOfUnits = createInstance(type: FHIRInteger.self, for: "numberOfUnits", in: json, context: &instCtx, owner: self) ?? numberOfUnits
		repeatUnit = createInstances(of: SubstancePolymerRepeatRepeatUnit.self, for: "repeatUnit", in: json, context: &instCtx, owner: self) ?? repeatUnit
		repeatUnitAmountType = createInstance(type: CodeableConcept.self, for: "repeatUnitAmountType", in: json, context: &instCtx, owner: self) ?? repeatUnitAmountType
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.averageMolecularFormula?.decorate(json: &json, withKey: "averageMolecularFormula", errors: &errors)
		self.numberOfUnits?.decorate(json: &json, withKey: "numberOfUnits", errors: &errors)
		arrayDecorate(json: &json, withKey: "repeatUnit", using: self.repeatUnit, errors: &errors)
		self.repeatUnitAmountType?.decorate(json: &json, withKey: "repeatUnitAmountType", errors: &errors)
	}
}


/**
Todo.
*/
open class SubstancePolymerRepeatRepeatUnit: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstancePolymerRepeatRepeatUnit" }
	}
	
	/// Todo.
	public var amount: SubstanceAmount?
	
	/// Todo.
	public var degreeOfPolymerisation: [SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation]?
	
	/// Todo.
	public var orientationOfPolymerisation: CodeableConcept?
	
	/// Todo.
	public var repeatUnit: FHIRString?
	
	/// Todo.
	public var structuralRepresentation: [SubstancePolymerRepeatRepeatUnitStructuralRepresentation]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: SubstanceAmount.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		degreeOfPolymerisation = createInstances(of: SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation.self, for: "degreeOfPolymerisation", in: json, context: &instCtx, owner: self) ?? degreeOfPolymerisation
		orientationOfPolymerisation = createInstance(type: CodeableConcept.self, for: "orientationOfPolymerisation", in: json, context: &instCtx, owner: self) ?? orientationOfPolymerisation
		repeatUnit = createInstance(type: FHIRString.self, for: "repeatUnit", in: json, context: &instCtx, owner: self) ?? repeatUnit
		structuralRepresentation = createInstances(of: SubstancePolymerRepeatRepeatUnitStructuralRepresentation.self, for: "structuralRepresentation", in: json, context: &instCtx, owner: self) ?? structuralRepresentation
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		arrayDecorate(json: &json, withKey: "degreeOfPolymerisation", using: self.degreeOfPolymerisation, errors: &errors)
		self.orientationOfPolymerisation?.decorate(json: &json, withKey: "orientationOfPolymerisation", errors: &errors)
		self.repeatUnit?.decorate(json: &json, withKey: "repeatUnit", errors: &errors)
		arrayDecorate(json: &json, withKey: "structuralRepresentation", using: self.structuralRepresentation, errors: &errors)
	}
}


/**
Todo.
*/
open class SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation" }
	}
	
	/// Todo.
	public var amount: SubstanceAmount?
	
	/// Todo.
	public var degree: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: SubstanceAmount.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		degree = createInstance(type: CodeableConcept.self, for: "degree", in: json, context: &instCtx, owner: self) ?? degree
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		self.degree?.decorate(json: &json, withKey: "degree", errors: &errors)
	}
}


/**
Todo.
*/
open class SubstancePolymerRepeatRepeatUnitStructuralRepresentation: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstancePolymerRepeatRepeatUnitStructuralRepresentation" }
	}
	
	/// Todo.
	public var attachment: Attachment?
	
	/// Todo.
	public var representation: FHIRString?
	
	/// Todo.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		attachment = createInstance(type: Attachment.self, for: "attachment", in: json, context: &instCtx, owner: self) ?? attachment
		representation = createInstance(type: FHIRString.self, for: "representation", in: json, context: &instCtx, owner: self) ?? representation
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.attachment?.decorate(json: &json, withKey: "attachment", errors: &errors)
		self.representation?.decorate(json: &json, withKey: "representation", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

