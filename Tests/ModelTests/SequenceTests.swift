//
//  SequenceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11923 on 2017-04-18.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRSequence = Models.Sequence
#else
import SwiftFHIR
typealias SwiftFHIRSequence = SwiftFHIR.Sequence
#endif


class SequenceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRSequence {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRSequence {
		return try SwiftFHIRSequence(json: json)
	}
	
	func testSequence1() {
		do {
			let instance = try runSequence1()
			try runSequence1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Sequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSequence1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "coord-0base-example.json")
		
		XCTAssertEqual(inst.coordinateSystem, 0)
		XCTAssertEqual(inst.id, "coord-0-base")
		XCTAssertEqual(inst.observedSeq, "ACATGGTAGC")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqString, "ACGTAGTC")
		XCTAssertEqual(inst.referenceSeq?.strand, 1)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 8)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 0)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, "dna")
		XCTAssertEqual(inst.variant?[0].cigar, "3I")
		XCTAssertEqual(inst.variant?[0].end, 2)
		XCTAssertEqual(inst.variant?[0].observedAllele, "ATG")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "-")
		XCTAssertEqual(inst.variant?[0].start, 2)
		XCTAssertEqual(inst.variant?[1].cigar, "1M")
		XCTAssertEqual(inst.variant?[1].end, 5)
		XCTAssertEqual(inst.variant?[1].observedAllele, "T")
		XCTAssertEqual(inst.variant?[1].referenceAllele, "A")
		XCTAssertEqual(inst.variant?[1].start, 4)
		XCTAssertEqual(inst.variant?[2].cigar, "1D")
		XCTAssertEqual(inst.variant?[2].end, 7)
		XCTAssertEqual(inst.variant?[2].observedAllele, "-")
		XCTAssertEqual(inst.variant?[2].referenceAllele, "T")
		XCTAssertEqual(inst.variant?[2].start, 6)
		
		return inst
	}
	
	func testSequence2() {
		do {
			let instance = try runSequence2()
			try runSequence2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Sequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSequence2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "coord-1base-example.json")
		
		XCTAssertEqual(inst.coordinateSystem, 1)
		XCTAssertEqual(inst.id, "coord-1-base")
		XCTAssertEqual(inst.observedSeq, "ACATGGTAGC")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqString, "ACGTAGTC")
		XCTAssertEqual(inst.referenceSeq?.strand, 1)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 8)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 1)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, "dna")
		XCTAssertEqual(inst.variant?[0].cigar, "3I")
		XCTAssertEqual(inst.variant?[0].end, 3)
		XCTAssertEqual(inst.variant?[0].observedAllele, "ATG")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "-")
		XCTAssertEqual(inst.variant?[0].start, 2)
		XCTAssertEqual(inst.variant?[1].cigar, "3I")
		XCTAssertEqual(inst.variant?[1].end, 5)
		XCTAssertEqual(inst.variant?[1].observedAllele, "T")
		XCTAssertEqual(inst.variant?[1].referenceAllele, "A")
		XCTAssertEqual(inst.variant?[1].start, 5)
		XCTAssertEqual(inst.variant?[2].cigar, "1D")
		XCTAssertEqual(inst.variant?[2].end, 7)
		XCTAssertEqual(inst.variant?[2].observedAllele, "-")
		XCTAssertEqual(inst.variant?[2].referenceAllele, "T")
		XCTAssertEqual(inst.variant?[2].start, 7)
		
		return inst
	}
	
	func testSequence3() {
		do {
			let instance = try runSequence3()
			try runSequence3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Sequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSequence3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-example-fda-comparisons.json")
		
		XCTAssertEqual(inst.coordinateSystem, 1)
		XCTAssertEqual(inst.id, "fda-vcf-comparison")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.quality?[0].end, 101770080)
		XCTAssertEqual(inst.quality?[0].fScore, "0.9823")
		XCTAssertEqual(inst.quality?[0].gtFP, "2186")
		XCTAssertEqual(inst.quality?[0].method?.coding?[0].code, "app-BqB9XZ8006ZZ2g5KzGXP3fpq")
		XCTAssertEqual(inst.quality?[0].method?.coding?[0].system?.absoluteString, "https://precision.fda.gov/apps/")
		XCTAssertEqual(inst.quality?[0].method?.text, "VCF Comparison")
		XCTAssertEqual(inst.quality?[0].precision, "0.9885")
		XCTAssertEqual(inst.quality?[0].queryFP, "1507")
		XCTAssertEqual(inst.quality?[0].score?.value, "5.0")
		XCTAssertEqual(inst.quality?[0].standardSequence?.coding?[0].code, "file-BkZxBZ00bpJVk2q6x43b1YBx")
		XCTAssertEqual(inst.quality?[0].standardSequence?.coding?[0].system?.absoluteString, "https://precision.fda.gov/files/")
		XCTAssertEqual(inst.quality?[0].start, 10453)
		XCTAssertEqual(inst.quality?[0].truthFN, "3168")
		XCTAssertEqual(inst.quality?[0].truthTP, "129481")
		XCTAssertEqual(inst.quality?[0].type, QualityType(rawValue: "unknown")!)
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].code, "NC_000001.11")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq?.strand, 1)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 101770080)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 10453)
		XCTAssertEqual(inst.repository?[0].name, "FDA")
		XCTAssertEqual(inst.repository?[0].type, RepositoryType(rawValue: "login")!)
		XCTAssertEqual(inst.repository?[0].url?.absoluteString, "https://precision.fda.gov/comparisons/1850")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.variant?[0].end, 13117)
		XCTAssertEqual(inst.variant?[0].observedAllele, "T")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "G")
		XCTAssertEqual(inst.variant?[0].start, 13116)
		
		return inst
	}
	
	func testSequence4() {
		do {
			let instance = try runSequence4()
			try runSequence4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Sequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSequence4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-example-fda-vcfeval.json")
		
		XCTAssertEqual(inst.coordinateSystem, 1)
		XCTAssertEqual(inst.id, "fda-vcfeval-comparison")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.quality?[0].end, 101770080)
		XCTAssertEqual(inst.quality?[0].gtFP, "2186")
		XCTAssertEqual(inst.quality?[0].method?.coding?[0].code, "app-BxfGF8j02pBZzZxbzZxP725P")
		XCTAssertEqual(inst.quality?[0].method?.coding?[0].system?.absoluteString, "https://precision.fda.gov/apps/")
		XCTAssertEqual(inst.quality?[0].method?.text, "Vcfeval + Hap.py Comparison")
		XCTAssertEqual(inst.quality?[0].precision, "0.428005")
		XCTAssertEqual(inst.quality?[0].queryFP, "10670")
		XCTAssertEqual(inst.quality?[0].recall, "0.752111")
		XCTAssertEqual(inst.quality?[0].standardSequence?.coding?[0].code, "file-BkZxBZ00bpJVk2q6x43b1YBx")
		XCTAssertEqual(inst.quality?[0].standardSequence?.coding?[0].system?.absoluteString, "https://precision.fda.gov/files/")
		XCTAssertEqual(inst.quality?[0].start, 10453)
		XCTAssertEqual(inst.quality?[0].truthFN, "2554")
		XCTAssertEqual(inst.quality?[0].truthTP, "7749")
		XCTAssertEqual(inst.quality?[0].type, QualityType(rawValue: "indel")!)
		XCTAssertEqual(inst.quality?[1].end, 101770080)
		XCTAssertEqual(inst.quality?[1].gtFP, "493")
		XCTAssertEqual(inst.quality?[1].method?.coding?[0].code, "app-BxfGF8j02pBZzZxbzZxP725P")
		XCTAssertEqual(inst.quality?[1].method?.coding?[0].system?.absoluteString, "https://precision.fda.gov/apps/")
		XCTAssertEqual(inst.quality?[1].method?.text, "Vcfeval + Hap.py Comparison")
		XCTAssertEqual(inst.quality?[1].precision, "0.808602")
		XCTAssertEqual(inst.quality?[1].queryFP, "21744")
		XCTAssertEqual(inst.quality?[1].recall, "0.986642")
		XCTAssertEqual(inst.quality?[1].standardSequence?.coding?[0].code, "file-BkZxBZ00bpJVk2q6x43b1YBx")
		XCTAssertEqual(inst.quality?[1].standardSequence?.coding?[0].system?.absoluteString, "https://precision.fda.gov/files/")
		XCTAssertEqual(inst.quality?[1].start, 10453)
		XCTAssertEqual(inst.quality?[1].truthFN, "1247")
		XCTAssertEqual(inst.quality?[1].truthTP, "92106")
		XCTAssertEqual(inst.quality?[1].type, QualityType(rawValue: "snp")!)
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].code, "NC_000001.11")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq?.strand, 1)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 101770080)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 10453)
		XCTAssertEqual(inst.repository?[0].name, "FDA")
		XCTAssertEqual(inst.repository?[0].type, RepositoryType(rawValue: "login")!)
		XCTAssertEqual(inst.repository?[0].url?.absoluteString, "https://precision.fda.gov/jobs/job-ByxYPx809jFVy21KJG74Jg3Y")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.variant?[0].end, 13117)
		XCTAssertEqual(inst.variant?[0].observedAllele, "T")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "G")
		XCTAssertEqual(inst.variant?[0].start, 13116)
		
		return inst
	}
	
	func testSequence5() {
		do {
			let instance = try runSequence5()
			try runSequence5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Sequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSequence5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-example-fda.json")
		
		XCTAssertEqual(inst.coordinateSystem, 1)
		XCTAssertEqual(inst.id, "fda-example")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.quality?[0].end, 101770080)
		XCTAssertEqual(inst.quality?[0].fScore, "0.545551")
		XCTAssertEqual(inst.quality?[0].gtFP, "2186")
		XCTAssertEqual(inst.quality?[0].method?.coding?[0].code, "job-ByxYPx809jFVy21KJG74Jg3Y")
		XCTAssertEqual(inst.quality?[0].method?.coding?[0].system?.absoluteString, "https://precision.fda.gov/jobs/")
		XCTAssertEqual(inst.quality?[0].method?.text, "Vcfeval + Hap.py Comparison")
		XCTAssertEqual(inst.quality?[0].precision, "0.428005")
		XCTAssertEqual(inst.quality?[0].queryFP, "10670")
		XCTAssertEqual(inst.quality?[0].queryTP, "7984")
		XCTAssertEqual(inst.quality?[0].recall, "0.752111")
		XCTAssertEqual(inst.quality?[0].standardSequence?.coding?[0].code, "file-Bk50V4Q0qVb65P0v2VPbfYPZ")
		XCTAssertEqual(inst.quality?[0].standardSequence?.coding?[0].system?.absoluteString, "https://precision.fda.gov/files/")
		XCTAssertEqual(inst.quality?[0].start, 10453)
		XCTAssertEqual(inst.quality?[0].truthFN, "2554")
		XCTAssertEqual(inst.quality?[0].truthTP, "7749")
		XCTAssertEqual(inst.quality?[0].type, QualityType(rawValue: "snp")!)
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].code, "NC_000001.11")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq?.strand, 1)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 101770080)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 10453)
		XCTAssertEqual(inst.repository?[0].name, "FDA")
		XCTAssertEqual(inst.repository?[0].type, RepositoryType(rawValue: "login")!)
		XCTAssertEqual(inst.repository?[0].url?.absoluteString, "https://precision.fda.gov/files/file-Bx37ZK009P4bX5g3qjkFZV38")
		XCTAssertEqual(inst.repository?[0].variantsetId, "file-Bx37ZK009P4bX5g3qjkFZV38")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, "dna")
		XCTAssertEqual(inst.variant?[0].end, 13117)
		XCTAssertEqual(inst.variant?[0].observedAllele, "T")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "G")
		XCTAssertEqual(inst.variant?[0].start, 13116)
		
		return inst
	}
	
	func testSequence6() {
		do {
			let instance = try runSequence6()
			try runSequence6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Sequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSequence6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-example-pgx-1.json")
		
		XCTAssertEqual(inst.coordinateSystem, 0)
		XCTAssertEqual(inst.id, "example-pgx-1")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].code, "NG_007726.3")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq?.strand, 1)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 55227980)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 55227970)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, "dna")
		XCTAssertEqual(inst.variant?[0].end, 55227977)
		XCTAssertEqual(inst.variant?[0].observedAllele, "G")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "T")
		XCTAssertEqual(inst.variant?[0].start, 55227976)
		XCTAssertEqual(inst.variant?[0].variantPointer?.display, "Target Haplotype Observation")
		XCTAssertEqual(inst.variant?[0].variantPointer?.reference, "Observation/example-haplotype1")
		
		return inst
	}
	
	func testSequence7() {
		do {
			let instance = try runSequence7()
			try runSequence7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Sequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSequence7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-example-pgx-2.json")
		
		XCTAssertEqual(inst.coordinateSystem, 0)
		XCTAssertEqual(inst.id, "example-pgx-2")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].code, "NG_007726.3")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq?.strand, 1)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 55227980)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 55227970)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, "dna")
		XCTAssertEqual(inst.variant?[0].end, 55227979)
		XCTAssertEqual(inst.variant?[0].observedAllele, "G")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "T")
		XCTAssertEqual(inst.variant?[0].start, 55227978)
		XCTAssertEqual(inst.variant?[0].variantPointer?.display, "Target Haplotype Observation")
		XCTAssertEqual(inst.variant?[0].variantPointer?.reference, "Observation/example-haplotype2")
		
		return inst
	}
	
	func testSequence8() {
		do {
			let instance = try runSequence8()
			try runSequence8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Sequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSequence8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-example-TPMT-one.json")
		
		XCTAssertEqual(inst.coordinateSystem, 1)
		XCTAssertEqual(inst.id, "example-TPMT-one")
		XCTAssertEqual(inst.observedSeq, "T-C-C-C-A-C-C-C")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].code, "NT_007592.15")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq?.strand, 1)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 18143955)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 18130918)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, "dna")
		XCTAssertEqual(inst.variant?[0].end, 18139214)
		XCTAssertEqual(inst.variant?[0].observedAllele, "A")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "G")
		XCTAssertEqual(inst.variant?[0].start, 18139214)
		
		return inst
	}
	
	func testSequence9() {
		do {
			let instance = try runSequence9()
			try runSequence9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Sequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSequence9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-example-TPMT-two.json")
		
		XCTAssertEqual(inst.coordinateSystem, 1)
		XCTAssertEqual(inst.id, "example-TPMT-two")
		XCTAssertEqual(inst.observedSeq, "T-C-T-C-G-C-C-C")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].code, "NT_007592.15")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq?.strand, 1)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 18143955)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 18130918)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, "dna")
		XCTAssertEqual(inst.variant?[0].end, 18131012)
		XCTAssertEqual(inst.variant?[0].observedAllele, "T")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "C")
		XCTAssertEqual(inst.variant?[0].start, 18131012)
		
		return inst
	}
	
	func testSequence10() {
		do {
			let instance = try runSequence10()
			try runSequence10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Sequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSequence10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-example.json")
		
		XCTAssertEqual(inst.coordinateSystem, 0)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].code, "NC_000009.11")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq?.strand, 1)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 22125510)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 22125500)
		XCTAssertEqual(inst.repository?[0].name, "GA4GH API")
		XCTAssertEqual(inst.repository?[0].type, RepositoryType(rawValue: "openapi")!)
		XCTAssertEqual(inst.repository?[0].url?.absoluteString, "http://grch37.rest.ensembl.org/ga4gh/variants/3:rs1333049?content-type=application/json")
		XCTAssertEqual(inst.repository?[0].variantsetId, "3:rs1333049")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, "dna")
		XCTAssertEqual(inst.variant?[0].end, 22125504)
		XCTAssertEqual(inst.variant?[0].observedAllele, "C")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "G")
		XCTAssertEqual(inst.variant?[0].start, 22125503)
		
		return inst
	}
}
