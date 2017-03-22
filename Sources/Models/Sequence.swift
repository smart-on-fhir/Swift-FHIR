//
//  Sequence.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Sequence) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Information about a biological sequence.

Raw data describing a biological sequence.
*/
open class Sequence: DomainResource {
	override open class var resourceType: String {
		get { return "Sequence" }
	}
	
	/// Base number of coordinate system (0 for 0-based numbering or coordinates, inclusive start, exclusive end, 1 for
	/// 1-based numbering, inclusive start, inclusive end).
	public var coordinateSystem: FHIRInteger?
	
	/// The method for sequencing.
	public var device: Reference?
	
	/// Unique ID for this particular sequence. This is a FHIR-defined id.
	public var identifier: [Identifier]?
	
	/// Sequence that was observed.
	public var observedSeq: FHIRString?
	
	/// Who and/or what this is about.
	public var patient: Reference?
	
	/// Who should be responsible for test result.
	public var performer: Reference?
	
	/// Pointer to next atomic sequence.
	public var pointer: [Reference]?
	
	/// An set of value as quality of sequence.
	public var quality: [SequenceQuality]?
	
	/// The number of copies of the seqeunce of interest.  (RNASeq).
	public var quantity: Quantity?
	
	/// Average number of reads representing a given nucleotide in the reconstructed sequence.
	public var readCoverage: FHIRInteger?
	
	/// A sequence used as reference.
	public var referenceSeq: SequenceReferenceSeq?
	
	/// External repository which contains detailed report related with observedSeq in this resource.
	public var repository: [SequenceRepository]?
	
	/// Specimen used for sequencing.
	public var specimen: Reference?
	
	/// aa | dna | rna.
	public var type: FHIRString?
	
