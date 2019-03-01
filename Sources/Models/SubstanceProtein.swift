//
//  SubstanceProtein.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/SubstanceProtein) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A SubstanceProtein is defined as a single unit of a linear amino acid sequence, or a combination of subunits that are
either covalently linked or have a defined invariant stoichiometric relationship. This includes all synthetic,
recombinant and purified SubstanceProteins of defined sequence, whether the use is therapeutic or prophylactic. This set
of elements will be used to describe albumins, coagulation factors, cytokines, growth factors, peptide/SubstanceProtein
hormones, enzymes, toxins, toxoids, recombinant vaccines, and immunomodulators.
*/
open class SubstanceProtein: DomainResource {
	override open class var resourceType: String {
		get { return "SubstanceProtein" }
	}
	
	/// The disulphide bond between two cysteine residues either on the same subunit or on two different subunits shall
	/// be described. The position of the disulfide bonds in the SubstanceProtein shall be listed in increasing order of
	/// subunit number and position within subunit followed by the abbreviation of the amino acids involved. The
	/// disulfide linkage positions shall actually contain the amino acid Cysteine at the respective positions.
	public var disulfideLinkage: [FHIRString]?
	
	/// Number of linear sequences of amino acids linked through peptide bonds. The number of subunits constituting the
	/// SubstanceProtein shall be described. It is possible that the number of subunits can be variable.
	public var numberOfSubunits: FHIRInteger?
	
	/// The SubstanceProtein descriptive elements will only be used when a complete or partial amino acid sequence is
	/// available or derivable from a nucleic acid sequence.
	public var sequenceType: CodeableConcept?
	
	/// This subclause refers to the description of each subunit constituting the SubstanceProtein. A subunit is a
	/// linear sequence of amino acids linked through peptide bonds. The Subunit information shall be provided when the
	/// finished SubstanceProtein is a complex of multiple sequences; subunits are not used to delineate domains within
	/// a single sequence. Subunits are listed in order of decreasing length; sequences of the same length will be
	/// ordered by decreasing molecular weight; subunits that have identical sequences will be repeated multiple times.
	public var subunit: [SubstanceProteinSubunit]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		disulfideLinkage = createInstances(of: FHIRString.self, for: "disulfideLinkage", in: json, context: &instCtx, owner: self) ?? disulfideLinkage
		numberOfSubunits = createInstance(type: FHIRInteger.self, for: "numberOfSubunits", in: json, context: &instCtx, owner: self) ?? numberOfSubunits
		sequenceType = createInstance(type: CodeableConcept.self, for: "sequenceType", in: json, context: &instCtx, owner: self) ?? sequenceType
		subunit = createInstances(of: SubstanceProteinSubunit.self, for: "subunit", in: json, context: &instCtx, owner: self) ?? subunit
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "disulfideLinkage", using: self.disulfideLinkage, errors: &errors)
		self.numberOfSubunits?.decorate(json: &json, withKey: "numberOfSubunits", errors: &errors)
		self.sequenceType?.decorate(json: &json, withKey: "sequenceType", errors: &errors)
		arrayDecorate(json: &json, withKey: "subunit", using: self.subunit, errors: &errors)
	}
}


/**
This subclause refers to the description of each subunit constituting the SubstanceProtein. A subunit is a linear
sequence of amino acids linked through peptide bonds. The Subunit information shall be provided when the finished
SubstanceProtein is a complex of multiple sequences; subunits are not used to delineate domains within a single
sequence. Subunits are listed in order of decreasing length; sequences of the same length will be ordered by decreasing
molecular weight; subunits that have identical sequences will be repeated multiple times.
*/
open class SubstanceProteinSubunit: BackboneElement {
	override open class var resourceType: String {
		get { return "SubstanceProteinSubunit" }
	}
	
	/// The modification at the C-terminal shall be specified.
	public var cTerminalModification: FHIRString?
	
	/// Unique identifier for molecular fragment modification based on the ISO 11238 Substance ID.
	public var cTerminalModificationId: Identifier?
	
	/// Length of linear sequences of amino acids contained in the subunit.
	public var length: FHIRInteger?
	
	/// The name of the fragment modified at the N-terminal of the SubstanceProtein shall be specified.
	public var nTerminalModification: FHIRString?
	
	/// Unique identifier for molecular fragment modification based on the ISO 11238 Substance ID.
	public var nTerminalModificationId: Identifier?
	
	/// The sequence information shall be provided enumerating the amino acids from N- to C-terminal end using standard
	/// single-letter amino acid codes. Uppercase shall be used for L-amino acids and lowercase for D-amino acids.
	/// Transcribed SubstanceProteins will always be described using the translated sequence; for synthetic peptide
	/// containing amino acids that are not represented with a single letter code an X should be used within the
	/// sequence. The modified amino acids will be distinguished by their position in the sequence.
	public var sequence: FHIRString?
	
	/// The sequence information shall be provided enumerating the amino acids from N- to C-terminal end using standard
	/// single-letter amino acid codes. Uppercase shall be used for L-amino acids and lowercase for D-amino acids.
	/// Transcribed SubstanceProteins will always be described using the translated sequence; for synthetic peptide
	/// containing amino acids that are not represented with a single letter code an X should be used within the
	/// sequence. The modified amino acids will be distinguished by their position in the sequence.
	public var sequenceAttachment: Attachment?
	
	/// Index of primary sequences of amino acids linked through peptide bonds in order of decreasing length. Sequences
	/// of the same length will be ordered by molecular weight. Subunits that have identical sequences will be repeated
	/// and have sequential subscripts.
	public var subunit: FHIRInteger?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		cTerminalModification = createInstance(type: FHIRString.self, for: "cTerminalModification", in: json, context: &instCtx, owner: self) ?? cTerminalModification
		cTerminalModificationId = createInstance(type: Identifier.self, for: "cTerminalModificationId", in: json, context: &instCtx, owner: self) ?? cTerminalModificationId
		length = createInstance(type: FHIRInteger.self, for: "length", in: json, context: &instCtx, owner: self) ?? length
		nTerminalModification = createInstance(type: FHIRString.self, for: "nTerminalModification", in: json, context: &instCtx, owner: self) ?? nTerminalModification
		nTerminalModificationId = createInstance(type: Identifier.self, for: "nTerminalModificationId", in: json, context: &instCtx, owner: self) ?? nTerminalModificationId
		sequence = createInstance(type: FHIRString.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		sequenceAttachment = createInstance(type: Attachment.self, for: "sequenceAttachment", in: json, context: &instCtx, owner: self) ?? sequenceAttachment
		subunit = createInstance(type: FHIRInteger.self, for: "subunit", in: json, context: &instCtx, owner: self) ?? subunit
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.cTerminalModification?.decorate(json: &json, withKey: "cTerminalModification", errors: &errors)
		self.cTerminalModificationId?.decorate(json: &json, withKey: "cTerminalModificationId", errors: &errors)
		self.length?.decorate(json: &json, withKey: "length", errors: &errors)
		self.nTerminalModification?.decorate(json: &json, withKey: "nTerminalModification", errors: &errors)
		self.nTerminalModificationId?.decorate(json: &json, withKey: "nTerminalModificationId", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		self.sequenceAttachment?.decorate(json: &json, withKey: "sequenceAttachment", errors: &errors)
		self.subunit?.decorate(json: &json, withKey: "subunit", errors: &errors)
	}
}

