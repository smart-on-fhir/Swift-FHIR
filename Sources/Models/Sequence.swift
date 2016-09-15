//
//  Sequence.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Sequence) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Information about a biological sequence.
 *
 *  Raw data describing a biological sequence.
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
	
	/// None.
	public var structureVariant: [SequenceStructureVariant]?
	
	/// AA | DNA | RNA.
	public var type: String?
	
	/// Sequence variant.
	public var variant: [SequenceVariant]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coordinateSystem: Int, type: String) {
		self.init(json: nil)
		self.coordinateSystem = coordinateSystem
		self.type = type
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["coordinateSystem"] {
				presentKeys.insert("coordinateSystem")
				if let val = exist as? Int {
					self.coordinateSystem = val
				}
				else {
					errors.append(FHIRJSONError(key: "coordinateSystem", wants: Int.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "coordinateSystem"))
			}
			if let exist = js["device"] {
				presentKeys.insert("device")
				if let val = exist as? FHIRJSON {
					self.device = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "device", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["observedSeq"] {
				presentKeys.insert("observedSeq")
				if let val = exist as? String {
					self.observedSeq = val
				}
				else {
					errors.append(FHIRJSONError(key: "observedSeq", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["pointer"] {
				presentKeys.insert("pointer")
				if let val = exist as? [FHIRJSON] {
					self.pointer = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "pointer", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["quality"] {
				presentKeys.insert("quality")
				if let val = exist as? [FHIRJSON] {
					self.quality = SequenceQuality.instantiate(fromArray: val, owner: self) as? [SequenceQuality]
				}
				else {
					errors.append(FHIRJSONError(key: "quality", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["readCoverage"] {
				presentKeys.insert("readCoverage")
				if let val = exist as? Int {
					self.readCoverage = val
				}
				else {
					errors.append(FHIRJSONError(key: "readCoverage", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["referenceSeq"] {
				presentKeys.insert("referenceSeq")
				if let val = exist as? FHIRJSON {
					self.referenceSeq = SequenceReferenceSeq(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "referenceSeq", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["repository"] {
				presentKeys.insert("repository")
				if let val = exist as? [FHIRJSON] {
					self.repository = SequenceRepository.instantiate(fromArray: val, owner: self) as? [SequenceRepository]
				}
				else {
					errors.append(FHIRJSONError(key: "repository", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["specimen"] {
				presentKeys.insert("specimen")
				if let val = exist as? FHIRJSON {
					self.specimen = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "specimen", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["structureVariant"] {
				presentKeys.insert("structureVariant")
				if let val = exist as? [FHIRJSON] {
					self.structureVariant = SequenceStructureVariant.instantiate(fromArray: val, owner: self) as? [SequenceStructureVariant]
				}
				else {
					errors.append(FHIRJSONError(key: "structureVariant", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist = js["variant"] {
				presentKeys.insert("variant")
				if let val = exist as? [FHIRJSON] {
					self.variant = SequenceVariant.instantiate(fromArray: val, owner: self) as? [SequenceVariant]
				}
				else {
					errors.append(FHIRJSONError(key: "variant", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let coordinateSystem = self.coordinateSystem {
			json["coordinateSystem"] = coordinateSystem.asJSON()
		}
		if let device = self.device {
			json["device"] = device.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let observedSeq = self.observedSeq {
			json["observedSeq"] = observedSeq.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let pointer = self.pointer {
			json["pointer"] = pointer.map() { $0.asJSON() }
		}
		if let quality = self.quality {
			json["quality"] = quality.map() { $0.asJSON() }
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let readCoverage = self.readCoverage {
			json["readCoverage"] = readCoverage.asJSON()
		}
		if let referenceSeq = self.referenceSeq {
			json["referenceSeq"] = referenceSeq.asJSON()
		}
		if let repository = self.repository {
			json["repository"] = repository.map() { $0.asJSON() }
		}
		if let specimen = self.specimen {
			json["specimen"] = specimen.asJSON()
		}
		if let structureVariant = self.structureVariant {
			json["structureVariant"] = structureVariant.map() { $0.asJSON() }
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let variant = self.variant {
			json["variant"] = variant.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Sequence quality.
 *
 *  An experimental feature attribute that defines the quality of the feature in a quantitative way, such as a phred
 *  quality score ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["end"] {
				presentKeys.insert("end")
				if let val = exist as? Int {
					self.end = val
				}
				else {
					errors.append(FHIRJSONError(key: "end", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["fScore"] {
				presentKeys.insert("fScore")
				if let val = exist as? NSNumber {
					self.fScore = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "fScore", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["gtFP"] {
				presentKeys.insert("gtFP")
				if let val = exist as? NSNumber {
					self.gtFP = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "gtFP", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["method"] {
				presentKeys.insert("method")
				if let val = exist as? FHIRJSON {
					self.method = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "method", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["precision"] {
				presentKeys.insert("precision")
				if let val = exist as? NSNumber {
					self.precision = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "precision", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["queryFP"] {
				presentKeys.insert("queryFP")
				if let val = exist as? NSNumber {
					self.queryFP = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "queryFP", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["queryTP"] {
				presentKeys.insert("queryTP")
				if let val = exist as? NSNumber {
					self.queryTP = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "queryTP", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["recall"] {
				presentKeys.insert("recall")
				if let val = exist as? NSNumber {
					self.recall = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "recall", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["score"] {
				presentKeys.insert("score")
				if let val = exist as? FHIRJSON {
					self.score = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "score", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["standardSequence"] {
				presentKeys.insert("standardSequence")
				if let val = exist as? FHIRJSON {
					self.standardSequence = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "standardSequence", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["start"] {
				presentKeys.insert("start")
				if let val = exist as? Int {
					self.start = val
				}
				else {
					errors.append(FHIRJSONError(key: "start", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["truthFN"] {
				presentKeys.insert("truthFN")
				if let val = exist as? NSNumber {
					self.truthFN = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "truthFN", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["truthTP"] {
				presentKeys.insert("truthTP")
				if let val = exist as? NSNumber {
					self.truthTP = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "truthTP", wants: NSNumber.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
			json["method"] = method.asJSON()
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
			json["score"] = score.asJSON()
		}
		if let standardSequence = self.standardSequence {
			json["standardSequence"] = standardSequence.asJSON()
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
 *  Reference sequence.
 *
 *  A reference sequence is a sequence that is used to represent an allele or variant.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(referenceSeqId: CodeableConcept, strand: Int, windowEnd: Int, windowStart: Int) {
		self.init(json: nil)
		self.referenceSeqId = referenceSeqId
		self.strand = strand
		self.windowEnd = windowEnd
		self.windowStart = windowStart
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["chromosome"] {
				presentKeys.insert("chromosome")
				if let val = exist as? FHIRJSON {
					self.chromosome = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "chromosome", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["genomeBuild"] {
				presentKeys.insert("genomeBuild")
				if let val = exist as? String {
					self.genomeBuild = val
				}
				else {
					errors.append(FHIRJSONError(key: "genomeBuild", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["referenceSeqId"] {
				presentKeys.insert("referenceSeqId")
				if let val = exist as? FHIRJSON {
					self.referenceSeqId = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "referenceSeqId", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "referenceSeqId"))
			}
			if let exist = js["referenceSeqPointer"] {
				presentKeys.insert("referenceSeqPointer")
				if let val = exist as? FHIRJSON {
					self.referenceSeqPointer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "referenceSeqPointer", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["referenceSeqString"] {
				presentKeys.insert("referenceSeqString")
				if let val = exist as? String {
					self.referenceSeqString = val
				}
				else {
					errors.append(FHIRJSONError(key: "referenceSeqString", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["strand"] {
				presentKeys.insert("strand")
				if let val = exist as? Int {
					self.strand = val
				}
				else {
					errors.append(FHIRJSONError(key: "strand", wants: Int.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "strand"))
			}
			if let exist = js["windowEnd"] {
				presentKeys.insert("windowEnd")
				if let val = exist as? Int {
					self.windowEnd = val
				}
				else {
					errors.append(FHIRJSONError(key: "windowEnd", wants: Int.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "windowEnd"))
			}
			if let exist = js["windowStart"] {
				presentKeys.insert("windowStart")
				if let val = exist as? Int {
					self.windowStart = val
				}
				else {
					errors.append(FHIRJSONError(key: "windowStart", wants: Int.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "windowStart"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let chromosome = self.chromosome {
			json["chromosome"] = chromosome.asJSON()
		}
		if let genomeBuild = self.genomeBuild {
			json["genomeBuild"] = genomeBuild.asJSON()
		}
		if let referenceSeqId = self.referenceSeqId {
			json["referenceSeqId"] = referenceSeqId.asJSON()
		}
		if let referenceSeqPointer = self.referenceSeqPointer {
			json["referenceSeqPointer"] = referenceSeqPointer.asJSON()
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
 *  External repository.
 *
 *  Configurations of the external repository.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["readId"] {
				presentKeys.insert("readId")
				if let val = exist as? String {
					self.readId = val
				}
				else {
					errors.append(FHIRJSONError(key: "readId", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["variantId"] {
				presentKeys.insert("variantId")
				if let val = exist as? String {
					self.variantId = val
				}
				else {
					errors.append(FHIRJSONError(key: "variantId", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
 *  None.
 *
 *  Structural variant.
 */
open class SequenceStructureVariant: BackboneElement {
	override open class var resourceType: String {
		get { return "SequenceStructureVariant" }
	}
	
	/// None.
	public var inner: SequenceStructureVariantInner?
	
	/// Structural Variant Length.
	public var length: Int?
	
	/// None.
	public var outer: SequenceStructureVariantOuter?
	
	/// Precision of boundaries.
	public var precisionOfBoundaries: String?
	
	/// Structural Variant reported aCGH ratio.
	public var reportedaCGHRatio: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["inner"] {
				presentKeys.insert("inner")
				if let val = exist as? FHIRJSON {
					self.inner = SequenceStructureVariantInner(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "inner", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["length"] {
				presentKeys.insert("length")
				if let val = exist as? Int {
					self.length = val
				}
				else {
					errors.append(FHIRJSONError(key: "length", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["outer"] {
				presentKeys.insert("outer")
				if let val = exist as? FHIRJSON {
					self.outer = SequenceStructureVariantOuter(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "outer", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["precisionOfBoundaries"] {
				presentKeys.insert("precisionOfBoundaries")
				if let val = exist as? String {
					self.precisionOfBoundaries = val
				}
				else {
					errors.append(FHIRJSONError(key: "precisionOfBoundaries", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["reportedaCGHRatio"] {
				presentKeys.insert("reportedaCGHRatio")
				if let val = exist as? NSNumber {
					self.reportedaCGHRatio = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "reportedaCGHRatio", wants: NSNumber.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let inner = self.inner {
			json["inner"] = inner.asJSON()
		}
		if let length = self.length {
			json["length"] = length.asJSON()
		}
		if let outer = self.outer {
			json["outer"] = outer.asJSON()
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
 *  None.
 *
 *  Structural variant inner.
 */
open class SequenceStructureVariantInner: BackboneElement {
	override open class var resourceType: String {
		get { return "SequenceStructureVariantInner" }
	}
	
	/// Structural Variant Inner Start-End.
	public var end: Int?
	
	/// Structural Variant Inner Start-End.
	public var start: Int?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["end"] {
				presentKeys.insert("end")
				if let val = exist as? Int {
					self.end = val
				}
				else {
					errors.append(FHIRJSONError(key: "end", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["start"] {
				presentKeys.insert("start")
				if let val = exist as? Int {
					self.start = val
				}
				else {
					errors.append(FHIRJSONError(key: "start", wants: Int.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
 *  None.
 *
 *  Structural variant outer.
 */
open class SequenceStructureVariantOuter: BackboneElement {
	override open class var resourceType: String {
		get { return "SequenceStructureVariantOuter" }
	}
	
	/// Structural Variant Outer Start-End.
	public var end: Int?
	
	/// Structural Variant Outer Start-End.
	public var start: Int?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["end"] {
				presentKeys.insert("end")
				if let val = exist as? Int {
					self.end = val
				}
				else {
					errors.append(FHIRJSONError(key: "end", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["start"] {
				presentKeys.insert("start")
				if let val = exist as? Int {
					self.start = val
				}
				else {
					errors.append(FHIRJSONError(key: "start", wants: Int.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
 *  Sequence variant.
 *
 *  A' is a variant (mutation) of A = definition every instance of A' is either an immediate mutation of some instance
 *  of A, or there is a chain of immediate mutation processes linking A' to some instance of A
 *  ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)).
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["cigar"] {
				presentKeys.insert("cigar")
				if let val = exist as? String {
					self.cigar = val
				}
				else {
					errors.append(FHIRJSONError(key: "cigar", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["end"] {
				presentKeys.insert("end")
				if let val = exist as? Int {
					self.end = val
				}
				else {
					errors.append(FHIRJSONError(key: "end", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["observedAllele"] {
				presentKeys.insert("observedAllele")
				if let val = exist as? String {
					self.observedAllele = val
				}
				else {
					errors.append(FHIRJSONError(key: "observedAllele", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["referenceAllele"] {
				presentKeys.insert("referenceAllele")
				if let val = exist as? String {
					self.referenceAllele = val
				}
				else {
					errors.append(FHIRJSONError(key: "referenceAllele", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["start"] {
				presentKeys.insert("start")
				if let val = exist as? Int {
					self.start = val
				}
				else {
					errors.append(FHIRJSONError(key: "start", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["variantPointer"] {
				presentKeys.insert("variantPointer")
				if let val = exist as? FHIRJSON {
					self.variantPointer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "variantPointer", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
			json["variantPointer"] = variantPointer.asJSON()
		}
		
		return json
	}
}

