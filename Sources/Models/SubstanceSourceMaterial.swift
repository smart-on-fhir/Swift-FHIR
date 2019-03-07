//
//  SubstanceSourceMaterial.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/SubstanceSourceMaterial) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Source material shall capture information on the taxonomic and anatomical origins as well as the fraction of a material
that can result in or can be modified to form a substance. This set of data elements shall be used to define polymer
substances isolated from biological matrices. Taxonomic and anatomical origins shall be described using a controlled
vocabulary as required. This information is captured for naturally derived polymers ( . starch) and structurally diverse
substances. For Organisms belonging to the Kingdom Plantae the Substance level defines the fresh material of a single
species or infraspecies, the Herbal Drug and the Herbal preparation. For Herbal preparations, the fraction information
will be captured at the Substance information level and additional information for herbal extracts will be captured at
the Specified Substance Group 1 information level. See for further explanation the Substance Class: Structurally Diverse
and the herbal annex.
*/
open class SubstanceSourceMaterial: DomainResource {
	override open class var resourceType: String {
		get { return "SubstanceSourceMaterial" }
	}
	
	/// The country where the plant material is harvested or the countries where the plasma is sourced from as laid down
	/// in accordance with the Plasma Master File. For “Plasma-derived substances” the attribute country of origin
	/// provides information about the countries used for the manufacturing of the Cryopoor plama or Crioprecipitate.
	public var countryOfOrigin: [CodeableConcept]?
	
	/// Stage of life for animals, plants, insects and microorganisms. This information shall be provided only when the
	/// substance is significantly different in these stages (e.g. foetal bovine serum).
	public var developmentStage: CodeableConcept?
	
	/// Many complex materials are fractions of parts of plants, animals, or minerals. Fraction elements are often
	/// necessary to define both Substances and Specified Group 1 Substances. For substances derived from Plants,
	/// fraction information will be captured at the Substance information level ( . Oils, Juices and Exudates).
	/// Additional information for Extracts, such as extraction solvent composition, will be captured at the Specified
	/// Substance Group 1 information level. For plasma-derived products fraction information will be captured at the
	/// Substance and the Specified Substance Group 1 levels.
	public var fractionDescription: [SubstanceSourceMaterialFractionDescription]?
	
	/// The place/region where the plant is harvested or the places/regions where the animal source material has its
	/// habitat.
	public var geographicalLocation: [FHIRString]?
	
	/// This subclause describes the organism which the substance is derived from. For vaccines, the parent organism
	/// shall be specified based on these subclause elements. As an example, full taxonomy will be described for the
	/// Substance Name: ., Leaf.
	public var organism: SubstanceSourceMaterialOrganism?
	
	/// The unique identifier associated with the source material parent organism shall be specified.
	public var organismId: Identifier?
	
	/// The organism accepted Scientific name shall be provided based on the organism taxonomy.
	public var organismName: FHIRString?
	
	/// The parent of the herbal drug Ginkgo biloba, Leaf is the substance ID of the substance (fresh) of Ginkgo biloba
	/// L. or Ginkgo biloba L. (Whole plant).
	public var parentSubstanceId: [Identifier]?
	
	/// The parent substance of the Herbal Drug, or Herbal preparation.
	public var parentSubstanceName: [FHIRString]?
	
	/// To do.
	public var partDescription: [SubstanceSourceMaterialPartDescription]?
	
	/// General high level classification of the source material specific to the origin of the material.
	public var sourceMaterialClass: CodeableConcept?
	
	/// The state of the source material when extracted.
	public var sourceMaterialState: CodeableConcept?
	
