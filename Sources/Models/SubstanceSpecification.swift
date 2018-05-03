//
//  SubstanceSpecification.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/SubstanceSpecification) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
The detailed description of a substance, typically at a level beyond what is used for prescribing.
*/
open class SubstanceSpecification: DomainResource {
	override open class var resourceType: String {
		get { return "SubstanceSpecification" }
	}
	
	/// Textual comment.
	public var comment: FHIRString?
	
	/// Identifier by which this substance is known.
	public var identifier: Identifier?
	
	/// Moiety, for structural modifications.
	public var moiety: [SubstanceSpecificationMoiety]?
	
	/// The molecular weight or weight range (for proteins, polymers or nucleic acids).
	public var molecularWeight: [SubstanceSpecificationStructureIsotopeMolecularWeight]?
	
	/// Data items specific to polymers.
	public var polymer: Reference?
	
	/// General specifications for this substance, including how it is related to other substances.
	public var property: [SubstanceSpecificationProperty]?
	
	/// General information detailing this substance.
	public var referenceInformation: Reference?
	
	/// Supporting literature.
	public var referenceSource: [FHIRString]?
	
	/// Chemicals may be stoichiometric or non-stoichiometric.
	public var stoichiometric: FHIRBool?
	
	/// Structural information.
	public var structure: SubstanceSpecificationStructure?
	
	/// Codes associated with the substance.
	public var substanceCode: [SubstanceSpecificationSubstanceCode]?
	
	/// Names applicable to this substence.
	public var substanceName: [SubstanceSpecificationSubstanceName]?
	
	/// High level categorization, e.g. polymer or nucleic acid.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		moiety = createInstances(of: SubstanceSpecificationMoiety.self, for: "moiety", in: json, context: &instCtx, owner: self) ?? moiety
		molecularWeight = createInstances(of: SubstanceSpecificationStructureIsotopeMolecularWeight.self, for: "molecularWeight", in: json, context: &instCtx, owner: self) ?? molecularWeight
		polymer = createInstance(type: Reference.self, for: "polymer", in: json, context: &instCtx, owner: self) ?? polymer
		property = createInstances(of: SubstanceSpecificationProperty.self, for: "property", in: json, context: &instCtx, owner: self) ?? property
		referenceInformation = createInstance(type: Reference.self, for: "referenceInformation", in: json, context: &instCtx, owner: self) ?? referenceInformation
		referenceSource = createInstances(of: FHIRString.self, for: "referenceSource", in: json, context: &instCtx, owner: self) ?? referenceSource
		stoichiometric = createInstance(type: FHIRBool.self, for: "stoichiometric", in: json, context: &instCtx, owner: self) ?? stoichiometric
		structure = createInstance(type: SubstanceSpecificationStructure.self, for: "structure", in: json, context: &instCtx, owner: self) ?? structure
		substanceCode = createInstances(of: SubstanceSpecificationSubstanceCode.self, for: "substanceCode", in: json, context: &instCtx, owner: self) ?? substanceCode
		substanceName = createInstances(of: SubstanceSpecificationSubstanceName.self, for: "substanceName", in: json, context: &instCtx, owner: self) ?? substanceName
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "moiety", using: self.moiety, errors: &errors)
		arrayDecorate(json: &json, withKey: "molecularWeight", using: self.molecularWeight, errors: &errors)
		self.polymer?.decorate(json: &json, withKey: "polymer", errors: &errors)
		arrayDecorate(json: &json, withKey: "property", using: self.property, errors: &errors)
		self.referenceInformation?.decorate(json: &json, withKey: "referenceInformation", errors: &errors)
		arrayDecorate(json: &json, withKey: "referenceSource", using: self.referenceSource, errors: &errors)
		self.stoichiometric?.decorate(json: &json, withKey: "stoichiometric", errors: &errors)
		self.structure?.decorate(json: &json, withKey: "structure", errors: &errors)
		arrayDecorate(json: &json, withKey: "substanceCode", using: self.substanceCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "substanceName", using: self.substanceName, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Moiety, for structural modifications.
*/
open class SubstanceSpecificationMoiety: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationMoiety" }
	}
	
	/// Quantitative value for this moiety.
	public var amount: FHIRString?
	
	/// Identifier by which this moiety substance is known.
	public var identifier: Identifier?
	
	/// Molecular formula.
	public var molecularFormula: FHIRString?
	
	/// Textual name for this moiety substance.
	public var name: FHIRString?
	
	/// Optical activity type.
	public var opticalActivity: CodeableConcept?
	
	/// Role that the moiety is playing.
	public var role: CodeableConcept?
	
	/// Stereochemistry type.
	public var stereochemistry: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: FHIRString.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
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


