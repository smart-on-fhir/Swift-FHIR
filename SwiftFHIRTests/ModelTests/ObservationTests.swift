//
//  ObservationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ObservationTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Observation {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Observation {
		let instance = Observation(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testObservation1() throws {
		let instance = try runObservation1()
		try runObservation1(instance.asJSON())
	}
	
	func runObservation1(json: FHIRJSON? = nil) throws -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "obs-genetics-example1-somatic.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "21665-5")
		XCTAssertEqual(inst.code!.coding![0].display!, "EGFR gene mutation analysis")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.comments!, "The EGFR p.L858R mutation has been associated with response to anti-EGFR therapy")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsGenomeBuild")
		XCTAssertEqual(inst.extension_fhir![0].valueString!, "GRCh 37")
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsChromosome")
		XCTAssertEqual(inst.extension_fhir![1].valueString!, "7")
		XCTAssertEqual(inst.extension_fhir![2].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsGenomicReferenceSequenceId")
		XCTAssertEqual(inst.extension_fhir![2].valueCode!, "NC_000007.13")
		XCTAssertEqual(inst.extension_fhir![3].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsGenomicStart")
		XCTAssertEqual(inst.extension_fhir![3].valueInteger!, 55259515)
		XCTAssertEqual(inst.extension_fhir![4].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsGenomicStop")
		XCTAssertEqual(inst.extension_fhir![4].valueInteger!, 55259515)
		XCTAssertEqual(inst.extension_fhir![5].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsReferenceAllele")
		XCTAssertEqual(inst.extension_fhir![5].valueString!, "T")
		XCTAssertEqual(inst.extension_fhir![6].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsObservedAllele")
		XCTAssertEqual(inst.extension_fhir![6].valueString!, "G")
		XCTAssertEqual(inst.extension_fhir![7].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsGeneId")
		XCTAssertEqual(inst.extension_fhir![7].valueCodeableConcept!.coding![0].code!, "3236")
		XCTAssertEqual(inst.extension_fhir![7].valueCodeableConcept!.coding![0].display!, "EGFR")
		XCTAssertEqual(inst.extension_fhir![7].valueCodeableConcept!.coding![0].system!.absoluteString, "http://www.genenames.org")
		XCTAssertEqual(inst.extension_fhir![8].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsTranscriptReferenceSequenseId")
		XCTAssertEqual(inst.extension_fhir![8].valueCode!, "ENSESTT00000085772.1")
		XCTAssertEqual(inst.extension_fhir![9].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsDNASequenceVariation")
		XCTAssertEqual(inst.extension_fhir![9].valueString!, "c.2573T>G")
		XCTAssertEqual(inst.id!, "genetics-example1-somatic")
		XCTAssertEqual(inst.performer![0].display!, "Molecular Diagnostic Laboratory")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/genetics-example1-somatic")
		XCTAssertEqual(inst.specimen!.display!, "Molecular Specimen ID: MLD45-Z4-1234")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/genetics-example1-somatic")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Molecular Lab Patient ID: HOSP-23456")
		XCTAssertEqual(inst.subject!.reference!, "Patient/genetics-example1-somatic")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testObservation2() throws {
		let instance = try runObservation2()
		try runObservation2(instance.asJSON())
	}
	
	func runObservation2(json: FHIRJSON? = nil) throws -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "obs-genetics-example2-germline.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "21636-6")
		XCTAssertEqual(inst.code!.coding![0].display!, "BRCA1 gene mutation analysis")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsGenomeBuild")
		XCTAssertEqual(inst.extension_fhir![0].valueString!, "GRCh 37")
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsChromosome")
		XCTAssertEqual(inst.extension_fhir![1].valueString!, "17")
		XCTAssertEqual(inst.extension_fhir![2].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsGenomicReferenceSequenceId")
		XCTAssertEqual(inst.extension_fhir![2].valueCode!, "NC_000017.10")
		XCTAssertEqual(inst.extension_fhir![3].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsGenomicStart")
		XCTAssertEqual(inst.extension_fhir![3].valueInteger!, 41258504)
		XCTAssertEqual(inst.extension_fhir![4].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsGenomicStop")
		XCTAssertEqual(inst.extension_fhir![4].valueInteger!, 41258504)
		XCTAssertEqual(inst.extension_fhir![5].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsReferenceAllele")
		XCTAssertEqual(inst.extension_fhir![5].valueString!, "A")
		XCTAssertEqual(inst.extension_fhir![6].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsObservedAllele")
		XCTAssertEqual(inst.extension_fhir![6].valueString!, "C")
		XCTAssertEqual(inst.extension_fhir![7].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsGeneId")
		XCTAssertEqual(inst.extension_fhir![7].valueCodeableConcept!.coding![0].code!, "1100")
		XCTAssertEqual(inst.extension_fhir![7].valueCodeableConcept!.coding![0].display!, "BRCA1")
		XCTAssertEqual(inst.extension_fhir![7].valueCodeableConcept!.coding![0].system!.absoluteString, "http://www.genenames.org")
		XCTAssertEqual(inst.extension_fhir![8].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsTranscriptReferenceSequenseId")
		XCTAssertEqual(inst.extension_fhir![8].valueCode!, "NM_007294.3")
		XCTAssertEqual(inst.extension_fhir![9].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/geneticsDNASequenceVariation")
		XCTAssertEqual(inst.extension_fhir![9].valueString!, "c.181T>G")
		XCTAssertEqual(inst.id!, "genetics-example2-germline")
		XCTAssertEqual(inst.performer![0].display!, "Molecular Diagnostic Laboratory")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/genetics-example2-germline")
		XCTAssertEqual(inst.specimen!.display!, "Molecular Specimen ID: MLD45-Z4-1234")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/genetics-example2-germline")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Molecular Lab Patient ID: HOSP-23456")
		XCTAssertEqual(inst.subject!.reference!, "Patient/genetics-example2-germline")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testObservation3() throws {
		let instance = try runObservation3()
		try runObservation3(instance.asJSON())
	}
	
	func runObservation3(json: FHIRJSON? = nil) throws -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "obs-uslab-example1.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-03")
		XCTAssertEqual(inst.code!.coding![0].code!, "10368-9")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "CAPLD")
		XCTAssertEqual(inst.code!.coding![1].display!, "Blood Lead, Capillary")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Capillary Blood Lead Screen")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example1")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].type!.text!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "1234")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "H")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-04T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.referenceRange![0].high!.code!, "ug/dL")
		XCTAssertEqual(inst.referenceRange![0].high!.system!.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange![0].high!.units!, "microgram per deciliter")
		XCTAssertEqual(inst.referenceRange![0].high!.value!, NSDecimalNumber(string: "5.0"))
		XCTAssertEqual(inst.specimen!.display!, "Blood sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueQuantity!.code!, "ug/dL")
		XCTAssertEqual(inst.valueQuantity!.system!.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity!.units!, "microgram per deciliter")
		XCTAssertEqual(inst.valueQuantity!.value!, NSDecimalNumber(string: "65"))
		
		return inst
	}
	
	func testObservation4() throws {
		let instance = try runObservation4()
		try runObservation4(instance.asJSON())
	}
	
	func runObservation4(json: FHIRJSON? = nil) throws -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "obs-uslab-example2.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.code!.coding![0].code!, "43305-2")
		XCTAssertEqual(inst.code!.coding![0].display!, "Neisseria gonorrhoeae rRNA [Presence] in Unspecified specimen by Probe and target amplification method")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "GCPCR")
		XCTAssertEqual(inst.code!.coding![1].display!, "APTIMA GC")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Neisseria gonorrhoeae by PCR")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example2")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].type!.text!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "2345")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "A")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-06T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.specimen!.display!, "Blood sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example2")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![0].code!, "10828004")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![0].display!, "Positive")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![1].code!, "POS")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![1].display!, "Positive")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.valueCodeableConcept!.text!, "Positive for Neisseira gonorrheoea rRNA")
		
		return inst
	}
	
	func testObservation5() throws {
		let instance = try runObservation5()
		try runObservation5(instance.asJSON())
	}
	
	func runObservation5(json: FHIRJSON? = nil) throws -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "obs-uslab-example3.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.code!.coding![0].code!, "6463-4")
		XCTAssertEqual(inst.code!.coding![0].display!, "Bacteria identified in Unspecified specimen by Culture")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "MSCBACT")
		XCTAssertEqual(inst.code!.coding![1].display!, "Misc Culture")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Miscellaneous Culture")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example3")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].type!.text!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "3456")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "A")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-06T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.specimen!.display!, "Blood sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueString!, "Moderate Growth of gram-positive cocci bacteria")
		
		return inst
	}
	
	func testObservation6() throws {
		let instance = try runObservation6()
		try runObservation6(instance.asJSON())
	}
	
	func runObservation6(json: FHIRJSON? = nil) throws -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "obs-uslab-example4.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.code!.coding![0].code!, "6812-2")
		XCTAssertEqual(inst.code!.coding![0].display!, "Dengue virus IgM Ab [Titer] in Serum")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "DGIGM")
		XCTAssertEqual(inst.code!.coding![1].display!, "Dengue IgM QN")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Dengue IgM Titer")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example4")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].type!.text!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "4567")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "H")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-06T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.referenceRange![0].text!, "<1:64")
		XCTAssertEqual(inst.specimen!.display!, "Bloo sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueRatio!.denominator!.value!, NSDecimalNumber(string: "256"))
		XCTAssertEqual(inst.valueRatio!.numerator!.value!, NSDecimalNumber(string: "1"))
		
		return inst
	}
	
	func testObservation7() throws {
		let instance = try runObservation7()
		try runObservation7(instance.asJSON())
	}
	
	func runObservation7(json: FHIRJSON? = nil) throws -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "obs-uslab-example5.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.code!.coding![0].code!, "5671-3")
		XCTAssertEqual(inst.code!.coding![0].display!, "Lead [Mass/volume] in Blood")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "BLDLD")
		XCTAssertEqual(inst.code!.coding![1].display!, "Blood Lead")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Blood Lead")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example5")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].type!.text!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "1234")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "H")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-06T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.referenceRange![0].high!.code!, "ug/dL")
		XCTAssertEqual(inst.referenceRange![0].high!.system!.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange![0].high!.units!, "microgram per deciliter")
		XCTAssertEqual(inst.referenceRange![0].high!.value!, NSDecimalNumber(string: "5.0"))
		XCTAssertEqual(inst.specimen!.display!, "Blood sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueQuantity!.code!, "ug/dL")
		XCTAssertEqual(inst.valueQuantity!.system!.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity!.units!, "microgram per deciliter")
		XCTAssertEqual(inst.valueQuantity!.value!, NSDecimalNumber(string: "65"))
		
		return inst
	}
	
	func testObservation8() throws {
		let instance = try runObservation8()
		try runObservation8(instance.asJSON())
	}
	
	func runObservation8(json: FHIRJSON? = nil) throws -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "obs-uslab-example6.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.code!.coding![0].code!, "64017-7")
		XCTAssertEqual(inst.code!.coding![0].display!, "Chlamydia trachomatis and Neisseria gonorrhoeae rRNA panel - Unspecified specimen by Probe and target amplification method")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "GCCTPCR")
		XCTAssertEqual(inst.code!.coding![1].display!, "GC CT PCR")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "GC CT RNA Panel")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example6")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].type!.text!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "8901")
		XCTAssertEqual(inst.issued!.description, "2014-12-06T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.related![0].target!.display!, "CT RNA")
		XCTAssertEqual(inst.related![0].target!.reference!, "Observation/uslab-example7")
		XCTAssertEqual(inst.related![0].type!, "has-component")
		XCTAssertEqual(inst.related![1].target!.display!, "GC-RNA")
		XCTAssertEqual(inst.related![1].target!.reference!, "Observation/uslab-example2")
		XCTAssertEqual(inst.related![1].type!, "has-component")
		XCTAssertEqual(inst.specimen!.display!, "Urine First Void")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example2")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testObservation9() throws {
		let instance = try runObservation9()
		try runObservation9(instance.asJSON())
	}
	
	func runObservation9(json: FHIRJSON? = nil) throws -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "obs-uslab-example7.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.code!.coding![0].code!, "43304-5")
		XCTAssertEqual(inst.code!.coding![0].display!, "Chlamydia trachomatis rRNA [Presence] in Unspecified specimen by Probe and target amplification method")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "CTPCR")
		XCTAssertEqual(inst.code!.coding![1].display!, "APTIMA CT")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Chlamydia trachomatis by PCR")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example7")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].type!.text!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "9012")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "N")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-06T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.specimen!.display!, "Urine First Void")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example2")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![0].code!, "260385009")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![0].display!, "Negative")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![1].code!, "NEG")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![1].display!, "Negative")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.valueCodeableConcept!.text!, "Negative for Chlamydia Trachomatis rRNA")
		
		return inst
	}
	
	func testObservation10() throws {
		let instance = try runObservation10()
		try runObservation10(instance.asJSON())
	}
	
	func runObservation10(json: FHIRJSON? = nil) throws -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "obs-uslab-example8.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-03")
		XCTAssertEqual(inst.code!.coding![0].code!, "5821-4")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "WBCFLD")
		XCTAssertEqual(inst.code!.coding![1].display!, "White blood cells (WBC) in urine ")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "White blood cells (WBC) in urine")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example8")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].type!.text!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "9099")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "H")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-04T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.referenceRange![0].high!.code!, "/[HPF]")
		XCTAssertEqual(inst.referenceRange![0].high!.system!.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange![0].high!.units!, "WBC/HPF")
		XCTAssertEqual(inst.referenceRange![0].high!.value!, NSDecimalNumber(string: "5"))
		XCTAssertEqual(inst.referenceRange![0].low!.code!, "/[HPF]")
		XCTAssertEqual(inst.referenceRange![0].low!.system!.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange![0].low!.units!, "WBC/HPF")
		XCTAssertEqual(inst.referenceRange![0].low!.value!, NSDecimalNumber(string: "0"))
		XCTAssertEqual(inst.specimen!.display!, "Blood sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueRange!.high!.units!, "WBC/HPF")
		XCTAssertEqual(inst.valueRange!.high!.value!, NSDecimalNumber(string: "20"))
		XCTAssertEqual(inst.valueRange!.low!.units!, "WBC/HPF")
		XCTAssertEqual(inst.valueRange!.low!.value!, NSDecimalNumber(string: "10"))
		
		return inst
	}
}