	/// The type of the source material shall be specified based on a controlled vocabulary. For vaccines, this
	/// subclause refers to the class of infectious agent.
	public var sourceMaterialType: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		countryOfOrigin = createInstances(of: CodeableConcept.self, for: "countryOfOrigin", in: json, context: &instCtx, owner: self) ?? countryOfOrigin
		developmentStage = createInstance(type: CodeableConcept.self, for: "developmentStage", in: json, context: &instCtx, owner: self) ?? developmentStage
		fractionDescription = createInstances(of: SubstanceSourceMaterialFractionDescription.self, for: "fractionDescription", in: json, context: &instCtx, owner: self) ?? fractionDescription
		geographicalLocation = createInstances(of: FHIRString.self, for: "geographicalLocation", in: json, context: &instCtx, owner: self) ?? geographicalLocation
		organism = createInstance(type: SubstanceSourceMaterialOrganism.self, for: "organism", in: json, context: &instCtx, owner: self) ?? organism
		organismId = createInstance(type: Identifier.self, for: "organismId", in: json, context: &instCtx, owner: self) ?? organismId
		organismName = createInstance(type: FHIRString.self, for: "organismName", in: json, context: &instCtx, owner: self) ?? organismName
		parentSubstanceId = createInstances(of: Identifier.self, for: "parentSubstanceId", in: json, context: &instCtx, owner: self) ?? parentSubstanceId
		parentSubstanceName = createInstances(of: FHIRString.self, for: "parentSubstanceName", in: json, context: &instCtx, owner: self) ?? parentSubstanceName
		partDescription = createInstances(of: SubstanceSourceMaterialPartDescription.self, for: "partDescription", in: json, context: &instCtx, owner: self) ?? partDescription
		sourceMaterialClass = createInstance(type: CodeableConcept.self, for: "sourceMaterialClass", in: json, context: &instCtx, owner: self) ?? sourceMaterialClass
		sourceMaterialState = createInstance(type: CodeableConcept.self, for: "sourceMaterialState", in: json, context: &instCtx, owner: self) ?? sourceMaterialState
		sourceMaterialType = createInstance(type: CodeableConcept.self, for: "sourceMaterialType", in: json, context: &instCtx, owner: self) ?? sourceMaterialType
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "countryOfOrigin", using: self.countryOfOrigin, errors: &errors)
		self.developmentStage?.decorate(json: &json, withKey: "developmentStage", errors: &errors)
		arrayDecorate(json: &json, withKey: "fractionDescription", using: self.fractionDescription, errors: &errors)
		arrayDecorate(json: &json, withKey: "geographicalLocation", using: self.geographicalLocation, errors: &errors)
		self.organism?.decorate(json: &json, withKey: "organism", errors: &errors)
		self.organismId?.decorate(json: &json, withKey: "organismId", errors: &errors)
		self.organismName?.decorate(json: &json, withKey: "organismName", errors: &errors)
		arrayDecorate(json: &json, withKey: "parentSubstanceId", using: self.parentSubstanceId, errors: &errors)
		arrayDecorate(json: &json, withKey: "parentSubstanceName", using: self.parentSubstanceName, errors: &errors)
		arrayDecorate(json: &json, withKey: "partDescription", using: self.partDescription, errors: &errors)
		self.sourceMaterialClass?.decorate(json: &json, withKey: "sourceMaterialClass", errors: &errors)
		self.sourceMaterialState?.decorate(json: &json, withKey: "sourceMaterialState", errors: &errors)
		self.sourceMaterialType?.decorate(json: &json, withKey: "sourceMaterialType", errors: &errors)
	}
}


/**
Many complex materials are fractions of parts of plants, animals, or minerals. Fraction elements are often necessary to
define both Substances and Specified Group 1 Substances. For substances derived from Plants, fraction information will
be captured at the Substance information level ( . Oils, Juices and Exudates). Additional information for Extracts, such
as extraction solvent composition, will be captured at the Specified Substance Group 1 information level. For plasma-
derived products fraction information will be captured at the Substance and the Specified Substance Group 1 levels.
*/
open class SubstanceSourceMaterialFractionDescription: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSourceMaterialFractionDescription" }
	}
	
	/// This element is capturing information about the fraction of a plant part, or human plasma for fractionation.
	public var fraction: FHIRString?
	
	/// The specific type of the material constituting the component. For Herbal preparations the particulars of the
	/// extracts (liquid/dry) is described in Specified Substance Group 1.
	public var materialType: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		fraction = createInstance(type: FHIRString.self, for: "fraction", in: json, context: &instCtx, owner: self) ?? fraction
		materialType = createInstance(type: CodeableConcept.self, for: "materialType", in: json, context: &instCtx, owner: self) ?? materialType
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.fraction?.decorate(json: &json, withKey: "fraction", errors: &errors)
		self.materialType?.decorate(json: &json, withKey: "materialType", errors: &errors)
	}
}