/**
General specifications for this substance, including how it is related to other substances.
*/
open class SubstanceSpecificationProperty: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationProperty" }
	}
	
	/// Quantitative value for this property.
	public var amount: FHIRString?
	
	/// Description todo.
	public var name: CodeableConcept?
	
	/// A field that should be used to capture parameters that were used in the measurement of a property.
	public var parameters: FHIRString?
	
	/// Identifier for a substance upon which a defining property depends.
	public var substanceId: Identifier?
	
	/// Description todo.
	public var substanceName: FHIRString?
	
	/// Description todo.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: FHIRString.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		name = createInstance(type: CodeableConcept.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		parameters = createInstance(type: FHIRString.self, for: "parameters", in: json, context: &instCtx, owner: self) ?? parameters
		substanceId = createInstance(type: Identifier.self, for: "substanceId", in: json, context: &instCtx, owner: self) ?? substanceId
		substanceName = createInstance(type: FHIRString.self, for: "substanceName", in: json, context: &instCtx, owner: self) ?? substanceName
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.parameters?.decorate(json: &json, withKey: "parameters", errors: &errors)
		self.substanceId?.decorate(json: &json, withKey: "substanceId", errors: &errors)
		self.substanceName?.decorate(json: &json, withKey: "substanceName", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Structural information.
*/
open class SubstanceSpecificationStructure: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationStructure" }
	}
	
	/// Applicable for single substances that contain a radionuclide or a non-natural isotopic ratio.
	public var isotope: [SubstanceSpecificationStructureIsotope]?
	
	/// Molecular formula.
	public var molecularFormula: FHIRString?
	
	/// Specified per moiety according to the Hill system, i.e. first C, then H, then alphabetical. and each moiety
	/// separated by a dot.
	public var molecularFormulaByMoiety: FHIRString?
	
	/// The molecular weight or weight range (for proteins, polymers or nucleic acids).
	public var molecularWeight: SubstanceSpecificationStructureIsotopeMolecularWeight?
	
	/// Optical activity type.
	public var opticalActivity: CodeableConcept?
	
	/// Supporting literature.
	public var referenceSource: [Reference]?
	
	/// Stereochemistry type.
	public var stereochemistry: CodeableConcept?
	
	/// Molectular structural representation.
	public var structuralRepresentation: [SubstanceSpecificationStructureStructuralRepresentation]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		isotope = createInstances(of: SubstanceSpecificationStructureIsotope.self, for: "isotope", in: json, context: &instCtx, owner: self) ?? isotope
		molecularFormula = createInstance(type: FHIRString.self, for: "molecularFormula", in: json, context: &instCtx, owner: self) ?? molecularFormula
		molecularFormulaByMoiety = createInstance(type: FHIRString.self, for: "molecularFormulaByMoiety", in: json, context: &instCtx, owner: self) ?? molecularFormulaByMoiety
		molecularWeight = createInstance(type: SubstanceSpecificationStructureIsotopeMolecularWeight.self, for: "molecularWeight", in: json, context: &instCtx, owner: self) ?? molecularWeight
		opticalActivity = createInstance(type: CodeableConcept.self, for: "opticalActivity", in: json, context: &instCtx, owner: self) ?? opticalActivity
		referenceSource = createInstances(of: Reference.self, for: "referenceSource", in: json, context: &instCtx, owner: self) ?? referenceSource
		stereochemistry = createInstance(type: CodeableConcept.self, for: "stereochemistry", in: json, context: &instCtx, owner: self) ?? stereochemistry
		structuralRepresentation = createInstances(of: SubstanceSpecificationStructureStructuralRepresentation.self, for: "structuralRepresentation", in: json, context: &instCtx, owner: self) ?? structuralRepresentation
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "isotope", using: self.isotope, errors: &errors)
		self.molecularFormula?.decorate(json: &json, withKey: "molecularFormula", errors: &errors)
		self.molecularFormulaByMoiety?.decorate(json: &json, withKey: "molecularFormulaByMoiety", errors: &errors)
		self.molecularWeight?.decorate(json: &json, withKey: "molecularWeight", errors: &errors)
		self.opticalActivity?.decorate(json: &json, withKey: "opticalActivity", errors: &errors)
		arrayDecorate(json: &json, withKey: "referenceSource", using: self.referenceSource, errors: &errors)
		self.stereochemistry?.decorate(json: &json, withKey: "stereochemistry", errors: &errors)
		arrayDecorate(json: &json, withKey: "structuralRepresentation", using: self.structuralRepresentation, errors: &errors)
	}
}


