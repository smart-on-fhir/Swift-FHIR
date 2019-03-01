//
//  SubstanceReferenceInformation.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/SubstanceReferenceInformation) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Todo.
*/
open class SubstanceReferenceInformation: DomainResource {
	override open class var resourceType: String {
		get { return "SubstanceReferenceInformation" }
	}
	
	/// Todo.
	public var classification: [SubstanceReferenceInformationClassification]?
	
	/// Todo.
	public var comment: FHIRString?
	
	/// Todo.
	public var gene: [SubstanceReferenceInformationGene]?
	
	/// Todo.
	public var geneElement: [SubstanceReferenceInformationGeneElement]?
	
	/// Todo.
	public var target: [SubstanceReferenceInformationTarget]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		classification = createInstances(of: SubstanceReferenceInformationClassification.self, for: "classification", in: json, context: &instCtx, owner: self) ?? classification
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		gene = createInstances(of: SubstanceReferenceInformationGene.self, for: "gene", in: json, context: &instCtx, owner: self) ?? gene
		geneElement = createInstances(of: SubstanceReferenceInformationGeneElement.self, for: "geneElement", in: json, context: &instCtx, owner: self) ?? geneElement
		target = createInstances(of: SubstanceReferenceInformationTarget.self, for: "target", in: json, context: &instCtx, owner: self) ?? target
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "classification", using: self.classification, errors: &errors)
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		arrayDecorate(json: &json, withKey: "gene", using: self.gene, errors: &errors)
		arrayDecorate(json: &json, withKey: "geneElement", using: self.geneElement, errors: &errors)
		arrayDecorate(json: &json, withKey: "target", using: self.target, errors: &errors)
	}
}


/**
Todo.
*/
open class SubstanceReferenceInformationClassification: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceReferenceInformationClassification" }
	}
	
	/// Todo.
	public var classification: CodeableConcept?
	
	/// Todo.
	public var domain: CodeableConcept?
	
	/// Todo.
	public var source: [Reference]?
	
	/// Todo.
	public var subtype: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		classification = createInstance(type: CodeableConcept.self, for: "classification", in: json, context: &instCtx, owner: self) ?? classification
		domain = createInstance(type: CodeableConcept.self, for: "domain", in: json, context: &instCtx, owner: self) ?? domain
		source = createInstances(of: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		subtype = createInstances(of: CodeableConcept.self, for: "subtype", in: json, context: &instCtx, owner: self) ?? subtype
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.classification?.decorate(json: &json, withKey: "classification", errors: &errors)
		self.domain?.decorate(json: &json, withKey: "domain", errors: &errors)
		arrayDecorate(json: &json, withKey: "source", using: self.source, errors: &errors)
		arrayDecorate(json: &json, withKey: "subtype", using: self.subtype, errors: &errors)
	}
}


/**
Todo.
*/
open class SubstanceReferenceInformationGene: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceReferenceInformationGene" }
	}
	
	/// Todo.
	public var gene: CodeableConcept?
	
	/// Todo.
	public var geneSequenceOrigin: CodeableConcept?
	
	/// Todo.
	public var source: [Reference]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		gene = createInstance(type: CodeableConcept.self, for: "gene", in: json, context: &instCtx, owner: self) ?? gene
		geneSequenceOrigin = createInstance(type: CodeableConcept.self, for: "geneSequenceOrigin", in: json, context: &instCtx, owner: self) ?? geneSequenceOrigin
		source = createInstances(of: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.gene?.decorate(json: &json, withKey: "gene", errors: &errors)
		self.geneSequenceOrigin?.decorate(json: &json, withKey: "geneSequenceOrigin", errors: &errors)
		arrayDecorate(json: &json, withKey: "source", using: self.source, errors: &errors)
	}
}


/**
Todo.
*/
open class SubstanceReferenceInformationGeneElement: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceReferenceInformationGeneElement" }
	}
	
	/// Todo.
	public var element: Identifier?
	
	/// Todo.
	public var source: [Reference]?
	
	/// Todo.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		element = createInstance(type: Identifier.self, for: "element", in: json, context: &instCtx, owner: self) ?? element
		source = createInstances(of: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.element?.decorate(json: &json, withKey: "element", errors: &errors)
		arrayDecorate(json: &json, withKey: "source", using: self.source, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Todo.
*/
open class SubstanceReferenceInformationTarget: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceReferenceInformationTarget" }
	}
	
	/// Todo.
	public var amountQuantity: Quantity?
	
	/// Todo.
	public var amountRange: Range?
	
	/// Todo.
	public var amountString: FHIRString?
	
	/// Todo.
	public var amountType: CodeableConcept?
	
	/// Todo.
	public var interaction: CodeableConcept?
	
	/// Todo.
	public var organism: CodeableConcept?
	
	/// Todo.
	public var organismType: CodeableConcept?
	
	/// Todo.
	public var source: [Reference]?
	
	/// Todo.
	public var target: Identifier?
	
	/// Todo.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amountQuantity = createInstance(type: Quantity.self, for: "amountQuantity", in: json, context: &instCtx, owner: self) ?? amountQuantity
		amountRange = createInstance(type: Range.self, for: "amountRange", in: json, context: &instCtx, owner: self) ?? amountRange
		amountString = createInstance(type: FHIRString.self, for: "amountString", in: json, context: &instCtx, owner: self) ?? amountString
		amountType = createInstance(type: CodeableConcept.self, for: "amountType", in: json, context: &instCtx, owner: self) ?? amountType
		interaction = createInstance(type: CodeableConcept.self, for: "interaction", in: json, context: &instCtx, owner: self) ?? interaction
		organism = createInstance(type: CodeableConcept.self, for: "organism", in: json, context: &instCtx, owner: self) ?? organism
		organismType = createInstance(type: CodeableConcept.self, for: "organismType", in: json, context: &instCtx, owner: self) ?? organismType
		source = createInstances(of: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		target = createInstance(type: Identifier.self, for: "target", in: json, context: &instCtx, owner: self) ?? target
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amountQuantity?.decorate(json: &json, withKey: "amountQuantity", errors: &errors)
		self.amountRange?.decorate(json: &json, withKey: "amountRange", errors: &errors)
		self.amountString?.decorate(json: &json, withKey: "amountString", errors: &errors)
		self.amountType?.decorate(json: &json, withKey: "amountType", errors: &errors)
		self.interaction?.decorate(json: &json, withKey: "interaction", errors: &errors)
		self.organism?.decorate(json: &json, withKey: "organism", errors: &errors)
		self.organismType?.decorate(json: &json, withKey: "organismType", errors: &errors)
		arrayDecorate(json: &json, withKey: "source", using: self.source, errors: &errors)
		self.target?.decorate(json: &json, withKey: "target", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

