//
//  SubstanceSpecification.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/SubstanceSpecification) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
The detailed description of a substance, typically at a level beyond what is used for prescribing.
*/
open class SubstanceSpecification: DomainResource {
	override open class var resourceType: String {
		get { return "SubstanceSpecification" }
	}
	
	/// Codes associated with the substance.
	public var code: [SubstanceSpecificationFHIRString]?
	
	/// Textual comment about this record of a substance.
	public var comment: FHIRString?
	
	/// Textual description of the substance.
	public var description_fhir: FHIRString?
	
	/// If the substance applies to only human or veterinary use.
	public var domain: CodeableConcept?
	
	/// Identifier by which this substance is known.
	public var identifier: Identifier?
	
	/// Moiety, for structural modifications.
	public var moiety: [SubstanceSpecificationMoiety]?
	
	/// The molecular weight or weight range (for proteins, polymers or nucleic acids).
	public var molecularWeight: [SubstanceSpecificationStructureIsotopeMolecularWeight]?
	
	/// Names applicable to this substance.
	public var name: [SubstanceSpecificationName]?
	
	/// Data items specific to nucleic acids.
	public var nucleicAcid: Reference?
	
	/// Data items specific to polymers.
	public var polymer: Reference?
	
	/// General specifications for this substance, including how it is related to other substances.
	public var property: [SubstanceSpecificationProperty]?
	
	/// Data items specific to proteins.
	public var protein: Reference?
	
	/// General information detailing this substance.
	public var referenceInformation: Reference?
	
	/// A link between this substance and another, with details of the relationship.
	public var relationship: [SubstanceSpecificationRelationship]?
	
	/// Supporting literature.
	public var source: [Reference]?
	
	/// Material or taxonomic/anatomical source for the substance.
	public var sourceMaterial: Reference?
	
	/// Status of substance within the catalogue e.g. approved.
	public var status: CodeableConcept?
	
	/// Structural information.
	public var structure: SubstanceSpecificationStructure?
	
