//
//  Sequence.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/Sequence) on 2016-11-04.
//  2016, SMART Health IT.
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
	
	/// Numbering used for sequence (0-based or 1-based).
	public var coordinateSystem: Int?
	
	/// The method for sequencing.
	public var device: Reference?
	
	/// Unique ID for this particular sequence.
	public var identifier: [Identifier]?
	
	/// Observed sequence.
	public var observedSeq: String?
	
	/// Who and/or what this is about.
	public var patient: Reference?
	
	/// Pointer to next atomic sequence.
	public var pointer: [Reference]?
	
	/// Sequence quality.
	public var quality: [SequenceQuality]?
	
	/// Quantity of the sequence.
	public var quantity: Quantity?
	
	/// Average number of reads representing a given nucleotide in the reconstructed sequence.
	public var readCoverage: Int?
	
	/// Reference sequence.
	public var referenceSeq: SequenceReferenceSeq?
	
	/// External repository.
	public var repository: [SequenceRepository]?
	
	/// Specimen used for sequencing.
	public var specimen: Reference?
	
	/// Structural variant.
	public var structureVariant: [SequenceStructureVariant]?
	
	/// AA | DNA | RNA.
	public var type: String?
	
	/// Sequence variant.
	public var variant: [SequenceVariant]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coordinateSystem: Int, type: String) {
		self.init()
		self.coordinateSystem = coordinateSystem
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["coordinateSystem"] {
			presentKeys.insert("coordinateSystem")
			if let val = exist as? Int {
				self.coordinateSystem = val
			}
			else {
				errors.append(FHIRValidationError(key: "coordinateSystem", wants: Int.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "coordinateSystem"))
		}
		if let exist = json["device"] {
			presentKeys.insert("device")
			if let val = exist as? FHIRJSON {
				do {
					self.device = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "device"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "device", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["observedSeq"] {
			presentKeys.insert("observedSeq")
			if let val = exist as? String {
				self.observedSeq = val
			}
			else {
				errors.append(FHIRValidationError(key: "observedSeq", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["pointer"] {
			presentKeys.insert("pointer")
			if let val = exist as? [FHIRJSON] {
				do {
					self.pointer = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "pointer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "pointer", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["quality"] {
			presentKeys.insert("quality")
			if let val = exist as? [FHIRJSON] {
				do {
					self.quality = try SequenceQuality.instantiate(fromArray: val, owner: self) as? [SequenceQuality]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "quality"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "quality", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["quantity"] {
			presentKeys.insert("quantity")
			if let val = exist as? FHIRJSON {
				do {
					self.quantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "quantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["readCoverage"] {
			presentKeys.insert("readCoverage")
			if let val = exist as? Int {
				self.readCoverage = val
			}
			else {
				errors.append(FHIRValidationError(key: "readCoverage", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["referenceSeq"] {
			presentKeys.insert("referenceSeq")
			if let val = exist as? FHIRJSON {
				do {
					self.referenceSeq = try SequenceReferenceSeq(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "referenceSeq"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "referenceSeq", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["repository"] {
			presentKeys.insert("repository")
			if let val = exist as? [FHIRJSON] {
				do {
					self.repository = try SequenceRepository.instantiate(fromArray: val, owner: self) as? [SequenceRepository]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "repository"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "repository", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["specimen"] {
			presentKeys.insert("specimen")
			if let val = exist as? FHIRJSON {
				do {
					self.specimen = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "specimen"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "specimen", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["structureVariant"] {
			presentKeys.insert("structureVariant")
			if let val = exist as? [FHIRJSON] {
				do {
					self.structureVariant = try SequenceStructureVariant.instantiate(fromArray: val, owner: self) as? [SequenceStructureVariant]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "structureVariant"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "structureVariant", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = val
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["variant"] {
			presentKeys.insert("variant")
			if let val = exist as? [FHIRJSON] {
				do {
					self.variant = try SequenceVariant.instantiate(fromArray: val, owner: self) as? [SequenceVariant]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "variant"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "variant", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let coordinateSystem = self.coordinateSystem {
			json["coordinateSystem"] = coordinateSystem.asJSON()
		}
		if let device = self.device {
			json["device"] = device.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let observedSeq = self.observedSeq {
			json["observedSeq"] = observedSeq.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let pointer = self.pointer {
			json["pointer"] = pointer.map() { $0.asJSON(errors: &errors) }
		}
		if let quality = self.quality {
			json["quality"] = quality.map() { $0.asJSON(errors: &errors) }
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		if let readCoverage = self.readCoverage {
			json["readCoverage"] = readCoverage.asJSON()
		}
		if let referenceSeq = self.referenceSeq {
			json["referenceSeq"] = referenceSeq.asJSON(errors: &errors)
		}
		if let repository = self.repository {
			json["repository"] = repository.map() { $0.asJSON(errors: &errors) }
		}
		if let specimen = self.specimen {
			json["specimen"] = specimen.asJSON(errors: &errors)
		}
		if let structureVariant = self.structureVariant {
			json["structureVariant"] = structureVariant.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let variant = self.variant {
			json["variant"] = variant.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Sequence quality.

An experimental feature attribute that defines the quality of the feature in a quantitative way, such as a phred quality
score ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
*/
open class SequenceQuality: BackboneElement {
	override open class var resourceType: String {
		get { return "SequenceQuality" }
	}
	
	/// End position (exclusive) of the sequence.
	public var end: Int?
	
	/// F-score.
	public var fScore: NSDecimalNumber?
	
	/// False positives where the non-REF alleles in the Truth and Query Call Sets match.
	public var gtFP: NSDecimalNumber?
	
	/// Method for quality.
	public var method: CodeableConcept?
	
	/// Precision.
	public var precision: NSDecimalNumber?
	
	/// False positives.
	public var queryFP: NSDecimalNumber?
	
	/// True positives from the perspective of the query data.
	public var queryTP: NSDecimalNumber?
	
	/// Recall.
	public var recall: NSDecimalNumber?
	
	/// Quality score.
	public var score: Quantity?
	
	/// Standard sequence for comparison.
	public var standardSequence: CodeableConcept?
	
	/// Start position (inclusive) of the sequence.
	public var start: Int?
	
	/// False negatives.
	public var truthFN: NSDecimalNumber?
	
	/// True positives from the perspective of the truth data.
	public var truthTP: NSDecimalNumber?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["end"] {
			presentKeys.insert("end")
			if let val = exist as? Int {
				self.end = val
			}
			else {
				errors.append(FHIRValidationError(key: "end", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["fScore"] {
			presentKeys.insert("fScore")
			if let val = exist as? NSNumber {
				self.fScore = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "fScore", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["gtFP"] {
			presentKeys.insert("gtFP")
			if let val = exist as? NSNumber {
				self.gtFP = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "gtFP", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["method"] {
			presentKeys.insert("method")
			if let val = exist as? FHIRJSON {
				do {
					self.method = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "method"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "method", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["precision"] {
			presentKeys.insert("precision")
			if let val = exist as? NSNumber {
				self.precision = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "precision", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["queryFP"] {
			presentKeys.insert("queryFP")
			if let val = exist as? NSNumber {
				self.queryFP = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "queryFP", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["queryTP"] {
			presentKeys.insert("queryTP")
			if let val = exist as? NSNumber {
				self.queryTP = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "queryTP", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["recall"] {
			presentKeys.insert("recall")
			if let val = exist as? NSNumber {
				self.recall = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "recall", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["score"] {
			presentKeys.insert("score")
			if let val = exist as? FHIRJSON {
				do {
					self.score = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "score"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "score", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["standardSequence"] {
			presentKeys.insert("standardSequence")
			if let val = exist as? FHIRJSON {
				do {
					self.standardSequence = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "standardSequence"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "standardSequence", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["start"] {
			presentKeys.insert("start")
			if let val = exist as? Int {
				self.start = val
			}
			else {
				errors.append(FHIRValidationError(key: "start", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["truthFN"] {
			presentKeys.insert("truthFN")
			if let val = exist as? NSNumber {
				self.truthFN = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "truthFN", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["truthTP"] {
			presentKeys.insert("truthTP")
			if let val = exist as? NSNumber {
				self.truthTP = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "truthTP", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let fScore = self.fScore {
			json["fScore"] = fScore.asJSON()
		}
		if let gtFP = self.gtFP {
			json["gtFP"] = gtFP.asJSON()
		}
		if let method = self.method {
			json["method"] = method.asJSON(errors: &errors)
		}
		if let precision = self.precision {
			json["precision"] = precision.asJSON()
		}
		if let queryFP = self.queryFP {
			json["queryFP"] = queryFP.asJSON()
		}
		if let queryTP = self.queryTP {
			json["queryTP"] = queryTP.asJSON()
		}
		if let recall = self.recall {
			json["recall"] = recall.asJSON()
		}
		if let score = self.score {
			json["score"] = score.asJSON(errors: &errors)
		}
		if let standardSequence = self.standardSequence {
			json["standardSequence"] = standardSequence.asJSON(errors: &errors)
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		if let truthFN = self.truthFN {
			json["truthFN"] = truthFN.asJSON()
		}
		if let truthTP = self.truthTP {
			json["truthTP"] = truthTP.asJSON()
		}
		
		return json
	}
}


/**
Reference sequence.

A reference sequence is a sequence that is used to represent an allele or variant.
*/
open class SequenceReferenceSeq: BackboneElement {
	override open class var resourceType: String {
		get { return "SequenceReferenceSeq" }
	}
	
	/// Chromosome containing genetic finding.
	public var chromosome: CodeableConcept?
	
	/// The Genome Build used for reference, following GRCh build versions e.g. 'GRCh 37'.
	public var genomeBuild: String?
	
	/// Reference identifier.
	public var referenceSeqId: CodeableConcept?
	
	/// A Pointer to another Sequence entity as refence sequence.
	public var referenceSeqPointer: Reference?
	
	/// A Reference Sequence string.
	public var referenceSeqString: String?
	
	/// Strand of DNA.
	public var strand: Int?
	
	/// End position (exclusive) of the window on the reference sequence.
	public var windowEnd: Int?
	
	/// Start position (inclusive) of the window on the  reference sequence.
	public var windowStart: Int?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(referenceSeqId: CodeableConcept, strand: Int, windowEnd: Int, windowStart: Int) {
		self.init()
		self.referenceSeqId = referenceSeqId
		self.strand = strand
		self.windowEnd = windowEnd
		self.windowStart = windowStart
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["chromosome"] {
			presentKeys.insert("chromosome")
			if let val = exist as? FHIRJSON {
				do {
					self.chromosome = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "chromosome"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "chromosome", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["genomeBuild"] {
			presentKeys.insert("genomeBuild")
			if let val = exist as? String {
				self.genomeBuild = val
			}
			else {
				errors.append(FHIRValidationError(key: "genomeBuild", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["referenceSeqId"] {
			presentKeys.insert("referenceSeqId")
			if let val = exist as? FHIRJSON {
				do {
					self.referenceSeqId = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "referenceSeqId"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "referenceSeqId", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "referenceSeqId"))
		}
		if let exist = json["referenceSeqPointer"] {
			presentKeys.insert("referenceSeqPointer")
			if let val = exist as? FHIRJSON {
				do {
					self.referenceSeqPointer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "referenceSeqPointer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "referenceSeqPointer", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["referenceSeqString"] {
			presentKeys.insert("referenceSeqString")
			if let val = exist as? String {
				self.referenceSeqString = val
			}
			else {
				errors.append(FHIRValidationError(key: "referenceSeqString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["strand"] {
			presentKeys.insert("strand")
			if let val = exist as? Int {
				self.strand = val
			}
			else {
				errors.append(FHIRValidationError(key: "strand", wants: Int.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "strand"))
		}
		if let exist = json["windowEnd"] {
			presentKeys.insert("windowEnd")
			if let val = exist as? Int {
				self.windowEnd = val
			}
			else {
				errors.append(FHIRValidationError(key: "windowEnd", wants: Int.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "windowEnd"))
		}
		if let exist = json["windowStart"] {
			presentKeys.insert("windowStart")
			if let val = exist as? Int {
				self.windowStart = val
			}
			else {
				errors.append(FHIRValidationError(key: "windowStart", wants: Int.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "windowStart"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let chromosome = self.chromosome {
			json["chromosome"] = chromosome.asJSON(errors: &errors)
		}
		if let genomeBuild = self.genomeBuild {
			json["genomeBuild"] = genomeBuild.asJSON()
		}
		if let referenceSeqId = self.referenceSeqId {
			json["referenceSeqId"] = referenceSeqId.asJSON(errors: &errors)
		}
		if let referenceSeqPointer = self.referenceSeqPointer {
			json["referenceSeqPointer"] = referenceSeqPointer.asJSON(errors: &errors)
		}
		if let referenceSeqString = self.referenceSeqString {
			json["referenceSeqString"] = referenceSeqString.asJSON()
		}
		if let strand = self.strand {
			json["strand"] = strand.asJSON()
		}
		if let windowEnd = self.windowEnd {
			json["windowEnd"] = windowEnd.asJSON()
		}
		if let windowStart = self.windowStart {
			json["windowStart"] = windowStart.asJSON()
		}
		
		return json
	}
}


/**
External repository.

Configurations of the external repository.
*/
open class SequenceRepository: BackboneElement {
	override open class var resourceType: String {
		get { return "SequenceRepository" }
	}
	
	/// Name of the repository.
	public var name: String?
	
	/// Id of the read.
	public var readId: String?
	
	/// URI of the repository.
	public var url: URL?
	
	/// Id of the variant.
	public var variantId: String?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["readId"] {
			presentKeys.insert("readId")
			if let val = exist as? String {
				self.readId = val
			}
			else {
				errors.append(FHIRValidationError(key: "readId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["variantId"] {
			presentKeys.insert("variantId")
			if let val = exist as? String {
				self.variantId = val
			}
			else {
				errors.append(FHIRValidationError(key: "variantId", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let readId = self.readId {
			json["readId"] = readId.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let variantId = self.variantId {
			json["variantId"] = variantId.asJSON()
		}
		
		return json
	}
}


/**
Structural variant.
*/
open class SequenceStructureVariant: BackboneElement {
	override open class var resourceType: String {
		get { return "SequenceStructureVariant" }
	}
	
	/// Structural variant inner.
	public var inner: SequenceStructureVariantInner?
	
	/// Structural Variant Length.
	public var length: Int?
	
	/// Structural variant outer.
	public var outer: SequenceStructureVariantOuter?
	
	/// Precision of boundaries.
	public var precisionOfBoundaries: String?
	
	/// Structural Variant reported aCGH ratio.
	public var reportedaCGHRatio: NSDecimalNumber?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["inner"] {
			presentKeys.insert("inner")
			if let val = exist as? FHIRJSON {
				do {
					self.inner = try SequenceStructureVariantInner(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "inner"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "inner", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["length"] {
			presentKeys.insert("length")
			if let val = exist as? Int {
				self.length = val
			}
			else {
				errors.append(FHIRValidationError(key: "length", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["outer"] {
			presentKeys.insert("outer")
			if let val = exist as? FHIRJSON {
				do {
					self.outer = try SequenceStructureVariantOuter(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "outer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "outer", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["precisionOfBoundaries"] {
			presentKeys.insert("precisionOfBoundaries")
			if let val = exist as? String {
				self.precisionOfBoundaries = val
			}
			else {
				errors.append(FHIRValidationError(key: "precisionOfBoundaries", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["reportedaCGHRatio"] {
			presentKeys.insert("reportedaCGHRatio")
			if let val = exist as? NSNumber {
				self.reportedaCGHRatio = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "reportedaCGHRatio", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let inner = self.inner {
			json["inner"] = inner.asJSON(errors: &errors)
		}
		if let length = self.length {
			json["length"] = length.asJSON()
		}
		if let outer = self.outer {
			json["outer"] = outer.asJSON(errors: &errors)
		}
		if let precisionOfBoundaries = self.precisionOfBoundaries {
			json["precisionOfBoundaries"] = precisionOfBoundaries.asJSON()
		}
		if let reportedaCGHRatio = self.reportedaCGHRatio {
			json["reportedaCGHRatio"] = reportedaCGHRatio.asJSON()
		}
		
		return json
	}
}


/**
Structural variant inner.
*/
open class SequenceStructureVariantInner: BackboneElement {
	override open class var resourceType: String {
		get { return "SequenceStructureVariantInner" }
	}
	
	/// Structural Variant Inner Start-End.
	public var end: Int?
	
	/// Structural Variant Inner Start-End.
	public var start: Int?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["end"] {
			presentKeys.insert("end")
			if let val = exist as? Int {
				self.end = val
			}
			else {
				errors.append(FHIRValidationError(key: "end", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["start"] {
			presentKeys.insert("start")
			if let val = exist as? Int {
				self.start = val
			}
			else {
				errors.append(FHIRValidationError(key: "start", wants: Int.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		
		return json
	}
}


/**
Structural variant outer.
*/
open class SequenceStructureVariantOuter: BackboneElement {
	override open class var resourceType: String {
		get { return "SequenceStructureVariantOuter" }
	}
	
	/// Structural Variant Outer Start-End.
	public var end: Int?
	
	/// Structural Variant Outer Start-End.
	public var start: Int?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["end"] {
			presentKeys.insert("end")
			if let val = exist as? Int {
				self.end = val
			}
			else {
				errors.append(FHIRValidationError(key: "end", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["start"] {
			presentKeys.insert("start")
			if let val = exist as? Int {
				self.start = val
			}
			else {
				errors.append(FHIRValidationError(key: "start", wants: Int.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		
		return json
	}
}


/**
Sequence variant.

A' is a variant (mutation) of A = definition every instance of A' is either an immediate mutation of some instance of A,
or there is a chain of immediate mutation processes linking A' to some instance of A
([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)).
*/
open class SequenceVariant: BackboneElement {
	override open class var resourceType: String {
		get { return "SequenceVariant" }
	}
	
	/// Extended CIGAR string for aligning the sequence with reference bases.
	public var cigar: String?
	
	/// End position (exclusive) of the variant on the reference sequence.
	public var end: Int?
	
	/// Allele that was observed.
	public var observedAllele: String?
	
	/// Allele of reference sequence.
	public var referenceAllele: String?
	
	/// Start position (inclusive) of the variant on the  reference sequence.
	public var start: Int?
	
	/// Pointer to observed variant information.
	public var variantPointer: Reference?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["cigar"] {
			presentKeys.insert("cigar")
			if let val = exist as? String {
				self.cigar = val
			}
			else {
				errors.append(FHIRValidationError(key: "cigar", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["end"] {
			presentKeys.insert("end")
			if let val = exist as? Int {
				self.end = val
			}
			else {
				errors.append(FHIRValidationError(key: "end", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["observedAllele"] {
			presentKeys.insert("observedAllele")
			if let val = exist as? String {
				self.observedAllele = val
			}
			else {
				errors.append(FHIRValidationError(key: "observedAllele", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["referenceAllele"] {
			presentKeys.insert("referenceAllele")
			if let val = exist as? String {
				self.referenceAllele = val
			}
			else {
				errors.append(FHIRValidationError(key: "referenceAllele", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["start"] {
			presentKeys.insert("start")
			if let val = exist as? Int {
				self.start = val
			}
			else {
				errors.append(FHIRValidationError(key: "start", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["variantPointer"] {
			presentKeys.insert("variantPointer")
			if let val = exist as? FHIRJSON {
				do {
					self.variantPointer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "variantPointer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "variantPointer", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let cigar = self.cigar {
			json["cigar"] = cigar.asJSON()
		}
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let observedAllele = self.observedAllele {
			json["observedAllele"] = observedAllele.asJSON()
		}
		if let referenceAllele = self.referenceAllele {
			json["referenceAllele"] = referenceAllele.asJSON()
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		if let variantPointer = self.variantPointer {
			json["variantPointer"] = variantPointer.asJSON(errors: &errors)
		}
		
		return json
	}
}