/**
This subclause describes the organism which the substance is derived from. For vaccines, the parent organism shall be
specified based on these subclause elements. As an example, full taxonomy will be described for the Substance Name: .,
Leaf.
*/
open class SubstanceSourceMaterialOrganism: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSourceMaterialOrganism" }
	}
	
	/// 4.9.13.6.1 Author type (Conditional).
	public var author: [SubstanceSourceMaterialOrganismAuthor]?
	
	/// The family of an organism shall be specified.
	public var family: CodeableConcept?
	
	/// The genus of an organism shall be specified; refers to the Latin epithet of the genus element of the
	/// plant/animal scientific name; it is present in names for genera, species and infraspecies.
	public var genus: CodeableConcept?
	
	/// 4.9.13.8.1 Hybrid species maternal organism ID (Optional).
	public var hybrid: SubstanceSourceMaterialOrganismHybrid?
	
	/// The intraspecific description of an organism shall be specified based on a controlled vocabulary. For Influenza
	/// Vaccine, the intraspecific description shall contain the syntax of the antigen in line with the WHO convention.
	public var intraspecificDescription: FHIRString?
	
	/// The Intraspecific type of an organism shall be specified.
	public var intraspecificType: CodeableConcept?
	
	/// 4.9.13.7.1 Kingdom (Conditional).
	public var organismGeneral: SubstanceSourceMaterialOrganismOrganismGeneral?
	
	/// The species of an organism shall be specified; refers to the Latin epithet of the species of the plant/animal;
	/// it is present in names for species and infraspecies.
	public var species: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		author = createInstances(of: SubstanceSourceMaterialOrganismAuthor.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		family = createInstance(type: CodeableConcept.self, for: "family", in: json, context: &instCtx, owner: self) ?? family
		genus = createInstance(type: CodeableConcept.self, for: "genus", in: json, context: &instCtx, owner: self) ?? genus
		hybrid = createInstance(type: SubstanceSourceMaterialOrganismHybrid.self, for: "hybrid", in: json, context: &instCtx, owner: self) ?? hybrid
		intraspecificDescription = createInstance(type: FHIRString.self, for: "intraspecificDescription", in: json, context: &instCtx, owner: self) ?? intraspecificDescription
		intraspecificType = createInstance(type: CodeableConcept.self, for: "intraspecificType", in: json, context: &instCtx, owner: self) ?? intraspecificType
		organismGeneral = createInstance(type: SubstanceSourceMaterialOrganismOrganismGeneral.self, for: "organismGeneral", in: json, context: &instCtx, owner: self) ?? organismGeneral
		species = createInstance(type: CodeableConcept.self, for: "species", in: json, context: &instCtx, owner: self) ?? species
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		self.family?.decorate(json: &json, withKey: "family", errors: &errors)
		self.genus?.decorate(json: &json, withKey: "genus", errors: &errors)
		self.hybrid?.decorate(json: &json, withKey: "hybrid", errors: &errors)
		self.intraspecificDescription?.decorate(json: &json, withKey: "intraspecificDescription", errors: &errors)
		self.intraspecificType?.decorate(json: &json, withKey: "intraspecificType", errors: &errors)
		self.organismGeneral?.decorate(json: &json, withKey: "organismGeneral", errors: &errors)
		self.species?.decorate(json: &json, withKey: "species", errors: &errors)
	}
}


/**
4.9.13.6.1 Author type (Conditional).
*/
open class SubstanceSourceMaterialOrganismAuthor: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSourceMaterialOrganismAuthor" }
	}
	
	/// The author of an organism species shall be specified. The author year of an organism shall also be specified
	/// when applicable; refers to the year in which the first author(s) published the infraspecific plant/animal name
	/// (of any rank).
	public var authorDescription: FHIRString?
	
	/// The type of author of an organism species shall be specified. The parenthetical author of an organism species
	/// refers to the first author who published the plant/animal name (of any rank). The primary author of an organism
	/// species refers to the first author(s), who validly published the plant/animal name.
	public var authorType: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authorDescription = createInstance(type: FHIRString.self, for: "authorDescription", in: json, context: &instCtx, owner: self) ?? authorDescription
		authorType = createInstance(type: CodeableConcept.self, for: "authorType", in: json, context: &instCtx, owner: self) ?? authorType
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authorDescription?.decorate(json: &json, withKey: "authorDescription", errors: &errors)
		self.authorType?.decorate(json: &json, withKey: "authorType", errors: &errors)
	}
}


