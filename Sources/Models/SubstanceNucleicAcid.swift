//
//  SubstanceNucleicAcid.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/SubstanceNucleicAcid) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Nucleic acids are defined by three distinct elements: the base, sugar and linkage. Individual substance/moiety IDs will
be created for each of these elements. The nucleotide sequence will be always entered in the 5’-3’ direction.
*/
open class SubstanceNucleicAcid: DomainResource {
	override open class var resourceType: String {
		get { return "SubstanceNucleicAcid" }
	}
	
	/// The area of hybridisation shall be described if applicable for double stranded RNA or DNA. The number associated
	/// with the subunit followed by the number associated to the residue shall be specified in increasing order. The
	/// underscore “” shall be used as separator as follows: “Subunitnumber Residue”.
	public var areaOfHybridisation: FHIRString?
	
	/// The number of linear sequences of nucleotides linked through phosphodiester bonds shall be described. Subunits
	/// would be strands of nucleic acids that are tightly associated typically through Watson-Crick base pairing. NOTE:
	/// If not specified in the reference source, the assumption is that there is 1 subunit.
	public var numberOfSubunits: FHIRInteger?
	
	/// (TBC).
	public var oligoNucleotideType: CodeableConcept?
	
	/// The type of the sequence shall be specified based on a controlled vocabulary.
	public var sequenceType: CodeableConcept?
	
	/// Subunits are listed in order of decreasing length; sequences of the same length will be ordered by molecular
	/// weight; subunits that have identical sequences will be repeated multiple times.
	public var subunit: [SubstanceNucleicAcidSubunit]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		areaOfHybridisation = createInstance(type: FHIRString.self, for: "areaOfHybridisation", in: json, context: &instCtx, owner: self) ?? areaOfHybridisation
		numberOfSubunits = createInstance(type: FHIRInteger.self, for: "numberOfSubunits", in: json, context: &instCtx, owner: self) ?? numberOfSubunits
		oligoNucleotideType = createInstance(type: CodeableConcept.self, for: "oligoNucleotideType", in: json, context: &instCtx, owner: self) ?? oligoNucleotideType
		sequenceType = createInstance(type: CodeableConcept.self, for: "sequenceType", in: json, context: &instCtx, owner: self) ?? sequenceType
		subunit = createInstances(of: SubstanceNucleicAcidSubunit.self, for: "subunit", in: json, context: &instCtx, owner: self) ?? subunit
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.areaOfHybridisation?.decorate(json: &json, withKey: "areaOfHybridisation", errors: &errors)
		self.numberOfSubunits?.decorate(json: &json, withKey: "numberOfSubunits", errors: &errors)
		self.oligoNucleotideType?.decorate(json: &json, withKey: "oligoNucleotideType", errors: &errors)
		self.sequenceType?.decorate(json: &json, withKey: "sequenceType", errors: &errors)
		arrayDecorate(json: &json, withKey: "subunit", using: self.subunit, errors: &errors)
	}
}