	/// High level categorization, e.g. polymer or nucleic acid.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstances(of: SubstanceSpecificationFHIRString.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		domain = createInstance(type: CodeableConcept.self, for: "domain", in: json, context: &instCtx, owner: self) ?? domain
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		moiety = createInstances(of: SubstanceSpecificationMoiety.self, for: "moiety", in: json, context: &instCtx, owner: self) ?? moiety
		molecularWeight = createInstances(of: SubstanceSpecificationStructureIsotopeMolecularWeight.self, for: "molecularWeight", in: json, context: &instCtx, owner: self) ?? molecularWeight
		name = createInstances(of: SubstanceSpecificationName.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		nucleicAcid = createInstance(type: Reference.self, for: "nucleicAcid", in: json, context: &instCtx, owner: self) ?? nucleicAcid
		polymer = createInstance(type: Reference.self, for: "polymer", in: json, context: &instCtx, owner: self) ?? polymer
		property = createInstances(of: SubstanceSpecificationProperty.self, for: "property", in: json, context: &instCtx, owner: self) ?? property
		protein = createInstance(type: Reference.self, for: "protein", in: json, context: &instCtx, owner: self) ?? protein
		referenceInformation = createInstance(type: Reference.self, for: "referenceInformation", in: json, context: &instCtx, owner: self) ?? referenceInformation
		relationship = createInstances(of: SubstanceSpecificationRelationship.self, for: "relationship", in: json, context: &instCtx, owner: self) ?? relationship
		source = createInstances(of: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		sourceMaterial = createInstance(type: Reference.self, for: "sourceMaterial", in: json, context: &instCtx, owner: self) ?? sourceMaterial
		status = createInstance(type: CodeableConcept.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		structure = createInstance(type: SubstanceSpecificationStructure.self, for: "structure", in: json, context: &instCtx, owner: self) ?? structure
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.domain?.decorate(json: &json, withKey: "domain", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "moiety", using: self.moiety, errors: &errors)
		arrayDecorate(json: &json, withKey: "molecularWeight", using: self.molecularWeight, errors: &errors)
		arrayDecorate(json: &json, withKey: "name", using: self.name, errors: &errors)
		self.nucleicAcid?.decorate(json: &json, withKey: "nucleicAcid", errors: &errors)
		self.polymer?.decorate(json: &json, withKey: "polymer", errors: &errors)
		arrayDecorate(json: &json, withKey: "property", using: self.property, errors: &errors)
		self.protein?.decorate(json: &json, withKey: "protein", errors: &errors)
		self.referenceInformation?.decorate(json: &json, withKey: "referenceInformation", errors: &errors)
		arrayDecorate(json: &json, withKey: "relationship", using: self.relationship, errors: &errors)
		arrayDecorate(json: &json, withKey: "source", using: self.source, errors: &errors)
		self.sourceMaterial?.decorate(json: &json, withKey: "sourceMaterial", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.structure?.decorate(json: &json, withKey: "structure", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Codes associated with the substance.
*/
open class SubstanceSpecificationFHIRString: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationFHIRString" }
	}
	
	/// The specific code.
	public var code: CodeableConcept?
	
	/// Any comment can be provided in this field, if necessary.
	public var comment: FHIRString?
	
	/// Supporting literature.
	public var source: [Reference]?
	
	/// Status of the code assignment.
	public var status: CodeableConcept?
	
	/// The date at which the code status is changed as part of the terminology maintenance.
	public var statusDate: DateTime?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		source = createInstances(of: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		status = createInstance(type: CodeableConcept.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		statusDate = createInstance(type: DateTime.self, for: "statusDate", in: json, context: &instCtx, owner: self) ?? statusDate
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		arrayDecorate(json: &json, withKey: "source", using: self.source, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.statusDate?.decorate(json: &json, withKey: "statusDate", errors: &errors)
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
	public var amountQuantity: Quantity?
	
	/// Quantitative value for this moiety.
	public var amountString: FHIRString?
	
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
		
		amountQuantity = createInstance(type: Quantity.self, for: "amountQuantity", in: json, context: &instCtx, owner: self) ?? amountQuantity
		amountString = createInstance(type: FHIRString.self, for: "amountString", in: json, context: &instCtx, owner: self) ?? amountString
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		molecularFormula = createInstance(type: FHIRString.self, for: "molecularFormula", in: json, context: &instCtx, owner: self) ?? molecularFormula
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		opticalActivity = createInstance(type: CodeableConcept.self, for: "opticalActivity", in: json, context: &instCtx, owner: self) ?? opticalActivity
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
		stereochemistry = createInstance(type: CodeableConcept.self, for: "stereochemistry", in: json, context: &instCtx, owner: self) ?? stereochemistry
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amountQuantity?.decorate(json: &json, withKey: "amountQuantity", errors: &errors)
		self.amountString?.decorate(json: &json, withKey: "amountString", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.molecularFormula?.decorate(json: &json, withKey: "molecularFormula", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.opticalActivity?.decorate(json: &json, withKey: "opticalActivity", errors: &errors)
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
		self.stereochemistry?.decorate(json: &json, withKey: "stereochemistry", errors: &errors)
	}
}


/**
Names applicable to this substance.
*/
open class SubstanceSpecificationName: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationName" }
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
	public var official: [SubstanceSpecificationNameOfficial]?
	
	/// If this is the preferred name for this substance.
	public var preferred: FHIRBool?
	
	/// Supporting literature.
	public var source: [Reference]?
	
	/// The status of the name.
	public var status: CodeableConcept?
	
	/// A synonym of this name.
	public var synonym: [SubstanceSpecificationName]?
	
	/// A translation for this name.
	public var translation: [SubstanceSpecificationName]?
	
	/// Name type.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		domain = createInstances(of: CodeableConcept.self, for: "domain", in: json, context: &instCtx, owner: self) ?? domain
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		language = createInstances(of: CodeableConcept.self, for: "language", in: json, context: &instCtx, owner: self) ?? language
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		official = createInstances(of: SubstanceSpecificationNameOfficial.self, for: "official", in: json, context: &instCtx, owner: self) ?? official
		preferred = createInstance(type: FHIRBool.self, for: "preferred", in: json, context: &instCtx, owner: self) ?? preferred
		source = createInstances(of: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		status = createInstance(type: CodeableConcept.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		synonym = createInstances(of: SubstanceSpecificationName.self, for: "synonym", in: json, context: &instCtx, owner: self) ?? synonym
		translation = createInstances(of: SubstanceSpecificationName.self, for: "translation", in: json, context: &instCtx, owner: self) ?? translation
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "domain", using: self.domain, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		arrayDecorate(json: &json, withKey: "language", using: self.language, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		arrayDecorate(json: &json, withKey: "official", using: self.official, errors: &errors)
		self.preferred?.decorate(json: &json, withKey: "preferred", errors: &errors)
		arrayDecorate(json: &json, withKey: "source", using: self.source, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "synonym", using: self.synonym, errors: &errors)
		arrayDecorate(json: &json, withKey: "translation", using: self.translation, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Details of the official nature of this name.
*/
open class SubstanceSpecificationNameOfficial: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationNameOfficial" }
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


/**
General specifications for this substance, including how it is related to other substances.
*/
open class SubstanceSpecificationProperty: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationProperty" }
	}
	
	/// Quantitative value for this property.
	public var amountQuantity: Quantity?
	
	/// Quantitative value for this property.
	public var amountString: FHIRString?
	
	/// A category for this property, e.g. Physical, Chemical, Enzymatic.
	public var category: CodeableConcept?
	
	/// Property type e.g. viscosity, pH, isoelectric point.
	public var code: CodeableConcept?
	
	/// A substance upon which a defining property depends (e.g. for solubility: in water, in alcohol).
	public var definingSubstanceCodeableConcept: CodeableConcept?
	
	/// A substance upon which a defining property depends (e.g. for solubility: in water, in alcohol).
	public var definingSubstanceReference: Reference?
	
	/// Parameters that were used in the measurement of a property (e.g. for viscosity: measured at 20C with a pH of
	/// 7.1).
	public var parameters: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amountQuantity = createInstance(type: Quantity.self, for: "amountQuantity", in: json, context: &instCtx, owner: self) ?? amountQuantity
		amountString = createInstance(type: FHIRString.self, for: "amountString", in: json, context: &instCtx, owner: self) ?? amountString
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		definingSubstanceCodeableConcept = createInstance(type: CodeableConcept.self, for: "definingSubstanceCodeableConcept", in: json, context: &instCtx, owner: self) ?? definingSubstanceCodeableConcept
		definingSubstanceReference = createInstance(type: Reference.self, for: "definingSubstanceReference", in: json, context: &instCtx, owner: self) ?? definingSubstanceReference
		parameters = createInstance(type: FHIRString.self, for: "parameters", in: json, context: &instCtx, owner: self) ?? parameters
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amountQuantity?.decorate(json: &json, withKey: "amountQuantity", errors: &errors)
		self.amountString?.decorate(json: &json, withKey: "amountString", errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.definingSubstanceCodeableConcept?.decorate(json: &json, withKey: "definingSubstanceCodeableConcept", errors: &errors)
		self.definingSubstanceReference?.decorate(json: &json, withKey: "definingSubstanceReference", errors: &errors)
		self.parameters?.decorate(json: &json, withKey: "parameters", errors: &errors)
	}
}


/**
A link between this substance and another, with details of the relationship.
*/
open class SubstanceSpecificationRelationship: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationRelationship" }
	}
	
	/// A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage
	/// of the active substance in relation to some other.
	public var amountQuantity: Quantity?
	
	/// A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage
	/// of the active substance in relation to some other.
	public var amountRange: Range?
	
	/// A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage
	/// of the active substance in relation to some other.
	public var amountRatio: Ratio?
	
	/// For use when the numeric.
	public var amountRatioLowLimit: Ratio?
	
	/// A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage
	/// of the active substance in relation to some other.
	public var amountString: FHIRString?
	
	/// An operator for the amount, for example "average", "approximately", "less than".
	public var amountType: CodeableConcept?
	
	/// For example where an enzyme strongly bonds with a particular substance, this is a defining relationship for that
	/// enzyme, out of several possible substance relationships.
	public var isDefining: FHIRBool?
	
	/// For example "salt to parent", "active moiety", "starting material".
	public var relationship: CodeableConcept?
	
	/// Supporting literature.
	public var source: [Reference]?
	
	/// A pointer to another substance, as a resource or just a representational code.
	public var substanceCodeableConcept: CodeableConcept?
	
	/// A pointer to another substance, as a resource or just a representational code.
	public var substanceReference: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amountQuantity = createInstance(type: Quantity.self, for: "amountQuantity", in: json, context: &instCtx, owner: self) ?? amountQuantity
		amountRange = createInstance(type: Range.self, for: "amountRange", in: json, context: &instCtx, owner: self) ?? amountRange
		amountRatio = createInstance(type: Ratio.self, for: "amountRatio", in: json, context: &instCtx, owner: self) ?? amountRatio
		amountRatioLowLimit = createInstance(type: Ratio.self, for: "amountRatioLowLimit", in: json, context: &instCtx, owner: self) ?? amountRatioLowLimit
		amountString = createInstance(type: FHIRString.self, for: "amountString", in: json, context: &instCtx, owner: self) ?? amountString
		amountType = createInstance(type: CodeableConcept.self, for: "amountType", in: json, context: &instCtx, owner: self) ?? amountType
		isDefining = createInstance(type: FHIRBool.self, for: "isDefining", in: json, context: &instCtx, owner: self) ?? isDefining
		relationship = createInstance(type: CodeableConcept.self, for: "relationship", in: json, context: &instCtx, owner: self) ?? relationship
		source = createInstances(of: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		substanceCodeableConcept = createInstance(type: CodeableConcept.self, for: "substanceCodeableConcept", in: json, context: &instCtx, owner: self) ?? substanceCodeableConcept
		substanceReference = createInstance(type: Reference.self, for: "substanceReference", in: json, context: &instCtx, owner: self) ?? substanceReference
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amountQuantity?.decorate(json: &json, withKey: "amountQuantity", errors: &errors)
		self.amountRange?.decorate(json: &json, withKey: "amountRange", errors: &errors)
		self.amountRatio?.decorate(json: &json, withKey: "amountRatio", errors: &errors)
		self.amountRatioLowLimit?.decorate(json: &json, withKey: "amountRatioLowLimit", errors: &errors)
		self.amountString?.decorate(json: &json, withKey: "amountString", errors: &errors)
		self.amountType?.decorate(json: &json, withKey: "amountType", errors: &errors)
		self.isDefining?.decorate(json: &json, withKey: "isDefining", errors: &errors)
		self.relationship?.decorate(json: &json, withKey: "relationship", errors: &errors)
		arrayDecorate(json: &json, withKey: "source", using: self.source, errors: &errors)
		self.substanceCodeableConcept?.decorate(json: &json, withKey: "substanceCodeableConcept", errors: &errors)
		self.substanceReference?.decorate(json: &json, withKey: "substanceReference", errors: &errors)
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
	
	/// Specified per moiety according to the Hill system, i.e. first C, then H, then alphabetical, each moiety
	/// separated by a dot.
	public var molecularFormulaByMoiety: FHIRString?
	
	/// The molecular weight or weight range (for proteins, polymers or nucleic acids).
	public var molecularWeight: SubstanceSpecificationStructureIsotopeMolecularWeight?
	
	/// Optical activity type.
	public var opticalActivity: CodeableConcept?
	
	/// Molecular structural representation.
	public var representation: [SubstanceSpecificationStructureRepresentation]?
	
	/// Supporting literature.
	public var source: [Reference]?
	
	/// Stereochemistry type.
	public var stereochemistry: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		isotope = createInstances(of: SubstanceSpecificationStructureIsotope.self, for: "isotope", in: json, context: &instCtx, owner: self) ?? isotope
		molecularFormula = createInstance(type: FHIRString.self, for: "molecularFormula", in: json, context: &instCtx, owner: self) ?? molecularFormula
		molecularFormulaByMoiety = createInstance(type: FHIRString.self, for: "molecularFormulaByMoiety", in: json, context: &instCtx, owner: self) ?? molecularFormulaByMoiety
		molecularWeight = createInstance(type: SubstanceSpecificationStructureIsotopeMolecularWeight.self, for: "molecularWeight", in: json, context: &instCtx, owner: self) ?? molecularWeight
		opticalActivity = createInstance(type: CodeableConcept.self, for: "opticalActivity", in: json, context: &instCtx, owner: self) ?? opticalActivity
		representation = createInstances(of: SubstanceSpecificationStructureRepresentation.self, for: "representation", in: json, context: &instCtx, owner: self) ?? representation
		source = createInstances(of: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		stereochemistry = createInstance(type: CodeableConcept.self, for: "stereochemistry", in: json, context: &instCtx, owner: self) ?? stereochemistry
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "isotope", using: self.isotope, errors: &errors)
		self.molecularFormula?.decorate(json: &json, withKey: "molecularFormula", errors: &errors)
		self.molecularFormulaByMoiety?.decorate(json: &json, withKey: "molecularFormulaByMoiety", errors: &errors)
		self.molecularWeight?.decorate(json: &json, withKey: "molecularWeight", errors: &errors)
		self.opticalActivity?.decorate(json: &json, withKey: "opticalActivity", errors: &errors)
		arrayDecorate(json: &json, withKey: "representation", using: self.representation, errors: &errors)
		arrayDecorate(json: &json, withKey: "source", using: self.source, errors: &errors)
		self.stereochemistry?.decorate(json: &json, withKey: "stereochemistry", errors: &errors)
	}
}


/**
Applicable for single substances that contain a radionuclide or a non-natural isotopic ratio.
*/
open class SubstanceSpecificationStructureIsotope: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationStructureIsotope" }
	}
	
	/// Half life - for a non-natural nuclide.
	public var halfLife: Quantity?
	
	/// Substance identifier for each non-natural or radioisotope.
	public var identifier: Identifier?
	
	/// The molecular weight or weight range (for proteins, polymers or nucleic acids).
	public var molecularWeight: SubstanceSpecificationStructureIsotopeMolecularWeight?
	
	/// Substance name for each non-natural or radioisotope.
	public var name: CodeableConcept?
	
	/// The type of isotopic substitution present in a single substance.
	public var substitution: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		halfLife = createInstance(type: Quantity.self, for: "halfLife", in: json, context: &instCtx, owner: self) ?? halfLife
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		molecularWeight = createInstance(type: SubstanceSpecificationStructureIsotopeMolecularWeight.self, for: "molecularWeight", in: json, context: &instCtx, owner: self) ?? molecularWeight
		name = createInstance(type: CodeableConcept.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		substitution = createInstance(type: CodeableConcept.self, for: "substitution", in: json, context: &instCtx, owner: self) ?? substitution
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.halfLife?.decorate(json: &json, withKey: "halfLife", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.molecularWeight?.decorate(json: &json, withKey: "molecularWeight", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.substitution?.decorate(json: &json, withKey: "substitution", errors: &errors)
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
	public var amount: Quantity?
	
	/// The method by which the molecular weight was determined.
	public var method: CodeableConcept?
	
	/// Type of molecular weight such as exact, average (also known as. number average), weight average.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: Quantity.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
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
Molecular structural representation.
*/
open class SubstanceSpecificationStructureRepresentation: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSpecificationStructureRepresentation" }
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

