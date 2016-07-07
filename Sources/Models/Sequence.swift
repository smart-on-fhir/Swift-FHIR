//
//  Sequence.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/Sequence) on 2016-07-07.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A Sequence.
 *
 *  Variation and Sequence data.
 */
public class Sequence: DomainResource {
	override public class var resourceName: String {
		get { return "Sequence" }
	}
	
	/// Allele frequencies.
	public var allelicFrequency: NSDecimalNumber?
	
	/// The level of occurrence of a single DNA Sequence Variation within a set of chromosomes: Heteroplasmic / Homoplasmic / Homozygous / Heterozygous / Hemizygous.
	public var allelicState: CodeableConcept?
	
	/// Copy Number Event: Values: amplificaiton / deletion / LOH.
	public var copyNumberEvent: CodeableConcept?
	
	/// The method for sequencing.
	public var device: Reference?
	
	/// Observation-genetics.
	public var observation: Reference?
	
	/// Observed Sequence.
	public var observedSeq: String?
	
	/// Who and/or what this is about.
	public var patient: Reference?
	
	/// Pointer to next atomic sequence.
	public var pointer: [Reference]?
	
	/// Sequence Quality.
	public var quality: [SequenceQuality]?
	
	/// Quantity of the sequence.
	public var quantity: Quantity?
	
	/// Average number of reads representing a given nucleotide in the reconstructed sequence.
	public var readCoverage: Int?
	
	/// Reference sequence.
	public var referenceSeq: [SequenceReferenceSeq]?
	
	/// External repository.
	public var repository: [SequenceRepository]?
	
	/// Supporting tests of human, viruses, and bacteria.
	public var species: CodeableConcept?
	
	/// Specimen used for sequencing.
	public var specimen: Reference?
	
	/// None.
	public var structureVariation: SequenceStructureVariation?
	
	/// AA | DNA | RNA.
	public var type: String?
	
