//
//  MolecularSequenceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRMolecularSequence = Models.MolecularSequence
#else
import SwiftFHIR
typealias SwiftFHIRMolecularSequence = SwiftFHIR.MolecularSequence
#endif


class MolecularSequenceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMolecularSequence {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMolecularSequence {
		return try SwiftFHIRMolecularSequence(json: json)
	}
	
	func testMolecularSequence1() {
		do {
			let instance = try runMolecularSequence1()
			try runMolecularSequence1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MolecularSequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMolecularSequence1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMolecularSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-genetics-example-breastcancer.json")
		
		XCTAssertEqual(inst.coordinateSystem, 0)
		XCTAssertEqual(inst.id, "breastcancer")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.patient?.reference, "Patient/brcapat")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].code, "NM_000059.3")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].display, "Homo sapiens BRCA2, DNA repair associated (BRCA2), mRNA")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore/")
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 101499444)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 101488058)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, SequenceType(rawValue: "rna")!)
		XCTAssertEqual(inst.variant?[0].end, 32316187)
		XCTAssertEqual(inst.variant?[0].observedAllele, "A")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "C")
		XCTAssertEqual(inst.variant?[0].start, 32316186)
		
		return inst
	}
	
	func testMolecularSequence2() {
		do {
			let instance = try runMolecularSequence2()
			try runMolecularSequence2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MolecularSequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMolecularSequence2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMolecularSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-graphic-example-1.json")
		
		XCTAssertEqual(inst.coordinateSystem, 0)
		XCTAssertEqual(inst.id, "graphic-example-1")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.pointer?[0].reference, "MolecularSequence/graphic-example-2")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].code, "NC_000002.12")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq?.strand, StrandType(rawValue: "watson")!)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 128273732)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 128273724)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, SequenceType(rawValue: "dna")!)
		XCTAssertEqual(inst.variant?[0].cigar, "1M")
		XCTAssertEqual(inst.variant?[0].end, 128273726)
		XCTAssertEqual(inst.variant?[0].observedAllele, "G")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "T")
		XCTAssertEqual(inst.variant?[0].start, 128273725)
		
		return inst
	}
	
	func testMolecularSequence3() {
		do {
			let instance = try runMolecularSequence3()
			try runMolecularSequence3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MolecularSequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMolecularSequence3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMolecularSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-example-fda-vcfeval.json")
		
		XCTAssertEqual(inst.coordinateSystem, 1)
		XCTAssertEqual(inst.id, "fda-vcfeval-comparison")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
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
		XCTAssertEqual(inst.referenceSeq?.strand, StrandType(rawValue: "watson")!)
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
	
	func testMolecularSequence4() {
		do {
			let instance = try runMolecularSequence4()
			try runMolecularSequence4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MolecularSequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMolecularSequence4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMolecularSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-example-TPMT-one.json")
		
		XCTAssertEqual(inst.coordinateSystem, 1)
		XCTAssertEqual(inst.id, "example-TPMT-one")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.observedSeq, "T-C-C-C-A-C-C-C")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].code, "NT_007592.15")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq?.strand, StrandType(rawValue: "watson")!)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 18143955)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 18130918)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, SequenceType(rawValue: "dna")!)
		XCTAssertEqual(inst.variant?[0].end, 18139214)
		XCTAssertEqual(inst.variant?[0].observedAllele, "A")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "G")
		XCTAssertEqual(inst.variant?[0].start, 18139214)
		
		return inst
	}
	
	func testMolecularSequence5() {
		do {
			let instance = try runMolecularSequence5()
			try runMolecularSequence5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MolecularSequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMolecularSequence5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMolecularSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-example-pgx-2.json")
		
		XCTAssertEqual(inst.coordinateSystem, 0)
		XCTAssertEqual(inst.id, "example-pgx-2")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.referenceSeq?.orientation, OrientationType(rawValue: "sense")!)
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].code, "NG_007726.3")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq?.strand, StrandType(rawValue: "watson")!)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 55227980)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 55227970)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, SequenceType(rawValue: "dna")!)
		XCTAssertEqual(inst.variant?[0].end, 55227979)
		XCTAssertEqual(inst.variant?[0].observedAllele, "G")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "T")
		XCTAssertEqual(inst.variant?[0].start, 55227978)
		XCTAssertEqual(inst.variant?[0].variantPointer?.display, "Target Haplotype Observation")
		XCTAssertEqual(inst.variant?[0].variantPointer?.reference, "Observation/example-haplotype2")
		
		return inst
	}
	
	func testMolecularSequence6() {
		do {
			let instance = try runMolecularSequence6()
			try runMolecularSequence6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MolecularSequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMolecularSequence6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMolecularSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "molecularsequence-example.json")
		
		XCTAssertEqual(inst.coordinateSystem, 0)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].code, "NC_000009.11")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq?.strand, StrandType(rawValue: "watson")!)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 22125510)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 22125500)
		XCTAssertEqual(inst.repository?[0].name, "GA4GH API")
		XCTAssertEqual(inst.repository?[0].type, RepositoryType(rawValue: "openapi")!)
		XCTAssertEqual(inst.repository?[0].url?.absoluteString, "http://grch37.rest.ensembl.org/ga4gh/variants/3:rs1333049?content-type=application/json")
		XCTAssertEqual(inst.repository?[0].variantsetId, "3:rs1333049")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, SequenceType(rawValue: "dna")!)
		XCTAssertEqual(inst.variant?[0].end, 22125504)
		XCTAssertEqual(inst.variant?[0].observedAllele, "C")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "G")
		XCTAssertEqual(inst.variant?[0].start, 22125503)
		
		return inst
	}
	
	func testMolecularSequence7() {
		do {
			let instance = try runMolecularSequence7()
			try runMolecularSequence7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MolecularSequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMolecularSequence7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMolecularSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-example-fda.json")
		
		XCTAssertEqual(inst.coordinateSystem, 1)
		XCTAssertEqual(inst.id, "fda-example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
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
		XCTAssertEqual(inst.referenceSeq?.strand, StrandType(rawValue: "watson")!)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 101770080)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 10453)
		XCTAssertEqual(inst.repository?[0].name, "FDA")
		XCTAssertEqual(inst.repository?[0].type, RepositoryType(rawValue: "login")!)
		XCTAssertEqual(inst.repository?[0].url?.absoluteString, "https://precision.fda.gov/files/file-Bx37ZK009P4bX5g3qjkFZV38")
		XCTAssertEqual(inst.repository?[0].variantsetId, "file-Bx37ZK009P4bX5g3qjkFZV38")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, SequenceType(rawValue: "dna")!)
		XCTAssertEqual(inst.variant?[0].end, 13117)
		XCTAssertEqual(inst.variant?[0].observedAllele, "T")
		XCTAssertEqual(inst.variant?[0].referenceAllele, "G")
		XCTAssertEqual(inst.variant?[0].start, 13116)
		
		return inst
	}
	
	func testMolecularSequence8() {
		do {
			let instance = try runMolecularSequence8()
			try runMolecularSequence8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MolecularSequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMolecularSequence8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMolecularSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "coord-1base-example.json")
		
		XCTAssertEqual(inst.coordinateSystem, 1)
		XCTAssertEqual(inst.id, "coord-1-base")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.observedSeq, "ACATGGTAGC")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqString, "ACGTAGTC")
		XCTAssertEqual(inst.referenceSeq?.strand, StrandType(rawValue: "watson")!)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 8)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 1)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, SequenceType(rawValue: "dna")!)
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
	
	func testMolecularSequence9() {
		do {
			let instance = try runMolecularSequence9()
			try runMolecularSequence9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MolecularSequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMolecularSequence9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMolecularSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-graphic-example-4.json")
		
		XCTAssertEqual(inst.coordinateSystem, 0)
		XCTAssertEqual(inst.id, "graphic-example-4")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.referenceSeq?.chromosome?.coding?[0].code, "2")
		XCTAssertEqual(inst.referenceSeq?.chromosome?.coding?[0].display, "chromosome 2")
		XCTAssertEqual(inst.referenceSeq?.chromosome?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/chromosome-human")
		XCTAssertEqual(inst.referenceSeq?.genomeBuild, "GRCh 38")
		XCTAssertEqual(inst.referenceSeq?.strand, StrandType(rawValue: "watson")!)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 128273740)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 128273736)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, SequenceType(rawValue: "dna")!)
		
		return inst
	}
	
	func testMolecularSequence10() {
		do {
			let instance = try runMolecularSequence10()
			try runMolecularSequence10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MolecularSequence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMolecularSequence10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMolecularSequence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "sequence-graphic-example-5.json")
		
		XCTAssertEqual(inst.coordinateSystem, 0)
		XCTAssertEqual(inst.id, "graphic-example-5")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].code, "NC_000002.12")
		XCTAssertEqual(inst.referenceSeq?.referenceSeqId?.coding?[0].system?.absoluteString, "http://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.referenceSeq?.strand, StrandType(rawValue: "watson")!)
		XCTAssertEqual(inst.referenceSeq?.windowEnd, 128273736)
		XCTAssertEqual(inst.referenceSeq?.windowStart, 128273732)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, SequenceType(rawValue: "dna")!)
		
		return inst
	}
}