/**
Applicable for single substances that contain a radionuclide or a non-natural isotopic ratio.
*/
open class SubstanceSpecificationStructureIsotope: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationStructureIsotope" }
	}
	
	/// Quantitative values for this isotope.
	public var amount: FHIRString?
	
	/// The molecular weight or weight range (for proteins, polymers or nucleic acids).
	public var molecularWeight: SubstanceSpecificationStructureIsotopeMolecularWeight?
	
	/// Half life - for a non-natural nuclide.
	public var nuclideHalfLife: Quantity?
	
	/// Substance identifier for each non-natural or radioisotope.
	public var nuclideId: Identifier?
	
	/// Substance name for each non-natural or radioisotope.
	public var nuclideName: CodeableConcept?
	
	/// The type of isotopic substitution present in a single substance.
	public var substitutionType: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: FHIRString.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		molecularWeight = createInstance(type: SubstanceSpecificationStructureIsotopeMolecularWeight.self, for: "molecularWeight", in: json, context: &instCtx, owner: self) ?? molecularWeight
		nuclideHalfLife = createInstance(type: Quantity.self, for: "nuclideHalfLife", in: json, context: &instCtx, owner: self) ?? nuclideHalfLife
		nuclideId = createInstance(type: Identifier.self, for: "nuclideId", in: json, context: &instCtx, owner: self) ?? nuclideId
		nuclideName = createInstance(type: CodeableConcept.self, for: "nuclideName", in: json, context: &instCtx, owner: self) ?? nuclideName
		substitutionType = createInstance(type: CodeableConcept.self, for: "substitutionType", in: json, context: &instCtx, owner: self) ?? substitutionType
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		self.molecularWeight?.decorate(json: &json, withKey: "molecularWeight", errors: &errors)
		self.nuclideHalfLife?.decorate(json: &json, withKey: "nuclideHalfLife", errors: &errors)
		self.nuclideId?.decorate(json: &json, withKey: "nuclideId", errors: &errors)
		self.nuclideName?.decorate(json: &json, withKey: "nuclideName", errors: &errors)
		self.substitutionType?.decorate(json: &json, withKey: "substitutionType", errors: &errors)
	}
}