	/// Variation info in this sequence.
	public var variation: SequenceVariation?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String) {
		self.init(json: nil)
		self.type = type
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["allelicFrequency"] {
				presentKeys.insert("allelicFrequency")
				if let val = exist as? NSNumber {
					self.allelicFrequency = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "allelicFrequency", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["allelicState"] {
				presentKeys.insert("allelicState")
				if let val = exist as? FHIRJSON {
					self.allelicState = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "allelicState", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["copyNumberEvent"] {
				presentKeys.insert("copyNumberEvent")
				if let val = exist as? FHIRJSON {
					self.copyNumberEvent = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "copyNumberEvent", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["device"] {
				presentKeys.insert("device")
				if let val = exist as? FHIRJSON {
					self.device = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "device", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["observation"] {
				presentKeys.insert("observation")
				if let val = exist as? FHIRJSON {
					self.observation = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "observation", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["observedSeq"] {
				presentKeys.insert("observedSeq")
				if let val = exist as? String {
					self.observedSeq = val
				}
				else {
					errors.append(FHIRJSONError(key: "observedSeq", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["pointer"] {
				presentKeys.insert("pointer")
				if let val = exist as? [FHIRJSON] {
					self.pointer = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "pointer", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["quality"] {
				presentKeys.insert("quality")
				if let val = exist as? [FHIRJSON] {
					self.quality = SequenceQuality.instantiate(fromArray: val, owner: self) as? [SequenceQuality]
				}
				else {
					errors.append(FHIRJSONError(key: "quality", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["readCoverage"] {
				presentKeys.insert("readCoverage")
				if let val = exist as? Int {
					self.readCoverage = val
				}
				else {
					errors.append(FHIRJSONError(key: "readCoverage", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["referenceSeq"] {
				presentKeys.insert("referenceSeq")
				if let val = exist as? [FHIRJSON] {
					self.referenceSeq = SequenceReferenceSeq.instantiate(fromArray: val, owner: self) as? [SequenceReferenceSeq]
				}
				else {
					errors.append(FHIRJSONError(key: "referenceSeq", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["repository"] {
				presentKeys.insert("repository")
				if let val = exist as? [FHIRJSON] {
					self.repository = SequenceRepository.instantiate(fromArray: val, owner: self) as? [SequenceRepository]
				}
				else {
					errors.append(FHIRJSONError(key: "repository", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["species"] {
				presentKeys.insert("species")
				if let val = exist as? FHIRJSON {
					self.species = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "species", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["specimen"] {
				presentKeys.insert("specimen")
				if let val = exist as? FHIRJSON {
					self.specimen = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "specimen", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["structureVariation"] {
				presentKeys.insert("structureVariation")
				if let val = exist as? FHIRJSON {
					self.structureVariation = SequenceStructureVariation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "structureVariation", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist: AnyObject = js["variation"] {
				presentKeys.insert("variation")
				if let val = exist as? FHIRJSON {
					self.variation = SequenceVariation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "variation", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let allelicFrequency = self.allelicFrequency {
			json["allelicFrequency"] = allelicFrequency.asJSON()
		}
		if let allelicState = self.allelicState {
			json["allelicState"] = allelicState.asJSON()
		}
		if let copyNumberEvent = self.copyNumberEvent {
			json["copyNumberEvent"] = copyNumberEvent.asJSON()
		}
		if let device = self.device {
			json["device"] = device.asJSON()
		}
		if let observation = self.observation {
			json["observation"] = observation.asJSON()
		}
		if let observedSeq = self.observedSeq {
			json["observedSeq"] = observedSeq.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let pointer = self.pointer {
			json["pointer"] = Reference.asJSONArray(pointer)
		}
		if let quality = self.quality {
			json["quality"] = SequenceQuality.asJSONArray(quality)
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let readCoverage = self.readCoverage {
			json["readCoverage"] = readCoverage.asJSON()
		}
		if let referenceSeq = self.referenceSeq {
			json["referenceSeq"] = SequenceReferenceSeq.asJSONArray(referenceSeq)
		}
		if let repository = self.repository {
			json["repository"] = SequenceRepository.asJSONArray(repository)
		}
		if let species = self.species {
			json["species"] = species.asJSON()
		}
		if let specimen = self.specimen {
			json["specimen"] = specimen.asJSON()
		}
		if let structureVariation = self.structureVariation {
			json["structureVariation"] = structureVariation.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let variation = self.variation {
			json["variation"] = variation.asJSON()
		}
		
		return json
	}
}


/**
 *  Sequence Quality.
 *
 *  Quality for sequence quality vary by platform reflecting differences in sequencing chemistry and digital processing.
 */
public class SequenceQuality: BackboneElement {
	override public class var resourceName: String {
		get { return "SequenceQuality" }
	}
	
	/// 0-based end position (exclusive) of the sequence.
	public var end: Int?
	
	/// Method for quality.
	public var method: String?
	
	/// Quality score.
	public var score: Quantity?
	
	/// 0-based start position (inclusive) of the sequence.
	public var start: Int?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["end"] {
				presentKeys.insert("end")
				if let val = exist as? Int {
					self.end = val
				}
				else {
					errors.append(FHIRJSONError(key: "end", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["method"] {
				presentKeys.insert("method")
				if let val = exist as? String {
					self.method = val
				}
				else {
					errors.append(FHIRJSONError(key: "method", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["score"] {
				presentKeys.insert("score")
				if let val = exist as? FHIRJSON {
					self.score = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "score", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["start"] {
				presentKeys.insert("start")
				if let val = exist as? Int {
					self.start = val
				}
				else {
					errors.append(FHIRJSONError(key: "start", wants: Int.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let method = self.method {
			json["method"] = method.asJSON()
		}
		if let score = self.score {
			json["score"] = score.asJSON()
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		
		return json
	}
}


/**
 *  Reference sequence.
 *
 *  Reference Sequence. It can be described in two ways. One is provide the unique identifier of reference sequence
 *  submitted to NCBI. The start and end position of window on reference sequence should be defined.  The other way is
 *  using  genome build, chromosome number,and also the start, end position of window (this method is specifically for
 *  DNA reference sequence) .
 */
public class SequenceReferenceSeq: BackboneElement {
	override public class var resourceName: String {
		get { return "SequenceReferenceSeq" }
	}
	
	/// The chromosome containing the genetic finding.
	public var chromosome: CodeableConcept?
	
	/// The Genome Build used for reference, following GRCh build versions e.g. 'GRCh 37'.
	public var genomeBuild: String?
	
	/// Reference identifier.
	public var referenceSeqId: CodeableConcept?
	
	/// A Pointer to another Sequence entity as refence sequence.
	public var referenceSeqPointer: Reference?
	
	/// A Reference Sequence string.
	public var referenceSeqString: String?
	
	/// 0-based end position (exclusive) of the window on the reference sequence.
	public var windowEnd: Int?
	
	/// 0-based start position (inclusive) of the window on the  reference sequence.
	public var windowStart: Int?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(referenceSeqId: CodeableConcept, windowEnd: Int, windowStart: Int) {
		self.init(json: nil)
		self.referenceSeqId = referenceSeqId
		self.windowEnd = windowEnd
		self.windowStart = windowStart
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["chromosome"] {
				presentKeys.insert("chromosome")
				if let val = exist as? FHIRJSON {
					self.chromosome = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "chromosome", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["genomeBuild"] {
				presentKeys.insert("genomeBuild")
				if let val = exist as? String {
					self.genomeBuild = val
				}
				else {
					errors.append(FHIRJSONError(key: "genomeBuild", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["referenceSeqId"] {
				presentKeys.insert("referenceSeqId")
				if let val = exist as? FHIRJSON {
					self.referenceSeqId = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "referenceSeqId", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "referenceSeqId"))
			}
			if let exist: AnyObject = js["referenceSeqPointer"] {
				presentKeys.insert("referenceSeqPointer")
				if let val = exist as? FHIRJSON {
					self.referenceSeqPointer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "referenceSeqPointer", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["referenceSeqString"] {
				presentKeys.insert("referenceSeqString")
				if let val = exist as? String {
					self.referenceSeqString = val
				}
				else {
					errors.append(FHIRJSONError(key: "referenceSeqString", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["windowEnd"] {
				presentKeys.insert("windowEnd")
				if let val = exist as? Int {
					self.windowEnd = val
				}
				else {
					errors.append(FHIRJSONError(key: "windowEnd", wants: Int.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "windowEnd"))
			}
			if let exist: AnyObject = js["windowStart"] {
				presentKeys.insert("windowStart")
				if let val = exist as? Int {
					self.windowStart = val
				}
				else {
					errors.append(FHIRJSONError(key: "windowStart", wants: Int.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "windowStart"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class SequenceRepository: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["readId"] {
				presentKeys.insert("readId")
				if let val = exist as? String {
					self.readId = val
				}
				else {
					errors.append(FHIRJSONError(key: "readId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["variantId"] {
				presentKeys.insert("variantId")
				if let val = exist as? String {
					self.variantId = val
				}
				else {
					errors.append(FHIRJSONError(key: "variantId", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class SequenceStructureVariation: BackboneElement {
	override public class var resourceName: String {
		get { return "SequenceStructureVariation" }
	}
	
	/// None.
	public var inner: SequenceStructureVariationInner?
	
	/// Structural Variant Length.
	public var length: Int?
	
	/// None.
	public var outer: SequenceStructureVariationOuter?
	
	/// Precision of boundaries.
	public var precisionOfBoundaries: String?
	
	/// Structural Variant reported aCGH ratio.
	public var reportedaCGHRatio: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["inner"] {
				presentKeys.insert("inner")
				if let val = exist as? FHIRJSON {
					self.inner = SequenceStructureVariationInner(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "inner", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["length"] {
				presentKeys.insert("length")
				if let val = exist as? Int {
					self.length = val
				}
				else {
					errors.append(FHIRJSONError(key: "length", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["outer"] {
				presentKeys.insert("outer")
				if let val = exist as? FHIRJSON {
					self.outer = SequenceStructureVariationOuter(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "outer", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["precisionOfBoundaries"] {
				presentKeys.insert("precisionOfBoundaries")
				if let val = exist as? String {
					self.precisionOfBoundaries = val
				}
				else {
					errors.append(FHIRJSONError(key: "precisionOfBoundaries", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reportedaCGHRatio"] {
				presentKeys.insert("reportedaCGHRatio")
				if let val = exist as? NSNumber {
					self.reportedaCGHRatio = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "reportedaCGHRatio", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class SequenceStructureVariationInner: BackboneElement {
	override public class var resourceName: String {
		get { return "SequenceStructureVariationInner" }
	}
	
	/// Structural Variant Inner Start-End.
	public var end: Int?
	
	/// Structural Variant Inner Start-End.
	public var start: Int?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["end"] {
				presentKeys.insert("end")
				if let val = exist as? Int {
					self.end = val
				}
				else {
					errors.append(FHIRJSONError(key: "end", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["start"] {
				presentKeys.insert("start")
				if let val = exist as? Int {
					self.start = val
				}
				else {
					errors.append(FHIRJSONError(key: "start", wants: Int.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class SequenceStructureVariationOuter: BackboneElement {
	override public class var resourceName: String {
		get { return "SequenceStructureVariationOuter" }
	}
	
	/// Structural Variant Outer Start-End.
	public var end: Int?
	
	/// Structural Variant Outer Start-End.
	public var start: Int?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["end"] {
				presentKeys.insert("end")
				if let val = exist as? Int {
					self.end = val
				}
				else {
					errors.append(FHIRJSONError(key: "end", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["start"] {
				presentKeys.insert("start")
				if let val = exist as? Int {
					self.start = val
				}
				else {
					errors.append(FHIRJSONError(key: "start", wants: Int.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
 *  Variation info in this sequence.
 */
public class SequenceVariation: BackboneElement {
	override public class var resourceName: String {
		get { return "SequenceVariation" }
	}
	
	/// Extended CIGAR string for aligning the sequence with reference bases.
	public var cigar: String?
	
	/// 0-based end position (exclusive) of the variation on the reference sequence.
	public var end: Int?
	
	/// Nucleotide(s)/amino acids from start position to stop position of observed variation.
	public var observedAllele: String?
	
	/// Nucleotide(s)/amino acids from start position to stop position of reference variation.
	public var referenceAllele: String?
	
	/// 0-based start position (inclusive) of the variation on the  reference sequence.
	public var start: Int?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["cigar"] {
				presentKeys.insert("cigar")
				if let val = exist as? String {
					self.cigar = val
				}
				else {
					errors.append(FHIRJSONError(key: "cigar", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["end"] {
				presentKeys.insert("end")
				if let val = exist as? Int {
					self.end = val
				}
				else {
					errors.append(FHIRJSONError(key: "end", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["observedAllele"] {
				presentKeys.insert("observedAllele")
				if let val = exist as? String {
					self.observedAllele = val
				}
				else {
					errors.append(FHIRJSONError(key: "observedAllele", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["referenceAllele"] {
				presentKeys.insert("referenceAllele")
				if let val = exist as? String {
					self.referenceAllele = val
				}
				else {
					errors.append(FHIRJSONError(key: "referenceAllele", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["start"] {
				presentKeys.insert("start")
				if let val = exist as? Int {
					self.start = val
				}
				else {
					errors.append(FHIRJSONError(key: "start", wants: Int.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
		
		return json
	}
}