/**
4.9.13.8.1 Hybrid species maternal organism ID (Optional).
*/
open class SubstanceSourceMaterialOrganismHybrid: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSourceMaterialOrganismHybrid" }
	}
	
	/// The hybrid type of an organism shall be specified.
	public var hybridType: CodeableConcept?
	
	/// The identifier of the maternal species constituting the hybrid organism shall be specified based on a controlled
	/// vocabulary. For plants, the parents aren’t always known, and it is unlikely that it will be known which is
	/// maternal and which is paternal.
	public var maternalOrganismId: FHIRString?
	
	/// The name of the maternal species constituting the hybrid organism shall be specified. For plants, the parents
	/// aren’t always known, and it is unlikely that it will be known which is maternal and which is paternal.
	public var maternalOrganismName: FHIRString?
	
	/// The identifier of the paternal species constituting the hybrid organism shall be specified based on a controlled
	/// vocabulary.
	public var paternalOrganismId: FHIRString?
	
	/// The name of the paternal species constituting the hybrid organism shall be specified.
	public var paternalOrganismName: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		hybridType = createInstance(type: CodeableConcept.self, for: "hybridType", in: json, context: &instCtx, owner: self) ?? hybridType
		maternalOrganismId = createInstance(type: FHIRString.self, for: "maternalOrganismId", in: json, context: &instCtx, owner: self) ?? maternalOrganismId
		maternalOrganismName = createInstance(type: FHIRString.self, for: "maternalOrganismName", in: json, context: &instCtx, owner: self) ?? maternalOrganismName
		paternalOrganismId = createInstance(type: FHIRString.self, for: "paternalOrganismId", in: json, context: &instCtx, owner: self) ?? paternalOrganismId
		paternalOrganismName = createInstance(type: FHIRString.self, for: "paternalOrganismName", in: json, context: &instCtx, owner: self) ?? paternalOrganismName
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.hybridType?.decorate(json: &json, withKey: "hybridType", errors: &errors)
		self.maternalOrganismId?.decorate(json: &json, withKey: "maternalOrganismId", errors: &errors)
		self.maternalOrganismName?.decorate(json: &json, withKey: "maternalOrganismName", errors: &errors)
		self.paternalOrganismId?.decorate(json: &json, withKey: "paternalOrganismId", errors: &errors)
		self.paternalOrganismName?.decorate(json: &json, withKey: "paternalOrganismName", errors: &errors)
	}
}


/**
4.9.13.7.1 Kingdom (Conditional).
*/
open class SubstanceSourceMaterialOrganismOrganismGeneral: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSourceMaterialOrganismOrganismGeneral" }
	}
	
	/// The class of an organism shall be specified.
	public var `class`: CodeableConcept?
	
	/// The kingdom of an organism shall be specified.
	public var kingdom: CodeableConcept?
	
	/// The order of an organism shall be specified,.
	public var order: CodeableConcept?
	
	/// The phylum of an organism shall be specified.
	public var phylum: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		`class` = createInstance(type: CodeableConcept.self, for: "class", in: json, context: &instCtx, owner: self) ?? `class`
		kingdom = createInstance(type: CodeableConcept.self, for: "kingdom", in: json, context: &instCtx, owner: self) ?? kingdom
		order = createInstance(type: CodeableConcept.self, for: "order", in: json, context: &instCtx, owner: self) ?? order
		phylum = createInstance(type: CodeableConcept.self, for: "phylum", in: json, context: &instCtx, owner: self) ?? phylum
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.`class`?.decorate(json: &json, withKey: "class", errors: &errors)
		self.kingdom?.decorate(json: &json, withKey: "kingdom", errors: &errors)
		self.order?.decorate(json: &json, withKey: "order", errors: &errors)
		self.phylum?.decorate(json: &json, withKey: "phylum", errors: &errors)
	}
}


/**
To do.
*/
open class SubstanceSourceMaterialPartDescription: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceSourceMaterialPartDescription" }
	}
	
	/// Entity of anatomical origin of source material within an organism.
	public var part: CodeableConcept?
	
	/// The detailed anatomic location when the part can be extracted from different anatomical locations of the
	/// organism. Multiple alternative locations may apply.
	public var partLocation: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		part = createInstance(type: CodeableConcept.self, for: "part", in: json, context: &instCtx, owner: self) ?? part
		partLocation = createInstance(type: CodeableConcept.self, for: "partLocation", in: json, context: &instCtx, owner: self) ?? partLocation
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.part?.decorate(json: &json, withKey: "part", errors: &errors)
		self.partLocation?.decorate(json: &json, withKey: "partLocation", errors: &errors)
	}
}