/**
The molecular weight or weight range (for proteins, polymers or nucleic acids).
*/
open class SubstanceSpecificationStructureIsotopeMolecularWeight: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationStructureIsotopeMolecularWeight" }
	}
	
	/// Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean
	/// would be the average. If only a single definite value for a given element is given, it would be captured in this
	/// field.
	public var amount: FHIRString?
	
	/// The method by which the molecular weight was determined.
	public var method: CodeableConcept?
	
	/// Type of molecular weight such as exact, average (also known as. number average), weight average.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: FHIRString.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		method = createInstance(type: CodeableConcept.self, for: "method", in: json, context: &instCtx, owner: self) ?? method
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		self.method?.decorate(json: &json, withKey: "method", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Molectular structural representation.
*/
open class SubstanceSpecificationStructureStructuralRepresentation: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationStructureStructuralRepresentation" }
	}
	
	/// An attached file with the structural representation.
	public var attachment: Attachment?
	
	/// The structural representation as text string in a format e.g. InChI, SMILES, MOLFILE, CDX.
	public var representation: FHIRString?
	
	/// The type of structure (e.g. Full, Partial, Representative).
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


/**
Codes associated with the substance.
*/
open class SubstanceSpecificationSubstanceCode: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationSubstanceCode" }
	}
	
	/// The specific code.
	public var code: CodeableConcept?
	
	/// Any comment can be provided in this field, if necessary.
	public var comment: FHIRString?
	
	/// Supporting literature.
	public var referenceSource: [FHIRString]?
	
	/// Status of the code assignment.
	public var status: CodeableConcept?
	
	/// The date at which the code status is changed as part of the terminology maintenance.
	public var statusDate: DateTime?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		referenceSource = createInstances(of: FHIRString.self, for: "referenceSource", in: json, context: &instCtx, owner: self) ?? referenceSource
		status = createInstance(type: CodeableConcept.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		statusDate = createInstance(type: DateTime.self, for: "statusDate", in: json, context: &instCtx, owner: self) ?? statusDate
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		arrayDecorate(json: &json, withKey: "referenceSource", using: self.referenceSource, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.statusDate?.decorate(json: &json, withKey: "statusDate", errors: &errors)
	}
}


/**
Names applicable to this substence.
*/
open class SubstanceSpecificationSubstanceName: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationSubstanceName" }
	}
	
	/// The use context of this name for example if there is a different name a drug active ingredient as opposed to a
	/// food colour additive.
	public var domain: [CodeableConcept]?
	
	/// The jurisdiction where this name applies.
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the name.
	public var language: [CodeableConcept]?
	
	/// The actual name.
	public var name: FHIRString?
	
	/// Details of the official nature of this name.
	public var officialName: [SubstanceSpecificationSubstanceNameOfficialName]?
	
	/// Supporting literature.
	public var referenceSource: [FHIRString]?
	
	/// Name type.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		domain = createInstances(of: CodeableConcept.self, for: "domain", in: json, context: &instCtx, owner: self) ?? domain
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		language = createInstances(of: CodeableConcept.self, for: "language", in: json, context: &instCtx, owner: self) ?? language
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		officialName = createInstances(of: SubstanceSpecificationSubstanceNameOfficialName.self, for: "officialName", in: json, context: &instCtx, owner: self) ?? officialName
		referenceSource = createInstances(of: FHIRString.self, for: "referenceSource", in: json, context: &instCtx, owner: self) ?? referenceSource
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "domain", using: self.domain, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		arrayDecorate(json: &json, withKey: "language", using: self.language, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "officialName", using: self.officialName, errors: &errors)
		arrayDecorate(json: &json, withKey: "referenceSource", using: self.referenceSource, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Details of the official nature of this name.
*/
open class SubstanceSpecificationSubstanceNameOfficialName: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationSubstanceNameOfficialName" }
	}
	
	/// Which authority uses this official name.
	public var authority: CodeableConcept?
	
	/// Date of official name change.
	public var date: DateTime?
	
	/// The status of the official name.
	public var status: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authority = createInstance(type: CodeableConcept.self, for: "authority", in: json, context: &instCtx, owner: self) ?? authority
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		status = createInstance(type: CodeableConcept.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authority?.decorate(json: &json, withKey: "authority", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
	}
}