	/// Variant in sequence.
	public var variant: [SequenceVariant]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coordinateSystem: FHIRInteger) {
		self.init()
		self.coordinateSystem = coordinateSystem
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		coordinateSystem = createInstance(type: FHIRInteger.self, for: "coordinateSystem", in: json, context: &instCtx, owner: self) ?? coordinateSystem
		if nil == coordinateSystem && !instCtx.containsKey("coordinateSystem") {
			instCtx.addError(FHIRValidationError(missing: "coordinateSystem"))
		}
		device = createInstance(type: Reference.self, for: "device", in: json, context: &instCtx, owner: self) ?? device
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		observedSeq = createInstance(type: FHIRString.self, for: "observedSeq", in: json, context: &instCtx, owner: self) ?? observedSeq
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		performer = createInstance(type: Reference.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		pointer = createInstances(of: Reference.self, for: "pointer", in: json, context: &instCtx, owner: self) ?? pointer
		quality = createInstances(of: SequenceQuality.self, for: "quality", in: json, context: &instCtx, owner: self) ?? quality
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		readCoverage = createInstance(type: FHIRInteger.self, for: "readCoverage", in: json, context: &instCtx, owner: self) ?? readCoverage
		referenceSeq = createInstance(type: SequenceReferenceSeq.self, for: "referenceSeq", in: json, context: &instCtx, owner: self) ?? referenceSeq
		repository = createInstances(of: SequenceRepository.self, for: "repository", in: json, context: &instCtx, owner: self) ?? repository
		specimen = createInstance(type: Reference.self, for: "specimen", in: json, context: &instCtx, owner: self) ?? specimen
		type = createInstance(type: FHIRString.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		variant = createInstances(of: SequenceVariant.self, for: "variant", in: json, context: &instCtx, owner: self) ?? variant
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.coordinateSystem?.decorate(json: &json, withKey: "coordinateSystem", errors: &errors)
		if nil == self.coordinateSystem {
			errors.append(FHIRValidationError(missing: "coordinateSystem"))
		}
		self.device?.decorate(json: &json, withKey: "device", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.observedSeq?.decorate(json: &json, withKey: "observedSeq", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.performer?.decorate(json: &json, withKey: "performer", errors: &errors)
		arrayDecorate(json: &json, withKey: "pointer", using: self.pointer, errors: &errors)
		arrayDecorate(json: &json, withKey: "quality", using: self.quality, errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.readCoverage?.decorate(json: &json, withKey: "readCoverage", errors: &errors)
		self.referenceSeq?.decorate(json: &json, withKey: "referenceSeq", errors: &errors)
		arrayDecorate(json: &json, withKey: "repository", using: self.repository, errors: &errors)
		self.specimen?.decorate(json: &json, withKey: "specimen", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		arrayDecorate(json: &json, withKey: "variant", using: self.variant, errors: &errors)
	}
}


/**
An set of value as quality of sequence.

An experimental feature attribute that defines the quality of the feature in a quantitative way, such as a phred quality
score ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
*/
open class SequenceQuality: BackboneElement {
	override open class var resourceType: String {
		get { return "SequenceQuality" }
	}
	
	/// End position of the sequence.
	public var end: FHIRInteger?
	
	/// F-score.
	public var fScore: FHIRDecimal?
	
	/// False positives where the non-REF alleles in the Truth and Query Call Sets match.
	public var gtFP: FHIRDecimal?
	
	/// Method to get quality.
	public var method: CodeableConcept?
	
	/// Precision of comparison.
	public var precision: FHIRDecimal?
	
	/// False positives.
	public var queryFP: FHIRDecimal?
	
	/// True positives from the perspective of the query data.
	public var queryTP: FHIRDecimal?
	
	/// Recall of comparison.
	public var recall: FHIRDecimal?
	
	/// Quality score for the comparison.
	public var score: Quantity?
	
	/// Standard sequence for comparison.
	public var standardSequence: CodeableConcept?
	
	/// Start position of the sequence.
	public var start: FHIRInteger?
	
	/// False negatives.
	public var truthFN: FHIRDecimal?
	
	/// True positives from the perspective of the truth data.
	public var truthTP: FHIRDecimal?
	
	/// INDEL / SNP / Undefined variant.
	public var type: QualityType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: QualityType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		end = createInstance(type: FHIRInteger.self, for: "end", in: json, context: &instCtx, owner: self) ?? end
		fScore = createInstance(type: FHIRDecimal.self, for: "fScore", in: json, context: &instCtx, owner: self) ?? fScore
		gtFP = createInstance(type: FHIRDecimal.self, for: "gtFP", in: json, context: &instCtx, owner: self) ?? gtFP
		method = createInstance(type: CodeableConcept.self, for: "method", in: json, context: &instCtx, owner: self) ?? method
		precision = createInstance(type: FHIRDecimal.self, for: "precision", in: json, context: &instCtx, owner: self) ?? precision
		queryFP = createInstance(type: FHIRDecimal.self, for: "queryFP", in: json, context: &instCtx, owner: self) ?? queryFP
		queryTP = createInstance(type: FHIRDecimal.self, for: "queryTP", in: json, context: &instCtx, owner: self) ?? queryTP
		recall = createInstance(type: FHIRDecimal.self, for: "recall", in: json, context: &instCtx, owner: self) ?? recall
		score = createInstance(type: Quantity.self, for: "score", in: json, context: &instCtx, owner: self) ?? score
		standardSequence = createInstance(type: CodeableConcept.self, for: "standardSequence", in: json, context: &instCtx, owner: self) ?? standardSequence
		start = createInstance(type: FHIRInteger.self, for: "start", in: json, context: &instCtx, owner: self) ?? start
		truthFN = createInstance(type: FHIRDecimal.self, for: "truthFN", in: json, context: &instCtx, owner: self) ?? truthFN
		truthTP = createInstance(type: FHIRDecimal.self, for: "truthTP", in: json, context: &instCtx, owner: self) ?? truthTP
		type = createEnum(type: QualityType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.end?.decorate(json: &json, withKey: "end", errors: &errors)
		self.fScore?.decorate(json: &json, withKey: "fScore", errors: &errors)
		self.gtFP?.decorate(json: &json, withKey: "gtFP", errors: &errors)
		self.method?.decorate(json: &json, withKey: "method", errors: &errors)
		self.precision?.decorate(json: &json, withKey: "precision", errors: &errors)
		self.queryFP?.decorate(json: &json, withKey: "queryFP", errors: &errors)
		self.queryTP?.decorate(json: &json, withKey: "queryTP", errors: &errors)
		self.recall?.decorate(json: &json, withKey: "recall", errors: &errors)
		self.score?.decorate(json: &json, withKey: "score", errors: &errors)
		self.standardSequence?.decorate(json: &json, withKey: "standardSequence", errors: &errors)
		self.start?.decorate(json: &json, withKey: "start", errors: &errors)
		self.truthFN?.decorate(json: &json, withKey: "truthFN", errors: &errors)
		self.truthTP?.decorate(json: &json, withKey: "truthTP", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
A sequence used as reference.

A sequence that is used as a reference to describe variants that are present in a sequence analyzed.
*/
open class SequenceReferenceSeq: BackboneElement {
	override open class var resourceType: String {
		get { return "SequenceReferenceSeq" }
	}
	
	/// Chromosome containing genetic finding.
	public var chromosome: CodeableConcept?
	
	/// The Genome Build used for reference, following GRCh build versions e.g. 'GRCh 37'.
	public var genomeBuild: FHIRString?
	
	/// Reference identifier.
	public var referenceSeqId: CodeableConcept?
	
	/// A Pointer to another Sequence entity as reference sequence.
	public var referenceSeqPointer: Reference?
	
	/// A string to represent reference sequence.
	public var referenceSeqString: FHIRString?
	
	/// Directionality of DNA ( +1/-1).
	public var strand: FHIRInteger?
	
	/// End position of the window on the reference sequence.
	public var windowEnd: FHIRInteger?
	
	/// Start position of the window on the  reference sequence.
	public var windowStart: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(windowEnd: FHIRInteger, windowStart: FHIRInteger) {
		self.init()
		self.windowEnd = windowEnd
		self.windowStart = windowStart
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		chromosome = createInstance(type: CodeableConcept.self, for: "chromosome", in: json, context: &instCtx, owner: self) ?? chromosome
		genomeBuild = createInstance(type: FHIRString.self, for: "genomeBuild", in: json, context: &instCtx, owner: self) ?? genomeBuild
		referenceSeqId = createInstance(type: CodeableConcept.self, for: "referenceSeqId", in: json, context: &instCtx, owner: self) ?? referenceSeqId
		referenceSeqPointer = createInstance(type: Reference.self, for: "referenceSeqPointer", in: json, context: &instCtx, owner: self) ?? referenceSeqPointer
		referenceSeqString = createInstance(type: FHIRString.self, for: "referenceSeqString", in: json, context: &instCtx, owner: self) ?? referenceSeqString
		strand = createInstance(type: FHIRInteger.self, for: "strand", in: json, context: &instCtx, owner: self) ?? strand
		windowEnd = createInstance(type: FHIRInteger.self, for: "windowEnd", in: json, context: &instCtx, owner: self) ?? windowEnd
		if nil == windowEnd && !instCtx.containsKey("windowEnd") {
			instCtx.addError(FHIRValidationError(missing: "windowEnd"))
		}
		windowStart = createInstance(type: FHIRInteger.self, for: "windowStart", in: json, context: &instCtx, owner: self) ?? windowStart
		if nil == windowStart && !instCtx.containsKey("windowStart") {
			instCtx.addError(FHIRValidationError(missing: "windowStart"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.chromosome?.decorate(json: &json, withKey: "chromosome", errors: &errors)
		self.genomeBuild?.decorate(json: &json, withKey: "genomeBuild", errors: &errors)
		self.referenceSeqId?.decorate(json: &json, withKey: "referenceSeqId", errors: &errors)
		self.referenceSeqPointer?.decorate(json: &json, withKey: "referenceSeqPointer", errors: &errors)
		self.referenceSeqString?.decorate(json: &json, withKey: "referenceSeqString", errors: &errors)
		self.strand?.decorate(json: &json, withKey: "strand", errors: &errors)
		self.windowEnd?.decorate(json: &json, withKey: "windowEnd", errors: &errors)
		if nil == self.windowEnd {
			errors.append(FHIRValidationError(missing: "windowEnd"))
		}
		self.windowStart?.decorate(json: &json, withKey: "windowStart", errors: &errors)
		if nil == self.windowStart {
			errors.append(FHIRValidationError(missing: "windowStart"))
		}
	}
}


/**
External repository which contains detailed report related with observedSeq in this resource.

Configurations of the external repository. The repository shall store target's observedSeq or records related with
target's observedSeq.
*/
open class SequenceRepository: BackboneElement {
	override open class var resourceType: String {
		get { return "SequenceRepository" }
	}
	
	/// Id of the dataset that used to call for dataset in repository.
	public var datasetId: FHIRString?
	
	/// Repository's name.
	public var name: FHIRString?
	
	/// Id of the read.
	public var readsetId: FHIRString?
	
	/// Click and see / RESTful API / Need login to see / RESTful API with authentication / Other ways to see resource.
	public var type: RepositoryType?
	
	/// URI of the repository.
	public var url: FHIRURL?
	
	/// Id of the variantset that used to call for variantset in repository.
	public var variantsetId: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: RepositoryType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		datasetId = createInstance(type: FHIRString.self, for: "datasetId", in: json, context: &instCtx, owner: self) ?? datasetId
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		readsetId = createInstance(type: FHIRString.self, for: "readsetId", in: json, context: &instCtx, owner: self) ?? readsetId
		type = createEnum(type: RepositoryType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		variantsetId = createInstance(type: FHIRString.self, for: "variantsetId", in: json, context: &instCtx, owner: self) ?? variantsetId
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.datasetId?.decorate(json: &json, withKey: "datasetId", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.readsetId?.decorate(json: &json, withKey: "readsetId", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		self.variantsetId?.decorate(json: &json, withKey: "variantsetId", errors: &errors)
	}
}


/**
Variant in sequence.

The definition of variant here originates from Sequence ontology
([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)). This element can represent amino
acid or nucleic sequence change(including insertion,deletion,SNP,etc.)  It can represent some complex mutation or
segment variation with the assist of CIGAR string.
*/
open class SequenceVariant: BackboneElement {
	override open class var resourceType: String {
		get { return "SequenceVariant" }
	}
	
	/// Extended CIGAR string for aligning the sequence with reference bases.
	public var cigar: FHIRString?
	
	/// End position of the variant on the reference sequence.
	public var end: FHIRInteger?
	
	/// Allele that was observed.
	public var observedAllele: FHIRString?
	
	/// Allele in the reference sequence.
	public var referenceAllele: FHIRString?
	
	/// Start position of the variant on the  reference sequence.
	public var start: FHIRInteger?
	
	/// Pointer to observed variant information.
	public var variantPointer: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		cigar = createInstance(type: FHIRString.self, for: "cigar", in: json, context: &instCtx, owner: self) ?? cigar
		end = createInstance(type: FHIRInteger.self, for: "end", in: json, context: &instCtx, owner: self) ?? end
		observedAllele = createInstance(type: FHIRString.self, for: "observedAllele", in: json, context: &instCtx, owner: self) ?? observedAllele
		referenceAllele = createInstance(type: FHIRString.self, for: "referenceAllele", in: json, context: &instCtx, owner: self) ?? referenceAllele
		start = createInstance(type: FHIRInteger.self, for: "start", in: json, context: &instCtx, owner: self) ?? start
		variantPointer = createInstance(type: Reference.self, for: "variantPointer", in: json, context: &instCtx, owner: self) ?? variantPointer
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.cigar?.decorate(json: &json, withKey: "cigar", errors: &errors)
		self.end?.decorate(json: &json, withKey: "end", errors: &errors)
		self.observedAllele?.decorate(json: &json, withKey: "observedAllele", errors: &errors)
		self.referenceAllele?.decorate(json: &json, withKey: "referenceAllele", errors: &errors)
		self.start?.decorate(json: &json, withKey: "start", errors: &errors)
		self.variantPointer?.decorate(json: &json, withKey: "variantPointer", errors: &errors)
	}
}