/**
Subunits are listed in order of decreasing length; sequences of the same length will be ordered by molecular weight;
subunits that have identical sequences will be repeated multiple times.
*/
open class SubstanceNucleicAcidSubunit: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceNucleicAcidSubunit" }
	}
	
	/// The nucleotide present at the 5’ terminal shall be specified based on a controlled vocabulary. Since the
	/// sequence is represented from the 5' to the 3' end, the 5’ prime nucleotide is the letter at the first position
	/// in the sequence. A separate representation would be redundant.
	public var fivePrime: CodeableConcept?
	
	/// The length of the sequence shall be captured.
	public var length: FHIRInteger?
	
	/// The linkages between sugar residues will also be captured.
	public var linkage: [SubstanceNucleicAcidSubunitLinkage]?
	
	/// Actual nucleotide sequence notation from 5' to 3' end using standard single letter codes. In addition to the
	/// base sequence, sugar and type of phosphate or non-phosphate linkage should also be captured.
	public var sequence: FHIRString?
	
	/// (TBC).
	public var sequenceAttachment: Attachment?
	
	/// Index of linear sequences of nucleic acids in order of decreasing length. Sequences of the same length will be
	/// ordered by molecular weight. Subunits that have identical sequences will be repeated and have sequential
	/// subscripts.
	public var subunit: FHIRInteger?
	
	/// 5.3.6.8.1 Sugar ID (Mandatory).
	public var sugar: [SubstanceNucleicAcidSubunitSugar]?
	
	/// The nucleotide present at the 3’ terminal shall be specified based on a controlled vocabulary. Since the
	/// sequence is represented from the 5' to the 3' end, the 5’ prime nucleotide is the letter at the last position in
	/// the sequence. A separate representation would be redundant.
	public var threePrime: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		fivePrime = createInstance(type: CodeableConcept.self, for: "fivePrime", in: json, context: &instCtx, owner: self) ?? fivePrime
		length = createInstance(type: FHIRInteger.self, for: "length", in: json, context: &instCtx, owner: self) ?? length
		linkage = createInstances(of: SubstanceNucleicAcidSubunitLinkage.self, for: "linkage", in: json, context: &instCtx, owner: self) ?? linkage
		sequence = createInstance(type: FHIRString.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		sequenceAttachment = createInstance(type: Attachment.self, for: "sequenceAttachment", in: json, context: &instCtx, owner: self) ?? sequenceAttachment
		subunit = createInstance(type: FHIRInteger.self, for: "subunit", in: json, context: &instCtx, owner: self) ?? subunit
		sugar = createInstances(of: SubstanceNucleicAcidSubunitSugar.self, for: "sugar", in: json, context: &instCtx, owner: self) ?? sugar
		threePrime = createInstance(type: CodeableConcept.self, for: "threePrime", in: json, context: &instCtx, owner: self) ?? threePrime
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.fivePrime?.decorate(json: &json, withKey: "fivePrime", errors: &errors)
		self.length?.decorate(json: &json, withKey: "length", errors: &errors)
		arrayDecorate(json: &json, withKey: "linkage", using: self.linkage, errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		self.sequenceAttachment?.decorate(json: &json, withKey: "sequenceAttachment", errors: &errors)
		self.subunit?.decorate(json: &json, withKey: "subunit", errors: &errors)
		arrayDecorate(json: &json, withKey: "sugar", using: self.sugar, errors: &errors)
		self.threePrime?.decorate(json: &json, withKey: "threePrime", errors: &errors)
	}
}


/**
The linkages between sugar residues will also be captured.
*/
open class SubstanceNucleicAcidSubunitLinkage: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceNucleicAcidSubunitLinkage" }
	}
	
	/// The entity that links the sugar residues together should also be captured for nearly all naturally occurring
	/// nucleic acid the linkage is a phosphate group. For many synthetic oligonucleotides phosphorothioate linkages are
	/// often seen. Linkage connectivity is assumed to be 3’-5’. If the linkage is either 3’-3’ or 5’-5’ this should be
	/// specified.
	public var connectivity: FHIRString?
	
	/// Each linkage will be registered as a fragment and have an ID.
	public var identifier: Identifier?
	
	/// Each linkage will be registered as a fragment and have at least one name. A single name shall be assigned to
	/// each linkage.
	public var name: FHIRString?
	
	/// Residues shall be captured as described in 5.3.6.8.3.
	public var residueSite: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		connectivity = createInstance(type: FHIRString.self, for: "connectivity", in: json, context: &instCtx, owner: self) ?? connectivity
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		residueSite = createInstance(type: FHIRString.self, for: "residueSite", in: json, context: &instCtx, owner: self) ?? residueSite
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.connectivity?.decorate(json: &json, withKey: "connectivity", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.residueSite?.decorate(json: &json, withKey: "residueSite", errors: &errors)
	}
}


/**
5.3.6.8.1 Sugar ID (Mandatory).
*/
open class SubstanceNucleicAcidSubunitSugar: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceNucleicAcidSubunitSugar" }
	}
	
	/// The Substance ID of the sugar or sugar-like component that make up the nucleotide.
	public var identifier: Identifier?
	
	/// The name of the sugar or sugar-like component that make up the nucleotide.
	public var name: FHIRString?
	
	/// The residues that contain a given sugar will be captured. The order of given residues will be captured in the
	/// 5‘-3‘direction consistent with the base sequences listed above.
	public var residueSite: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		residueSite = createInstance(type: FHIRString.self, for: "residueSite", in: json, context: &instCtx, owner: self) ?? residueSite
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.residueSite?.decorate(json: &json, withKey: "residueSite", errors: &errors)
	}
}

