//
//  Sequence.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Sequence) on 2017-02-01.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		coordinateSystem = try createInstance(type: FHIRInteger.self, for: "coordinateSystem", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? coordinateSystem
		if nil == coordinateSystem && !presentKeys.contains("coordinateSystem") {
			errors.append(FHIRValidationError(missing: "coordinateSystem"))
		}
		device = try createInstance(type: Reference.self, for: "device", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? device
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		observedSeq = try createInstance(type: FHIRString.self, for: "observedSeq", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? observedSeq
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		performer = try createInstance(type: Reference.self, for: "performer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performer
		pointer = try createInstances(of: Reference.self, for: "pointer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? pointer
		quality = try createInstances(of: SequenceQuality.self, for: "quality", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quality
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		readCoverage = try createInstance(type: FHIRInteger.self, for: "readCoverage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? readCoverage
		referenceSeq = try createInstance(type: SequenceReferenceSeq.self, for: "referenceSeq", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? referenceSeq
		repository = try createInstances(of: SequenceRepository.self, for: "repository", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? repository
		specimen = try createInstance(type: Reference.self, for: "specimen", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? specimen
		type = try createInstance(type: FHIRString.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		variant = try createInstances(of: SequenceVariant.self, for: "variant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? variant
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		end = try createInstance(type: FHIRInteger.self, for: "end", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? end
		fScore = try createInstance(type: FHIRDecimal.self, for: "fScore", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fScore
		gtFP = try createInstance(type: FHIRDecimal.self, for: "gtFP", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? gtFP
		method = try createInstance(type: CodeableConcept.self, for: "method", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? method
		precision = try createInstance(type: FHIRDecimal.self, for: "precision", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? precision
		queryFP = try createInstance(type: FHIRDecimal.self, for: "queryFP", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? queryFP
		queryTP = try createInstance(type: FHIRDecimal.self, for: "queryTP", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? queryTP
		recall = try createInstance(type: FHIRDecimal.self, for: "recall", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? recall
		score = try createInstance(type: Quantity.self, for: "score", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? score
		standardSequence = try createInstance(type: CodeableConcept.self, for: "standardSequence", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? standardSequence
		start = try createInstance(type: FHIRInteger.self, for: "start", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? start
		truthFN = try createInstance(type: FHIRDecimal.self, for: "truthFN", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? truthFN
		truthTP = try createInstance(type: FHIRDecimal.self, for: "truthTP", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? truthTP
		type = createEnum(type: QualityType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		chromosome = try createInstance(type: CodeableConcept.self, for: "chromosome", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? chromosome
		genomeBuild = try createInstance(type: FHIRString.self, for: "genomeBuild", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? genomeBuild
		referenceSeqId = try createInstance(type: CodeableConcept.self, for: "referenceSeqId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? referenceSeqId
		referenceSeqPointer = try createInstance(type: Reference.self, for: "referenceSeqPointer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? referenceSeqPointer
		referenceSeqString = try createInstance(type: FHIRString.self, for: "referenceSeqString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? referenceSeqString
		strand = try createInstance(type: FHIRInteger.self, for: "strand", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? strand
		windowEnd = try createInstance(type: FHIRInteger.self, for: "windowEnd", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? windowEnd
		if nil == windowEnd && !presentKeys.contains("windowEnd") {
			errors.append(FHIRValidationError(missing: "windowEnd"))
		}
		windowStart = try createInstance(type: FHIRInteger.self, for: "windowStart", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? windowStart
		if nil == windowStart && !presentKeys.contains("windowStart") {
			errors.append(FHIRValidationError(missing: "windowStart"))
		}
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		datasetId = try createInstance(type: FHIRString.self, for: "datasetId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? datasetId
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		readsetId = try createInstance(type: FHIRString.self, for: "readsetId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? readsetId
		type = createEnum(type: RepositoryType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		variantsetId = try createInstance(type: FHIRString.self, for: "variantsetId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? variantsetId
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		cigar = try createInstance(type: FHIRString.self, for: "cigar", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? cigar
		end = try createInstance(type: FHIRInteger.self, for: "end", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? end
		observedAllele = try createInstance(type: FHIRString.self, for: "observedAllele", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? observedAllele
		referenceAllele = try createInstance(type: FHIRString.self, for: "referenceAllele", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? referenceAllele
		start = try createInstance(type: FHIRInteger.self, for: "start", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? start
		variantPointer = try createInstance(type: Reference.self, for: "variantPointer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? variantPointer
		
		return errors.isEmpty ? nil : errors
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

